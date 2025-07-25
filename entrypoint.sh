#!/bin/bash

if [ ! -d "$GEOSERVER_DATA_DIR" ] || [ -z "$(ls -A "$GEOSERVER_DATA_DIR")" ]; then
    echo "Initializing GEOSERVER_DATA_DIR at $GEOSERVER_DATA_DIR"
    mkdir -p "$GEOSERVER_DATA_DIR"
    cp -r /opt/geoserver/data_dir/* "$GEOSERVER_DATA_DIR/"
else
    echo "GEOSERVER_DATA_DIR already initialized."
fi

exec /usr/bin/supervisord