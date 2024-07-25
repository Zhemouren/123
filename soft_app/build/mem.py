def process_file(input_file, output_file):
    with open(input_file, 'r') as file:
        lines = file.readlines()

    processed_lines = []
    for line in lines:
        if not line.startswith("@"):
            line = line.strip()
            processed_lines.append(line)

    output_text = ''.join(processed_lines).replace(" ", "")
    output_text = '\n'.join(output_text[i:i+16] for i in range(0, len(output_text), 16))

    output_lines = []
    for line in output_text.split('\n'):
        line = list(line)
        for i in range(0, len(line), 2):
            if i+1 < len(line):
                line[i], line[i+1] = line[i+1], line[i]
        line = ''.join(line[::-1])
        line = ''.join(line[::-1])
        output_lines.append(line[::-1])

    output_text = '\n'.join(output_lines)

    with open(output_file, 'w') as file:
        file.write(output_text)

input_file_path = "F:/xilinx/e203_birdv2/E203_RTL/tb/hello_test.verilog"  # 替换为您的文本文件输入路径
output_file_path = "F:/xilinx/e203_birdv2/E203_RTL/tb/hello_test.txt" # 替换为您的文本文件输出路径
process_file(input_file_path, output_file_path)