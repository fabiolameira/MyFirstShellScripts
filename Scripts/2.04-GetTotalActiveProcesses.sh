# !/bin/bash
# This script return total active processes:
echo $( ps -e | wc -l )
