VERSION := $(shell cat version)

install: install-vm

install-vm:
	groupadd -rf qtunnel
	install -d  $(DESTDIR)/usr/lib/qubes/
	install -D qtunnel-setup $(DESTDIR)/usr/lib/qubes/qtunnel-setup
	install -D qtunnel-connect $(DESTDIR)/usr/lib/qubes/qtunnel-connect
	install -D tunnel-restrict-firewall $(DESTDIR)/usr/lib/qubes/tunnel-restrict-firewall
	install -d $(DESTDIR)/lib/systemd/system
	install -D qubes-tunnel.service $(DESTDIR)/lib/systemd/system/qubes-tunnel.service
	install -d $(DESTDIR)/lib/systemd/system/qubes-tunnel.service.d
	install -D 00_generic.example $(DESTDIR)/lib/systemd/system/qubes-tunnel.service.d/00_generic.example
	install -D 10_wg.example  $(DESTDIR)/lib/systemd/system/qubes-tunnel.service.d/10_wg.example
	systemctl daemon-reload
	systemctl enable qubes-tunnel.service

rpmbuild:
	install -d  $(DESTDIR)/usr/lib/qubes/
	install -Dm 755 qtunnel-setup $(DESTDIR)/usr/lib/qubes/qtunnel-setup
	install -Dm 755 qtunnel-connect $(DESTDIR)/usr/lib/qubes/qtunnel-connect
	install -Dm 755 tunnel-restrict-firewall $(DESTDIR)/usr/lib/qubes/tunnel-restrict-firewall
	install -d $(DESTDIR)/lib/systemd/system
	install -Dm 644 qubes-tunnel.service $(DESTDIR)/lib/systemd/system/qubes-tunnel.service
	install -d $(DESTDIR)/lib/systemd/system/qubes-tunnel.service.d
	install -Dm 644 00_generic.example $(DESTDIR)/lib/systemd/system/qubes-tunnel.service.d/00_generic.example
	install -Dm 644 10_wg.example  $(DESTDIR)/lib/systemd/system/qubes-tunnel.service.d/10_wg.example

