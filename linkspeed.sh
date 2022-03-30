#!/bin/bash
Total=$(nvidia-info | grep "Bios" -c)
Link4x=$(nvidia-info | grep "4x" -c)
Link8x=$(nvidia-info | grep "8x" -c)

nvidia-info | grep -B 1 "4x" | grep "GPU" | awk '{print $2,$3,$4}' > /tmp/Gpulist.txt

#echo "GPUs at 4x speed:" $Link4x
#echo "GPUs at 8x speed:" $Link8x

if (($Link8x < $Total ))
then
message danger "GPUs at 4x speed: "$Link4x
message file List /tmp/Gpulist.txt
else
message info "All at 8x Width"$
fi
