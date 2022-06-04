#!/bin/sh

# for each name in names.csv, create a user using create-user.sh
while read name; do
    # ssh remote and run create-user.sh locally
    ssh -i $1 $2 "sudo bash -s" < create-user.sh $name
done < names.csv