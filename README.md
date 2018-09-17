### qubes-tunnel service for Qubes OS

Manage, run, protect VPN connections in Proxy VMs.

This is closely based on the [Qubes-vpn-support](https://github.com/tasket/Qubes-vpn-support) project.

To help test qubes-tunnel for eventual release in Qubes, start with installation into a Debian 9 or Fedora 28 template:

#### Installation:

1. Install 'qubes-tunnel' using `apt-get` or `dnf` in template, or download qubes-tunnel from github and copy to template:
   ```
   git clone https://github.com/tasket/qubes-tunnel.git
   qvm-copy qubes-tunnel
   ```

   Optionally, see [Verifying Tags](https://git-scm.com/book/en/v2/Git-Tools-Signing-Your-Work) to verify git signatures.

2. Install 'openvpn' in template, if needed.

3. If you downloaded the github project, open a template shell then:
   ```
   cd qubes-tunnel
   sudo make install
   ```

4. Shutdown template.

#### Setup

   A full text of the setup process [is here.](https://github.com/tasket/qubes-doc/blob/tunnel/configuration/vpn.md#set-up-a-proxyvm-as-a-vpn-gateway-using-the-qubes-tunnel-service)


#### Revisions:

* v1.4.0, September 2018

* v1.4 beta, June 2018

