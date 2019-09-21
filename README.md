# asr-server
docker build for kaldi fastcgi server using https://github.com/api-ai/asr-server
and golbin/kaldi:latest base image
set to use port 9000 and core count times 2 minus 2 threads,ie. 8core = 8*2 -2 = 14 , options set in run.sh before build.
