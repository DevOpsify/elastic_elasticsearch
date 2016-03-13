#!/bin/bash

sed -i "s#CLUSTER_NAME#$CLUSTER_NAME#" /usr/share/elasticsearch/config/elasticsearch.yml
sed -i "s#NETWORK_HOST#$NETWORK_HOST#" /usr/share/elasticsearch/config/elasticsearch.yml
sed -i "s#NODE_NAME#$HOSTNAME#" /usr/share/elasticsearch/config/elasticsearch.yml
sed -i "s#NODE_MASTER#$NODE_MASTER#" /usr/share/elasticsearch/config/elasticsearch.yml
sed -i "s#NODE_DATA#$NODE_DATA#" /usr/share/elasticsearch/config/elasticsearch.yml
sed -i "s#INDEX_NUMBER_OF_SHARDS#$INDEX_NUMBER_OF_SHARDS#" /usr/share/elasticsearch/config/elasticsearch.yml
sed -i "s#INDEX_NUMBER_OF_REPLICAS#$INDEX_NUMBER_OF_REPLICAS#" /usr/share/elasticsearch/config/elasticsearch.yml
sed -i "s#HTTP_ENABLED#$HTTP_ENABLED#" /usr/share/elasticsearch/config/elasticsearch.yml
sed -i "s#DISCOVERY_ZEN_PING_UNICAST_HOSTS#$DISCOVERY_ZEN_PING_UNICAST_HOSTS#" /usr/share/elasticsearch/config/elasticsearch.yml

/docker-entrypoint.sh elasticsearch
