#!/bin/bash

version=$1

# build go api program

#docker login --username=曹芳帅 registry.cn-hangzhou.aliyuncs.com
# remove docker image if exists
docker rmi -f registry.cn-hangzhou.aliyuncs.com/my-own-space/docs.nestjs.cn:$version
# build docker image
docker build -t registry.cn-hangzhou.aliyuncs.com/my-own-space/docs.nestjs.cn:$version -f ./Dockerfile ./


if [ "$2" = "push" ];then
  docker push registry.cn-hangzhou.aliyuncs.com/my-own-space/docs.nestjs.cn:$version
fi
