#!/bin/bash
Total=$(nvidia-info | grep "Bios" -c)
Link4x=$(nvidia-info | grep "4x" -c)
Link8x=$(nvidia-info | grep "8x" -c)

nvidia-smi -q | grep --color=never -A 2 -B 6 "Link Width" > /tmp/Gpulist.txt

echo "GPUs at 4x speed:" $Link4x
echo "GPUs at 8x speed:" $Link8x

if (($Link8x < $Total ))
then
message info "Total GPUS found: "$Total
message danger "GPUs at 4x speed: "$Link4x
message file GPUList.txt --file=/tmp/Gpulist.txt payload
else
message info "All at 8x Width"
fi
