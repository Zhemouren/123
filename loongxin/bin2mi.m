 %% 
% 使用示例 
clear;
width = 32; % 数据位宽
bin_filename = '1c102_demo.bin'; % 二进制文件名  
mi_filename = 'gpio1.mi'; % 输出
% 调用函数转换二进制文件为mi格式  
data_depth=32768;
hex2mi(bin_filename, mi_filename,data_depth);
