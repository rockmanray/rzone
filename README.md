# rzone
This repository is for the paper "A Novel Approach to Solving Goal-Achieving Problems for Board Games", which was accepted by AAAI-22.
https://arxiv.org/pdf/2112.02563.pdf

# Build

## Preprocessing
git clone git@github.com:rockmanray/rzone.git
cd rzone/database
unzip radius3.zip
cd rzone/database/dcnn/ELF
unzip elf_v2_weight.zip

## Run as container
podman run --rm -it -v $HOME:/workspace --runtime runc --security-opt seccomp=unconfined -w /workspace/rzone --network="host" rockmanray/gorzone

# Evaluation
The problems used in the experiments can be found in the directory "tsumego". 
In the evalaution, we encapsulated the problems in json format which contains the settings (ko rules, player to move, crucial stones, etc.) for the program to solve.
You can run the following scripts to solve the tsumego problems.

For 7x7 problems:
./run_7x7.sh

For 19x19 problems:
./run_19x19.sh

The result will be saved as json format in the directory "result". 
For example, for the 7x7 problem 1.json with AlphaZero and RZS, the result will be saved as result_1.json in rzone/result/7x7/AZ_RZ.

The property "NumSimulations" in the json files is the number of nodes that need to solve that problem.

# Supplementary Material
The pdf appendix.pdf provides the supplementary material for the paper.
It includes the following aterials:
* Summarize how blocks on stones are defined to be unconditionally alive (UCA) for achieving safety in L&Dproblems by Benson (1976).
*  Present zone dilation methods that expand zones to satisfy the three CR  conditions and illustrate the caseswhere zone dilation is needed for L&D problems.
*  Present a goal-achieving solver that combines RZS withdepth-first search.
*  Introduce the game of Slither and illustrate its zone dila-tion using an example.
*  Provide  experiment  details,  including  training  settings, the collection of L&D problems, and their run times. 