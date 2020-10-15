# jenkins dockerfile

镜像已经推到了docker hub  以下命令运行

目的是在docker 启动的jenkins里面使用宿主机的docker

```
docker run -d \
	-v jenkins_home:/var/jenkins_home \
        -v /var/run/docker.sock:/var/run/docker.sock \
        -v $(which docker):/usr/bin/docker \
        -p 8080:8080 \
        shiauwei/jenkins:1.0.0 
```
如果使用docker仍然存在问题 
在容器所在的宿主机上直接给 docker.sock 777权限，命令 
```
chmod 777 docker.sock
```


