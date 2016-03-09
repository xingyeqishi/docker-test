#这个Dockerfile创建的image，用于在机器上部署C端+Server端联合测试环境
FROM		ubuntu:14.04
MAINTAINER	sunxiaoshen

#node软件
RUN		apt-get -y install wget
WORKDIR		/tmp/
RUN		["wget", "https://raw.githubusercontent.com/creationix/nvm/v0.23.2/install.sh"]
RUN		bash install.sh
RUN		rm /bin/sh && ln -s /bin/bash /bin/sh
RUN		source /root/.nvm/nvm.sh && nvm install 0.12.4
RUN		source /root/.nvm/nvm.sh && nvm use v0.12.4
RUN		source /root/.nvm/nvm.sh && nvm install iojs

RUN		apt-get install make
EXPOSE  8080
CMD     ["node app.js"]

