#!/bin/sh

set -e

if [ ! -e "/etc/danted.conf" ]; then
	cat > /etc/danted.conf <<-EOF
		logoutput: stderr
		internal: 0.0.0.0 port = 1080
		external: eth0
		user.unprivileged: nobody
		socksmethod: none
		clientmethod: none
		client pass {
			from: 0.0.0.0/0 to: 0.0.0.0/0
			log: error
		}

		socks pass {
			from: 0.0.0.0/0 to: 0.0.0.0/0
		}
	EOF
fi
exec "$@"