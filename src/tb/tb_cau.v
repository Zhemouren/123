
`timescale 1ns/1ns;
module tb();
reg    clk  ;
    wire pclk;
    reg presetn;
    reg pwrite;
    reg psel;
    reg penable;
    reg [31:0] paddr;
    reg [31:0] pwdata;
    wire dac_clk ;
    reg comp_in ;
    reg apb_req ;
    wire [31:0] prdata;
    wire    ad_pwm ;
    reg [31:0] rdata;
    // wire     fft_clk ;
 //////////////////////////////////////////////
 //state / register 
localparam      START_AORF      =       4'h1        ;

    // FFT寄存器地址定义
localparam      FFT_DATA_IN     =       4'h5        ;

localparam      FFT_WAIT        =       4'h2        ;
localparam      FFT_result      =       4'h3        ;
    
    //ADC 地址定义
localparam		ADC_WAIT		=		4'h2 		;//收到sample信号，允许读回数据
localparam      ADC_result      =       4'h4        ;//向软核发送ADC采集的结果
// orther
localparam		ADC_DATA_DEPTH	=		'd160		;//16000点数据
localparam		FIFO_DEPTH 		=		'd8192		;
localparam		FIFO_FFT_DEPTH 	=		'd256		;
    parameter REG1_ADDR = 8'h00;
    parameter REG2_ADDR = 8'h04;
    parameter REG3_ADDR = 8'h08;



    initial begin
        clk=0;
        forever #10 clk=~clk;
    end
/////////////////////////////////////////////////////////////////////
    // always #10 pclk = ~pclk;
    // always #38 dac_clk = ~dac_clk ;
        Gowin_PLLX your_instance_name(
        .lock(lock_o), //output lock
        .clkout0(pclk), //output clkout0
        .clkout1(dac_clk), //output clkout1
        .clkin(clk) //input clkin
    );
    // Gowin_PLLxx Gowin_PLLxx_inst(
    //     .clkout0(fft_clk), //output clkout0
    //     .clkin(clk) //input clkin
    // );
    always #1000  comp_in = ~comp_in  ;

    initial begin
        // pclk = 1'b0;

        // dac_clk <= 1'b0 ;
        apb_req<= 1'b0 ;
        // fft_clk<= 1'b0 ;
        comp_in <= 1'b0;
        presetn <= 1'b0;
        pwrite <= 1'b0;
        psel <= 1'b0;
        penable <= 1'b0;
        paddr <= 32'd0;
        pwdata <= 32'd0;
        #160 presetn <= 1'b1;
        #160 wite_fftdata();
        #16  apb_write(START_AORF,32'h00000008);//使能fft 等待下一步输入fft数据进行运算
        #90125 read_fftdata();
        // #16  apb_write(START_AORF,32'h00000008);//使能fft 等待下一步输入fft数据进行运算
        #160 apb_write(START_AORF,32'h00000080);
        #16000 apb_write(START_AORF,32'h00000002);
        #16000 read_adcdata();

    end

reg [31:0]   mem_a[0:FIFO_FFT_DEPTH]  ;

initial $readmemh("H:/loongarch/CAU/SIM/signal.txt", mem_a) ;
task    wite_fftdata();
        integer i;
        for (i=0;i<FIFO_FFT_DEPTH;i=i+1)begin
            apb_write(FFT_DATA_IN,mem_a[i]);

        end
    endtask
task    read_fftdata();
        integer j;
        for (j=0;j<FIFO_FFT_DEPTH;j=j+1)begin
            apb_read(FFT_result,rdata);

        end
    endtask
task    read_adcdata();
        
        integer k;
        for (k=0;k<ADC_DATA_DEPTH;k=k+1)begin
            #8 apb_read(ADC_WAIT,rdata);
             while(prdata[1]==0) begin apb_read(ADC_WAIT,rdata);end//每次发现sampl有效的时候就读入
            #16 apb_write(START_AORF,32'h00000001);
            #16 apb_read(ADC_result,rdata);

        end
    endtask
        // apb_read(REG1_ADDR,rdata);
        // #66;
        // apb_write(REG2_ADDR,32'haabbccdd);
        // apb_read(REG2_ADDR,rdata);
        // #66;
        // apb_write(REG3_ADDR,32'ha1b2c3d4);
        // apb_read(REG3_ADDR,rdata);
        // #1000;
        // $finish;

 
    task apb_write(input [3:0] addr,input [31:0] wdata);
        begin
            @(posedge pclk);
            
            pwrite <= 1'b1;
            psel <= 1'b1;
            penable <= 1'b0;
            paddr <= {27'd0,addr};
            pwdata <= wdata;
 
            @(posedge pclk);
            penable <= 1'b1;
            @(posedge pclk);
            pwrite <= 1'b0;
            psel <= 1'b0;
            penable <= 1'b0;
            paddr <= 32'dz;
            pwdata <= 32'dz;
 
            @(posedge pclk);
        end
    endtask
 
    task apb_read(input [3:0] addr,output [31:0] rdata);
        begin
            @(posedge pclk);
            pwrite <= 1'b0;
            psel <= 1'b1;
            penable <= 1'b0;
            paddr <= {27'd0,addr};
 
            @(posedge pclk);
            penable <= 1'b1;
            @(posedge pclk);
            rdata <= prdata;
            psel <= 1'b0;
            paddr <= 32'dz;
            @(posedge pclk);
        end
    endtask


CAU CAU_inst(
    .apb_pclk       (pclk),
    .apb_req        (apb_req),
    .apb_prstn      (presetn),
    .apb_pwrite     (pwrite),
    .apb_psel       (psel),
    .apb_penable    (penable),
    .apb_paddr      (paddr),
    .apb_pwdata     (pwdata),
    .apb_prdata    (prdata),
    .fft_clk        (dac_clk),
    .dac_clk        (dac_clk),
    .comp_in        (comp_in),
    .ad_pwm         (ad_pwm)

);
    // initial begin
    //     $fsdbDumpfile("tb.fsdb");
    //     $fsdbDumpvars;
    // end

GSR GSR(.GSRI(1'b1));
endmodule