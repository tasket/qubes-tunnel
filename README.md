### qubes-tunnel service for Qubes OS

Manage, run, protect VPN connections in Proxy VMs.

This is closely based on the [Qubes-vpn-support](https://github.com/tasket/Qubes-vpn-support) project.

To help test qubes-tunnel for eventual release in Qubes, start with installation into a Debian 9 or Fedora 26 template:

#### Installation:

1. Copy qubes-tunnel to template:
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

Steps are similar to Qubes-vpn-support, but names/paths are different:

1. Create a proxyVM (appVM with 'provides network') based on above template.
2. Enable "qubes-tunnel-openvpn" Qubes service for the proxyVM.
3. In the proxyVM shell run `/usr/lib/qubes/qtunnel-setup --config`
4. Add OpenVPN config files to /rw/config/qtunnel
5. Link config `cd /rw/config/qtunnel; ln -s myconfig.ovpn qtunnel.conf`
6. Restart proxyVM

   A full text of the setup process [is here.](https://github.com/tasket/qubes-doc/blob/tunnel/configuration/vpn.md#set-up-a-proxyvm-as-a-vpn-gateway-using-the-qubes-tunnel-service)

Discussion thread re: testing...
https://groups.google.com/d/msgid/qubes-users/ee24f104-efbc-23f7-aca3-6be86104ddaf%40posteo.net

