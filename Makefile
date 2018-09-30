VERSION := $(shell cat version)

install: install-vm

install-vm: install-files
	groupadd -rf qtunnel
	systemctl daemon-reload
	systemctl enable qubes-tunnel.service

install-files:
	install -d  $(DESTDIR)/usr/lib/qubes/
	install -Dm 755 qtunnel-setup $(DESTDIR)/usr/lib/qubes/qtunnel-setup
	install -Dm 755 qtunnel-connect $(DESTDIR)/usr/lib/qubes/qtunnel-connect
	install -Dm 755 tunnel-restrict-firewall $(DESTDIR)/usr/lib/qubes/tunnel-restrict-firewall
	install -d $(DESTDIR)/lib/systemd/system
	install -Dm 644 qubes-tunnel.service $(DESTDIR)/lib/systemd/system/qubes-tunnel.service
	install -d $(DESTDIR)/lib/systemd/system/qubes-tunnel.service.d
	install -Dm 644 00_generic.example $(DESTDIR)/lib/systemd/system/qubes-tunnel.service.d/00_generic.example
	install -Dm 644 10_wg.example  $(DESTDIR)/lib/systemd/system/qubes-tunnel.service.d/10_wg.example

