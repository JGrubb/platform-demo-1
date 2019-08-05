#!/usr/bin/env bash

TEMP_BEAT_HOME=config/filebeat/build

[ ! -d $TEMP_BEAT_HOME ] && mkdir -p $TEMP_BEAT_HOME
cd $TEMP_BEAT_HOME

# Install Filebeat
curl -L -O https://artifacts.elastic.co/downloads/beats/filebeat/filebeat-7.3.0-linux-x86_64.tar.gz
tar xzvf filebeat-7.3.0-linux-x86_64.tar.gz
rm filebeat-7.3.0-linux-x86_64.tar.gz

mkdir -p filebeat-7.3.0-linux-x86_64/pki/tls/certs

mv $HOME/filebeat.yml filebeat-7.3.0-linux-x86_64/

cp -v -r $HOME/config/filebeat/build/filebeat-6.7.0-linux-x86_64/* $HOME/filebeat