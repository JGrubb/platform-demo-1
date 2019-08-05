#!/usr/bin/env bash

TEMP_BEAT_HOME=config/filebeat/build
VERSION="7.3.0"

[ ! -d $TEMP_BEAT_HOME ] && mkdir -p $TEMP_BEAT_HOME
cd $TEMP_BEAT_HOME

# Install Filebeat
curl -L -O https://artifacts.elastic.co/downloads/beats/filebeat/filebeat-$VERSION-linux-x86_64.tar.gz
tar xzvf filebeat-$VERSION-linux-x86_64.tar.gz
rm filebeat-$VERSION-linux-x86_64.tar.gz

mkdir -p filebeat-$VERSION-linux-x86_64/pki/tls/certs
mkdir -p /app/filebeat

mv $HOME/filebeat.yml filebeat-$VERSION-linux-x86_64/

cp -v -r $HOME/config/filebeat/build/filebeat-$VERSION-linux-x86_64/* $HOME/filebeat