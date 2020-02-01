import re
with open ('test.log', 'r') as test:
    text = test.read()
services = re.findall("\((.*?):", text)
servicesName = str(sorted(set(services)))

request=""
for i in servicesName:
    if str(i) !="[" and str(i) !="'" and str(i) != "," and str(i) !=" ":
        request= request +str(i)

    if str(i) == ",":
        rAddClient = services.count(request)
        print(request + "-" + str(rAddClient))
        request=""
        
 
        
    
            

