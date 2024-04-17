# import bin2coe
# input_file_path = "F:/GOWIN/TangMega-138KPro-example-main/gowin_version_ip_introduction/02_gpio/sw/gpio/build/1c102_demo.bin"  # 替换为您的文本文件输入路径
# output_file_path = "F:/GOWIN/TangMega-138KPro-example-main/gowin_version_ip_introduction/02_gpio/sw/gpio/1c102_demo.coe" # 替换为您的文本文件输出路径
# # 构建命令行参数列表  
# bin2coe.convert(input_file_path, output_file_path)
# bin2coe -i F:/GOWIN/TangMega-138KPro-example-main/gowin_version_ip_introduction/02_gpio/sw/gpio/build/1c102_demo.bin -w 32 -o F:/GOWIN/TangMega-138KPro-example-main/gowin_version_ip_introduction/02_gpio/sw/gpio/1c102_demo.coe
# bin2coe.convert(input_file_path, output_file_path, word_width=32)


# def bin_to_coe(input_file_path, output_file_path, start_address=0):  
#     """  
#     将.bin文件转换为32位宽度的.coe文件。  
      
#     参数:  
#     bin_file_path (str): 输入的.bin文件路径。  
#     coe_file_path (str): 输出的.coe文件路径。  
#     start_address (int): 转换数据的起始地址。  
#     """  
#     with open(input_file_path, 'rb') as bin_file:  
#         bin_content = bin_file.read()  
      
#     # 计算32位数据的组数  
#     num_groups = len(bin_content) // 4  
      
#     with open(output_file_path, 'w') as coe_file:  
#         # 写入文件头  
#         coe_file.write(f"MEMORY_INITIALIZATION_RADIX=16;\n")  
#         coe_file.write(f"MEMORY_SIZE={num_groups};\n")  
#         coe_file.write(f"MEMORY_START_ADDRESS={start_address};\n")  
          
#         # 遍历二进制内容，按32位分组，并转换为十六进制  
#         for i in range(0, len(bin_content), 4):  
#             chunk = bin_content[i:i + 4]  
#             if len(chunk) < 4:  
#                 # 如果文件大小不是4的倍数，用0填充剩余字节  
#                 chunk += b'\x00' * (4 - len(chunk))  
#             hex_value = chunk.hex().upper()  
              
#             # 计算当前地址  
#             current_address = start_address + (i // 4)  
              
#             # 写入.coe文件  
#             coe_file.write(f":{current_address} {hex_value};\n")  
  
# # 使用函数进行转换  
# input_file_path = "F:/GOWIN/TangMega-138KPro-example-main/gowin_version_ip_introduction/02_gpio/sw/gpio/build/1c102_demo.bin"  # 替换为您的文本文件输入路径
# output_file_path = "F:/GOWIN/TangMega-138KPro-example-main/gowin_version_ip_introduction/02_gpio/sw/gpio/1c102_demo.coe" # 替换为您的文本文件输出路径
  
# start_address_for_data = 0  # 根据需要设置起始地址  
  
# bin_to_coe(input_file_path, output_file_path, start_address_for_data)

def bin_to_coe(input_file_path, output_file_path, word_width=32):
    with open(input_file_path, 'rb') as input_file:
        data = input_file.read()

    with open(output_file_path, 'w') as output_file:
        output_file.write("memory_initialization_radix=16;\n")
        output_file.write("memory_initialization_vector=\n")

        for i in range(0, len(data), word_width // 8):
            word = 0
            for j in range(word_width // 8):
                word |= data[i + j] << (8 * (word_width // 8 - 1 - j))
            output_file.write(f"{word:0{word_width // 4}x}\n")

input_file_path = "F:/GOWIN/TangMega-138KPro-example-main/gowin_version_ip_introduction/02_gpio/sw/gpio/build/1c102_demo.bin"  # 替换为您的文本文件输入路径
output_file_path = "F:/GOWIN/TangMega-138KPro-example-main/gowin_version_ip_introduction/02_gpio/sw/gpio/1c102_demo.coe" # 替换为您的文本文件输出路径

bin_to_coe(input_file_path, output_file_path, word_width=32)