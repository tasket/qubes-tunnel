### qubes-tunnel service for Qubes OS

Manage, run, protect VPN connections in Proxy VMs.

This is closely based on the [Qubes-vpn-support](https://github.com/tasket/Qubes-vpn-support) project.

To help test qubes-tunnel for eventual release in Qubes, start with installation into a Debian 9 or Fedora 28 template:

#### Installation:

1. Download qubes-tunnel from github:
   ```
   user@someqube:~$ git clone https://github.com/tasket/qubes-tunnel.git
   ```

   Optionally, see [Verifying Tags](https://git-scm.com/book/en/v2/Git-Tools-Signing-Your-Work) to verify signatures.

2. Then copy to template VM:
   ```
   user@someqube:~$ qvm-copy qubes-tunnel
   ```

3. In a template shell, cd to the qubes-tunnel dir and run `sudo bash ./install`. Also install openvpn if necessary.

Then shutdown template.

#### Setup (abbreviated):

   A full text of the setup process [is here.](https://github.com/tasket/qubes-doc/blob/tunnel/configuration/vpn.md#set-up-a-proxyvm-as-a-vpn-gateway-using-the-qubes-tunnel-service) Steps are similar to Qubes-vpn-support, but names/paths are different.


#### Revisions:

* v1.4 rc2, July 24 2018

* v1.4 beta, June 2018

