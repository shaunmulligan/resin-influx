#!/bin/sh

# Make and chown influxdb data directory
mkdir /data/influxdb
chown influxdb:influxdb /data/influxdb

# Make and chown kapacitor data directory
mkdir /data/kapacitor
chown kapacitor:kapacitor /data/kapacitor

# Make and chown chronograf data directory
mkdir /data/chronograf
chown chronograf:chronograf /data/chronograf

# Run the application with supervisor
supervisord -n -c /usr/local/etc/supervisord.conf
