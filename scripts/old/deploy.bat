
set IP_NGINX=192.168.17.153
set SERVERS=192.168.17.153 192.168.17.154

pscp -pw profesor -r ..\WebContent\css profesor@%IP_NGINX%:/home/profesor/tmp

for %%a in (%SERVERS%) do (
   putty.exe -ssh profesor@%%a -pw "profesor" -m "deploy.sh"
)
