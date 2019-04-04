#! /usr/bin/env python
#Use Wget and Python to download SPP files on a website that requires authentication
#These CDF files are saved in data/spp/f1_100bps/...
#NOTE: the code won't automatically create the folders the data are saved in.



import datetime
import os


path = "http://research.ssl.berkeley.edu/data/spp/data/sci/fields/staging/l1/f1_100bps/"

d0 = datetime.datetime(2019, 2, 1)  #earlier date
d1 = datetime.datetime(2019, 3, 5)  #more recent date

delta = d1 - d0
ndays = delta.days

print d0.strftime("%Y-%m-%d")


dtmp = d0

for x in range(ndays):
    dtmp += datetime.timedelta(days=1)
    yr = dtmp.strftime("%Y")
    mn = dtmp.strftime("%m")
    dy = dtmp.strftime("%d")
    str1 = "wget --user wygant --password flds@psp "
    str2 = "-O /Users/aaronbreneman/data/spp/f1_100bps/"+yr+"/"+mn+"/"+"spp_fld_l1_f1_100bps_"+yr+mn+dy+"_v00.cdf "
    str3 = path+yr+"/"+mn+"/" + "spp_fld_l1_f1_100bps_"+yr+mn+dy+"_v00.cdf"
    os.system(str1+str2+str3)



#str = "wget --user wygant --password flds@psp http://research.ssl.berkeley.edu/data/spp/data/sci/fields/staging/l1/f1_100bps/2018/10/spp_fld_l1_f1_100bps_20181003_v00.cdf"

#I CAN'T GET URLLIB METHOD TO DOWNLOAD THE FILE. IT SEEMS TO, BUT THERE IS NO
#DATA IN THE FILE

#for x in range(ndays):
#    dtmp += datetime.timedelta(days=1)
#    yr = dtmp.strftime("%Y")
#    mn = dtmp.strftime("%m")
#    dy = dtmp.strftime("%d")
#    print dy
#    urllib.urlretrieve(path+yr+"/"+mn+"/", "spp_fld_l1_f1_100bps_"+yr+mn+dy+"_v00.cdf")







##download single file
#wget --user wygant --password flds@psp -O /Users/aaronbreneman/Desktop/aaa.cdf http://research.ssl.berkeley.edu/data/spp/data/sci/fields/staging/l1/f1_100bps/2018/10/spp_fld_l1_f1_100bps_20181003_v00.cdf

##try to download multiple files
#wget --user wygant --password flds@psp -r -l1 -R "index.html*" --no-parent -A.cdf http://research.ssl.berkeley.edu/data/spp/data/sci/fields/staging/l1/f1_100bps/2018/10/

#wget -r -l1 --no-parent -A.swf http://www.url.com/
