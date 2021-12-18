
# 添加域名软件源
sudo yum-config-manager \
    --add-repo \
    https://mirrors.aliyun.com/docker-ce/linux/centos/docker-ce.repo


sudo sed -i 's/download.docker.com/mirrors.aliyun.com\/docker-ce/g' /etc/yum.repos.d/docker-ce.repo

#安装docker
sudo yum install docker-ce docker-ce-cli containerd.io

# 启动 docker
sudo systemctl enable docker
sudo systemctl start docker


# 安装 docker  compose
# sudo curl -L https://github.com/docker/compose/releases/download/1.27.4/docker-compose-`uname -s`-`uname -m` > /usr/local/bin/docker-compose

# [国内]安装 docker  compose
sudo curl -L https://download.fastgit.org/docker/compose/releases/download/1.27.4/docker-compose-`uname -s`-`uname -m` > /usr/local/bin/docker-compose


sudo chmod +x /usr/local/bin/docker-compose

ln -s /usr/local/bin/docker-compose /sbin/docker-compose