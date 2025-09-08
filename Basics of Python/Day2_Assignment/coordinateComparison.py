# Saurabh Kumar | ESET0128

# program to find X coordinate is greater than Y, or vice versa

cord=[(9,5),(3,3),(5,6),(9,10)] # defining list of coordinates

for i in range(0,len(cord)):
    x=cord[i][0]        # extracting x coordinate from list
    y=cord[i][1]        # extracting y coordinate from list
    if x > y:
        print("X coordinate is greater than Y")
    elif y > x:
        print("Y coordinate is greater than X")
    else:
        print("both are same point")
