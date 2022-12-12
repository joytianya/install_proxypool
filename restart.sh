pid=`ps -ef | grep proxypool | grep -v grep | head -n 1 | awk '{print $2}'`
if [ ! -z $pid ];then
	echo "存在线程"$pid
	ps -ef | grep proxypool | grep -v grep | head -n 1 | awk '{print $2}' | xargs kill -9
fi
nohup ./proxypool -c config.yaml >/dev/null 2>/dev/null &

