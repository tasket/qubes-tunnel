Name:	qubes-tunnel
Version:	1.4.0
Release:	1%{?dist}
Summary:	Qubes service for simple, secure VPN tunnels.

Group:		Qubes
License:	GPL
URL:		http://github.com/tasket/qubes-tunnel
Source0:	%{name}-%{version}.tar.gz

Requires:	iptables
Requires:	qubes-core-agent-networking

%description
Qubes service for ProxyVMs as secure VPN tunnel gateways. Combines anti-leak
firewall, DNS and systemd service that accepts config files from your
VPN provider.


%prep
%setup -q


%install
rm -rf $RPM_BUILD_ROOT
make install-vm DESTDIR=$RPM_BUILD_ROOT

%clean
rm -rf $RPM_BUILD_ROOT

%files

