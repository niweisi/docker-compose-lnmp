#!/bin/bash
cp -i $(pwd)/data/server/dnsmasq/dnsmasq.conf.demo $(pwd)/data/app/dnsmasq/dnsmasq.conf
cp -i $(pwd)/data/server/nginx/conf.d/test1.conf.demo $(pwd)/data/app/nginx/conf.d/test1.conf
