#!/bin/bash

for ns in $(host -t ns $1 | cut -d" " -f4); do
	host -l $1 $ns | grep "has address" | cut -d" " -f1,4
done
