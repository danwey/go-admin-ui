#源镜像
FROM node:14
#设置工作目录
WORKDIR /app
#将服务器的go工程代码加入到docker容器中
ADD . .
#构建可执行文件
RUN npm install
#暴露端口
EXPOSE 9527
#最终运行docker的命令
ENTRYPOINT  ["npm","run","dev"]

