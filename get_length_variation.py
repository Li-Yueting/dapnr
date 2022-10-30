
# for gen in range(26):
#     for id in range(80):
#         with open('/home/users/lyt1314/SUMMER/dapnr/interface/'+'gen-'+str(gen)+'-id-'+str(id)+'/layoutSum.txt', 'r') as f:
#             lines=f.readlines()
            
#             print(f)
net_length_list = []
variation_list = []
count = 0
for gen in range(26):
    for id in range(80):
        with open('/home/users/lyt1314/SUMMER/dapnr/interface/'+'gen-'+str(gen)+'-id-'+str(id)+'/layoutSum.txt', 'r') as f:
            count = count +1
            lines=f.readlines()
            for line in lines:
                if "total_variation" in line:
                    variation_list.append(line.split(" ")[-1])
                    print(line.split(" ")[-1])
                if "net_total_length" in line:
                    net_length_list.append(line.split(" ")[-1])
                    print(line.split(" ")[-1])
print("total_file_number: ", count)
# list to csv