#!/bin/bash
Total=$(nvidia-info | grep "Bios" -c)
Link4x=$(nvidia-info | grep "4x" -c)
Link8x=$(nvidia-info | grep "8x" -c)

echo "GPUs at 4x speed:" $Link4x
echo "GPUs at 8x speed:" $Link8x

if (($Link8x < $Total ))
then
message danger "GPUs at 4x speed: "$Link4x

else
message info "All at 8x Width"$
fi
