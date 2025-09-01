uci del dhcp.lan.ra
uci del dhcp.lan.ra_slaac
uci del dhcp.lan.ra_flags
uci del dhcp.lan.max_preferred_lifetime
uci del dhcp.lan.max_valid_lifetime
uci del dhcp.lan.dhcpv6
uci set dhcp.lan.ignore='1'
uci commit dhcp

uci del network.lan.ip6assign
uci set network.lan.ipaddr='10.0.2.2'
uci set network.lan.gateway='10.0.2.1'
uci add_list network.lan.dns='10.0.2.1'

uci set network.lan6=interface
uci set network.lan6.proto='dhcpv6'
uci set network.lan6.device='br-lan'
uci set network.lan6.reqaddress='try'
uci set network.lan6.reqprefix='auto'
uci set network.lan6.norelease='1'
uci commit network

uci del zerotier.earth
uci set zerotier.home=network
uci set zerotier.home.id='52b337794f0d2137'
uci set zerotier.global.enabled='1'
uci commit zerotier
