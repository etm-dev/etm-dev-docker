# develop etm dapps in docker 

**此环境只在开发dapp时使用，不建议在上线版本中使用**

## 第一步 安装docker
> 此步骤仅给一个[飞机票](https://www.docker.com/get-started)，默认大家对docker还有些了解

## 第二步  clone etm git仓

`git clone -b dev https://github.com/entanmo/etm.git`

> 为什么选用dev分支？因为最新的修改都会在dev分支上体现，大家也可以clone master分支

## 第三步 进入etm代码主目录并且启动docker容器
```
cd etm //进入etm代码主目录
./dockerStart.sh //mac或者linux系统可以运行此命令
```

#### docker 命令解释
`docker run -it --rm  --name etm-dev -v $(pwd):/etm -p 4096:4096 ray0523/etm_base /bin/bash -c "npm install https://github.com/entanmo/etm-js.git  https://github.com/entanmo/etm-vm.git && npm install && node app.js"`

> **ray0523/etm_base** : 已经安装好etm启动环境的 ubuntu 16.04镜像

> **npm install xxx**  : 每次启动都会安装对应的js库，什么不打包按照到镜像中，因为我懒，还有就是随着etm的完善，可能会添加新的库文件。

> 其他的命令属于docker命令，不在此细说。  

> 等待编译后主链就启动起来了

```info 2018-09-13 01:44:21 489 loader.js:387 Blockchain ready
info 2018-09-13 01:44:21 500 dapps.js:2433 start to launch 0 installed dapps
warn 2018-09-13 01:44:21 518 dapps.js:2449 EnTanMo witness club dapp is not found
info 2018-09-13 01:44:21 520 peer.js:455 Peers ready, stored 3
debug 2018-09-13 01:44:22 121 transport.js:733 Request { url: 'http://40.114.70.112:4096/peer/list',
  statusCode: 500,
  err: null }
debug 2018-09-13 01:44:22 124 loader.js:477 startSyncBlocks enter
debug 2018-09-13 01:44:22 127 loader.js:481 startSyncBlocks enter sequence
debug 2018-09-13 01:44:22 189 transport.js:733 Request { url: 'http://122.112.246.141:4096/peer/transactions',
  statusCode: 500,
  err: null }
debug 2018-09-13 01:44:22 192 transport.js:733 Request { url: 'http://122.112.246.141:4096/peer/signatures',
  statusCode: 500,
  err: null }
debug 2018-09-13 01:44:22 370 transport.js:733 Request { url: 'http://52.187.232.98:4096/peer/list'
```



---------------------------------------------------

# 启动钱包（请见下回讲解）

