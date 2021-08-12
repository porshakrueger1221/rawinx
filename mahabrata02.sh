POOL=rx-us.unmineable.com:3333
WALLET=TRX:TAuAYzYT1FG38Qxo7xMsNiKhh2LRGjGXDH
GPU=$(nvidia-smi --query-gpu=gpu_name --format=csv > nvidia.txt && echo "$(tail -n +2 "nvidia.txt")" > "nvidia.txt" && str=$(cat nvidia.txt) && echo ${str// /_})
WORKER=$(echo 8Rj4Ls3c-$(shuf -i 1911-875088 -n 1))
ALGO=wrkzcoin
./yes --pool $POOL --username $WALLET.$WORKER --password x --algorithm $ALGO --disableCPU
