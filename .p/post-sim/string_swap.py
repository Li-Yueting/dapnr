print("************************************")
print("replacing pnp strings now ...")
# creating a variable and storing the text that we want to search
search_text = "sky130_fd_pr__pnp_05v5 area=0p"
# creating a variable and storing the text that we want to add
replace_text = "sky130_fd_pr__pnp_05v5_W3p40L3p40"
  
# Opening our text file in read only
# mode using the open() function
with open('outputs/design_extracted.spice', 'r') as file:
    data = file.read()
    data = data.replace(search_text, replace_text)

with open('outputs/design_extracted.spice', 'w') as file:
    file.write(data)

print("... finished pnp strings")
print("************************************")