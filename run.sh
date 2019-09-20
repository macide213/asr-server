#!/bin/bash
service nginx start
threads=$(expr `grep processor /proc/cpuinfo | wc -l` \* 2 - 2)
cd /home/api.ai-kaldi-asr-model
../asr-server/fcgi-nnet3-decoder --fcgi-endofspeech=false --fcgi-threads-number=$threads --fcgi-socket=:9000
