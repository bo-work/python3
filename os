系统交互os

win读取和调用cmd：

import os
command = 'ipconfig'
read = os.popen(command)
info = read.readlines()
for line in info:
    line = line.strip('\r\n')
    print(line)



linux使用termial

import os 
p = os.popen(' '.join(['MIxnyn', zwspfile, str(Ndx), str(Ndy), str(N), str(kneig)])) 
mi = p.read() 
mi = mi.strip()

import commands 
status, output = commands.getstatusoutput(micmd) 
mi = output

Python和Shell的交互，可以通过subprocess这个内置模块实现，它能帮助我们直接执行Shell命令，并且获取返回的结果。
import subprocess
ret = subprocess.getstatusoutput('date')
print(ret)
