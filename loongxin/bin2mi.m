 %% 
% 使用示例 
clear;
width = 32; % 数据位宽
% bin_filename = '1c102_demo.bin'; % 二进制文件名 ?
bin_filename = 'F:\\GOWIN\\Project\\loongxin2\\sw\\soft_app\\build\\1c102_demo.bin';
% bin_filename = 'F:\\GOWIN\\TangMega-138KPro-example-main\\gowin_version_ip_introduction\\06_uart\\sw\\uart\\build\\1c102_demo.bin';

% bin_filename = 'F:\\GOWIN\\TangMega-138KPro-example-main\\gowin_version_ip_introduction\\i2c_AT24CXX_plus\\build\\1c102_demo.bin';
% bin_filename = 'F:\\GOWIN\\Project\\loongxin2\\sw\\ls1c102_demo\\build\\ls1c102_demo.bin';

mi_filename = '1c102_demo1.mi'; % 输出run
% 调用函数转换二进制文件为mi格式  
data_depth=16384;
hex2mi(bin_filename, mi_filename,data_depth);


  %  text    data     bss     dec     hex filename
  % 18000      28     433   18461    481d 1c102_demo.elf
  %    text    data     bss     dec     hex filename
  % 37704      16      21   37741    936d 1c102_demo.elf