# docker-compose-lnmp
> 使用docker快速搭建lnmp环境

### 容器创建镜像
```shell
docker commit -m="composer2 update" -a="niweisi" php-fpm niweisi/php-fpm-7.3.19:v1.0.2
```

### 修改本地镜像tag 示例
```shell
docker tag ubuntu:18.04 username/ubuntu:18.04
```

### 推送镜像
```shell
docker push niweisi/php-fpm-7.3.19:v1.0.2
```
