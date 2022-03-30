#!/bin/bash
Link4x=$(nvidia-info | grep "4x" -c)
Link8x=$(nvidia-info | grep "8x" -c)

echo "GPUs at 4x speed:" $Link4x
echo "GPUs at 8x speed:" $Link8x

if ($Link8x < 6 )
then
message danger "GPUs at 4x speed:"$Link4x
else
message info "GPUs at 8x speed:"$Link8x
fi
