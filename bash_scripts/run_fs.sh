#run fs mode

#env variable
#BENCHMARK
#PROC

benchmark="${BENCHMARK:=blackscholes}"
proc="${PROC:=4}"


build/ECE666/gem5.fast -d project_fs/${benchmark}-$proc configs/example/gem5_library/x86-parsec-benchmarks.py --benchmark $benchmark --size simsmall --n_proc $proc
