HADOOP_TAR="http://mirrors.hostingromania.ro/apache.org/hadoop/common/hadoop-2.3.0/hadoop-2.3.0.tar.gz"

if [ -d "/opt/hadoop" ]; then
    echo "I think you have hadoop. Not installing it."
    exit
fi

wget "$HADOOP_TAR"
tar -xvzf hadoop-*.tar.gz
rm hadoop-*.tar.gz
mv hadoop-* /opt/hadoop
