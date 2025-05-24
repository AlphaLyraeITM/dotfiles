# Configuring HideMyName VPN

General information and config downloads are [here](https://hidxxy.name/faq/vpn/vpn-installation-and-configuration/third-party-applications/openvpn-for-linux/)

1. Download configs from the link
2. Unpack configs

```bash
bsdtar -x config_archive.zip
```

3. Install openvpn:

```bash
pacman -S networkmanager-openvpn
```

4. Make directory for configs

```bash
cd /etc/openvpn/

sudo mkdir configs
```

5. Move configs you downloaded to newly created directory
6. To run the vpm simply run:

```bash
cd /etc/openvpn/configs

sudo openvpn --config ConfigName.ovpn
# sudo openvpn --config Austria, Graz S7.ovpn
```

You can also add aliases to shell

```bash
# OpenVPM - HideMyName
export VPN_CFG_PATH="/etc/openvpn/configs/"
alias vpn-austria="sudo openvpn --config \"$VPN_CFG_PATH/Austria, Graz S7.ovpn\""
```
