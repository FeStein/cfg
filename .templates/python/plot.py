import sys,os
import matplotlib.pyplot as plt
import tikzplotlib
import argparse                                                                                                                                          
                                                                                                                                                           
ap = argparse.ArgumentParser()                                                                                                                           
ap.add_argument("-f", "--filename", required=False, type=str, default='.',                                                                                         
                help="path to file")                                                                                                                     
                                                                                                                                                          
args = vars(ap.parse_args())                                                                                                                             
filename = args["filename"] 

#with open(filename,'r') as f: lines = [l.split(',') for l in f]

#x_val= [line[0] for line in lines]
#y_val= [line[1] for line in lines]

x_val= [x for x in range(10)]
y_val= [y for y in range(10)]

ax,fig = plt.subplots()
plt.xlabel('x axis')
plt.ylabel('y axis')
plt.plot(x_val,y_val,'-',label='plot')
#plt.legend()
#plt.xlim(1,1)
#plt.ylim(1,1)
#tikzplotlib.save('fig.tex')
plt.show()


