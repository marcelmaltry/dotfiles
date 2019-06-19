To install stubby under macOS and copy the config file proceed as follows.
```sh
# Install stubby
brew install stubby
# Link stubby config
cp stubby.yml /usr/local/etc/stubby/stubby.yml
# Start stubby service on boot
sudo brew services restart stubby
# Redirect DNS queries to localhost
sudo /usr/local/opt/stubby/sbin/stubby-setdns-macos.sh
# Test stubby
# should return A record
dig sigok.verteiltesysteme.net @127.0.0.1
# should return SERVFAIL
dig sigfail.verteiltesysteme.net @127.0.0.1
```
