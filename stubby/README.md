# Stubby
[Stubby](https://github.com/getdnsapi/stubby) is an application that acts as a local DNS Privacy stub resolver.

## Install stubby and configure
First install stubby from Homebrew, then replace the configuration file with the file from the repository. Alternatively, the dotbot install script will set up a link to the configuration file.
```sh
brew install stubby
cp stubby.yml /usr/local/etc/stubby/stubby.yml
```

## Start stubby
Start stubby as a homebrew service. This will make sure that stubby is started on boot. Afterwards, we need to direct all DNS queries to localhost. Stubby provides a script to apply these changes.
```zsh
sudo brew services restart stubby
sudo /usr/local/opt/stubby/sbin/stubby-setdns-macos.sh
```

## Test stubby
If set up correctly, stubby will now handle DNS queries and DNSSEC validation should be required. You can test whether stubby works correctly by running the following two dns queries.
```sh
# should return A record
dig sigok.verteiltesysteme.net @127.0.0.1
# should return SERVFAIL
dig sigfail.verteiltesysteme.net @127.0.0.1
```
