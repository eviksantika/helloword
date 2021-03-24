# helloworld

[![Build Status](https://cloud.drone.io/api/badges/go-training/helloworld/status.svg)](https://cloud.drone.io/go-training/helloworld)

Hello World for Golang

## Simple Command


Run build docker

```bash
docker build . -f Dockerfile -t helloword:latest
```

Run Docker

```bash
docker run -d -p 9099:9099 --name helloword helloword:latest
```
