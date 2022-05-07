#script to run gem5

maxloads=("1000" 10000" "100000" "1000000) 
proc=2
for str in ${maxloads[@]}; do
	build/ECE666/gem5.opt --debug-flags=ProtocolTrace configs/example/ruby_random_test.py -n $proc --maxloads=$str>final_traces/mesi${proc}_final_${str}.txt
done




