
#!/bin/sh

datename=$(date +%Y%m%d-%H%M%S)            #定义时间变量名和显示时间格式
for file in `find . -type f -name "*"`;do 
dirname=`dirname $file`

/root/git/bpcs_uploader/bpcs_uploader.php upload $file $datename/$file

done
