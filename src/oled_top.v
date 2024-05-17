/*
//////by huanjin
*/
//oled顶层模块

// bitcontroller states
`define I2C_Trans_addr       3'b000 //对应分频值低字节寄存器地址
`define I2C_Trans_data		 3'b001	//对应分频值高字节寄存器地址
`define I2C_START		  	 3'b011 //对应控制寄存器地址
`define I2C_STOP		  	 3'b100	//对应状态寄存器地址

module    Oled_Top(
    input           apb_pclk,
    input           apb_prstn,
    input           apb_psel,
    input  	[2:0] apb_paddr,
	input           apb_pwrite,
    input           apb_penable,
    input  [7:0] apb_pwdata,
    output [7:0] apb_prdata,

	// input			clear_key,
	// input			on_key,
	
	
	output	wire		scl,
	inout	wire		sda
);

	wire we = apb_penable & apb_psel & apb_pwrite;//写入模式
	wire re = apb_penable & apb_psel &~apb_pwrite;//读取模式，

/*状态描述：
//1.初始化IIC   ,即初始化器件地址位0x78
//2.设置 寄存器地址 和 数据
//4.启动传输
//5.结束传输
//6.等待返回ack响应。
// 备注1：该iic专用于oled，其器件地址只有0x78，寄存器地址不是0x00就是0x40，实际需要设置的只有数据与选择发送什么寄存器地址


*/
reg[7:0]    address;
reg[7:0]    address_cmd;
reg[7:0]    address_dat;
reg[7:0]    IIC_data;
reg[7:0]    select;

wire         start;
wire         ack;

reg flag;
reg flag2;
// wire	scl;
// wire	sda;
    

	always @(posedge apb_pclk or negedge apb_prstn ) 
	begin
		if (!apb_prstn) 
		begin
            address     <= 8'h78;
			address_cmd <= 8'h00;
			address_dat <= 8'h40;
            IIC_data    <= 8'h00;
			select		<= 8'h00;
			flag2 <=1'b0;
		end 
		else if (we) 
		begin
			case (apb_paddr)
				3'b000: begin  address_cmd  <= apb_pwdata;  end
				3'b001: begin  IIC_data		<=apb_pwdata;   end
				3'b011:	begin	select		<=apb_pwdata;	end
				default: ;
			endcase

		end
	end

assign	start =select[0];//当select=1，ack=0；当ack=1，select=0；
//有可能出现ack=1，就要重新开始的可能？或者ack=1后，start=0，无法复原
//设置restart为进入条件之一
	reg  [7:0]     rdata;

	//只要检测到ack上升就设置标志位为1，直到 re读取完rdata后重新拉低
	// always@( ack or rdata or apb_prstn )begin
	// 	if(!apb_prstn)flag<=1'b0;
	// 	else if(ack)flag<=1'b1;
	// end
	always @(posedge apb_pclk or posedge ack or negedge apb_prstn ) begin
		if(!apb_prstn) begin
			rdata = 32'b0;
			flag=0;
        end
		else if(ack)begin flag=1;rdata  ={8{flag}}; end
		else if(re)
		begin
			case (apb_paddr)
				//当flag=1的时候，赋值给rdata，此后flag=0，重新开始发送数据。
				3'b100: 
					begin 
						rdata  ={8{flag}};//8位1  
						if(flag)flag=0; 
					end
                default: ;
			endcase
            end
			
	end

 	assign apb_prdata = rdata;

    I2C_Master I2C_Master_V(
        .I_Clk_in(apb_pclk),
        .I_Rst_n(apb_prstn),
        .O_SCL(scl),
        .IO_SDA(sda),
        //control_sig
        .I_Start(start),   //一次读/写操作开始信号
        .ack(ack),    //一次读/写操作结束信号
        .I_R_W_SET(1'b1), //读写控制信号，写为1，读为0
        .I_Slave_Addr(address[7:1]),//从机地址
        .I_R_W_Data({address_cmd ,IIC_data}),//读写控制字16位I_R_W_Data[15:8]->reg_addr,I_R_W_Data[7:0]->W_data,读状态则可默认为7'b0
        .O_Data(),    //读到的数据，当O_Done拉高时数据有效
        .O_Error()    //检测传输错误信号，当出现从机未响应，从机不能接收数据等情况时，拉高电平
 );


endmodule