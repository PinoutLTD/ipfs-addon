#!/usr/bin/with-contenv bashio

bashio::log.info "Starting the IPFS daemon "
/usr/bin/ipfs daemon --enable-gc --migrate=true