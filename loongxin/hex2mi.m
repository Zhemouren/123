function hex2mi(bin_filename, mi_filename,data_depth) 
    fid_bin = fopen(bin_filename, 'r');  
    if fid_bin == -1  
        error('无法打开二进制文件: %s', bin_filename);  
    end  
      
    % 读取整个二进制文件  
    bin_data = fread(fid_bin, 'uint8');  
    fclose(fid_bin);  
    % 计算mi文件的数据深度（地址深度），向上取整到最近的4的倍数  
    len1=length(bin_data);
    remainder = mod(len1, 4); % 计算len除以4的余数  
  
    if remainder == 0  
        len2 = len1; % 如果len已经是4的倍数，则不需要改变  
    else  
        len2 = len1 + (4 - remainder); % 否则，增加至下一个4的倍数  
    end 
    addr_depth = len2 / 4 +1;  
    disp(addr_depth);
    fid_mi = fopen(mi_filename, 'w');  
    if fid_mi == -1  
        error('无法创建mi文件: %s', mi_filename);  
    end 
    % 写入MI文件头部信息（如果有需要的话）  
    % 这里我们按照您的描述没有包括地址信息，所以只写文件标识和数据宽度  
    fprintf(fid_mi, '#File_format=Hex\n');
    fprintf(fid_mi, '#Address_depth=%s\n', num2str(data_depth)); 
    fprintf(fid_mi, '#Data_width=32\n');  

    for i = 1:4:len2
        % 拼接四行数据，如果不足四行则补零  
    if i + 3 <= len2   
        % 读取四行数据并倒序拼接  
        data_str1= sprintf('%02X', bin_data(i));
        data_str2= sprintf('%02X', bin_data(i+1));
        data_str3= sprintf('%02X', bin_data(i+2));
        data_str4= sprintf('%02X', bin_data(i+3));
        mi_data =   [data_str4 data_str3 data_str2 data_str1];
        mi_data_str = string(mi_data);
        mi_str = strjoin(mi_data_str, ''); % 倒序排列并使用空字符串拼接  
    else  
        % 如果不足四行，则只拼接剩余的行，并用零填充至四行  
        mi_data = sprintf('%02X', bin_data(i:len2));
        num_zeros = 4 - length(mi_data); 
        % mi_data_str = string(mi_data);
        mi_data_str(len2+1:len2+num_zeros) = {'0'}; % 添加零填充  
        mi_str = strjoin(mi_data, mi_data_str,''); % 倒序排列并使用空字符串拼接  
    end  
   
        % 写入十六进制字符串到文件  
        fprintf(fid_mi, '%s\n', mi_str);  
    end  
    for j = addr_depth+1:data_depth+1
        mi_str = sprintf('00000000');
        fprintf(fid_mi, '%s\n', mi_str);
    end
     
    % 关闭MI文件  
    fclose(fid_mi);  
      
    disp(['转换完成，已生成MI文件: ', mi_filename]);  
end