#!/bin/bash

echo "system health check"

echo "Disk:"
df -kh | grep /Pardhu-Mine

echo "memory"
freem -m