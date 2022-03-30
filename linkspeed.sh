#!/bin/bash
Total=$(nvidia-info | grep "Bios" -c)
Link1x=$(nvidia-info | grep "1x" -c)
Link4x=$(nvidia-info | grep "4x" -c)
Link8x=$(nvidia-info | grep "8x" -c)
Link16x=$(nvidia-info | grep "16x" -c)

LinkTotal=$(($Link1x + $Link4))

nvidia-smi -q | grep --color=never -A 2 -B 6 "Link Width" > /tmp/Gpulist.txt



if (($Link8x < $Total ))
then
message info "Total GPUS found: "$Total
message danger "GPUs with issues: "$LinkTotal
message file GPUList.txt --file=/tmp/Gpulist.txt payload
else
message info "All at 8x Width"
fi
