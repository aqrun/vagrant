NODE_HOME="/workspace/apps/node-v8.12.0-linux-x64"
YARN_BIN="/home/vagrant/.yarn/bin"

if [ -d "$NODE_HOME/bin" ]; then
    PATH="$NODE_HOME/bin:$PATH"
fi

if [ -d "$YARN_BIN" ]; then
    PATH="$YARN_BIN:$PATH"
fi


