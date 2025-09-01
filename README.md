# TailBench

This repository is a fork of https://tailbench.csail.mit.edu with fixes for some compile errors.

## Run Benchmarks
You need to create your own dataset for benchmarks or download the inputs provided by authors.
```shell
> wget https://tailbench.csail.mit.edu/tailbench.inputs.tgz
```

Run the docker
```shell
> docker-compose up -d
> docker exec -it tailbench-tailbench-1 /bin/bash
```