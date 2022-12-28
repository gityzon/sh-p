#删除panindex并重新启动以更新PanIndex.
#后台地址（默认）：http://ip:port/admin 默认密码：PanIndex 第一次安装后需要进行配置， 请务必修改默认密码

#!/bin/bash

if [ ! -f "panindex" ];then
  curl -L https://github.com/libsgh/PanIndex/releases/latest/download/PanIndex-linux-amd64.tar.gz -o panindex.tar.gz
tar -zxvf panindex.tar.gz
mv PanIndex-linux-amd64 panindex
rm -f panindex.tar.gz & rm -f LICENSE
fi
chmod +x panindex


./panindex -port=3000
