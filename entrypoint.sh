#!/bin/sh

sed -i "s|tor_proxy|$TOR_HOST|g" /etc/splash/proxy-profiles/default.ini
sed -i "s|tor_proxy|$TOR_HOST|g" /etc/splash/proxy-profiles/tor.ini

python3 /app/bin/splash \
    --proxy-profiles-path /etc/splash/proxy-profiles \
    --js-profiles-path /etc/splash/js-profiles \
    --filters-path /etc/splash/filters \
    --lua-package-path /etc/splash/lua_modules/?.lua
