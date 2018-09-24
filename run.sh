#!/bin/bash
service nginx start
cd /home/api.ai-kaldi-asr-model
../asr-server/fcgi-nnet3-decoder --fcgi-endofspeech=false --fcgi-threads-number=8 --fcgi-socket=:9000