#!/usr/bin/env python
# coding: utf-8

# In[7]:


import numpy as np
def conver(x):
    x=np.binary_repr(x,width = 4 )
    arr=[int(i)for i in str(x)]
    return arr
sequence = np.random.randint(low=0,high=2,size=100)
rle=np.zeros(1,dtype=int)
i=1
dict={0:0,1:0}
dict[sequence[0]]=1
while i<len(sequence):
    if sequence[i]!=sequence[i-1]:
        rle=np.append(rle,sequence[i-1])
        rle=np.append(rle,conver(dict[sequence[i-1]]))
        dict[sequence[i-1]]=0
    dict[sequence[i]]+=1
    i+=1
rle=np.append(rle,sequence[i-1])
rle=np.append(rle,conver(dict[sequence[i-1]]))
rle=np.delete(rle,0)
        
print(sequence)
print(rle)
if len(rle)<=len(sequence):
        print("compression ratio:",len(rle)/len(sequence))
else:
        print("negative compression")


# In[ ]:




