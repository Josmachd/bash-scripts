#!bin/bash
for line in $(cat "lixo.txt")
do
    sudo rm -rf $line
done
