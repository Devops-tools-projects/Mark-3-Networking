## Sessions & State:
A Firewall configuration can be divided into two types as per the TCP setup.

**Stateless Firewall** : where it usually see two types of traffic. so we need two rules to configure the firewall both out and in traffic. AWS Network ACL uses the stateless Firewall to establish the connection.
	
1) Outbound --> Traffic going from client side to the server[Laptop IP(tcp/23060)--->server IP(tcp/443)].
2) Response --> Traffic comming from server side to the client [server IP(tcp/443) --->Laptop IP(tcp/230600)].

**Stateful Firewall** : it can understand the TCP Connection. so it only see one thing. it allows the outbound implicitly allows the inbound response.AWS Security Groups uses the stateful firewall. so we only need to specify one direction of traffic.
1) Outbound --> Traffic goes to and from for two devices [Laptop IP(tcp/23060)--->Server IP(tcp/443)]

## NET (Network Address Translation):
- it is designed to Overcome IPV4 shortages. it is also provides some security benefits. Translates Private IPV$ to Public.
- NAT is a networking Process used to modify IP address info in packets as they Pass through a router (or) firewall.
- It is the key Technology that allows multiple devices on a Private network to share a single public IP address, when accessing the internet.
- Since IPV4 are limited we need NAT, but IPV6 has vast No.of IPV6 we dont need to use NAT. Public IP and Private IP can not communicate over the internet.
- Types of NAT Protocol.
	1) Static NAT - 1 Private to 1(Fixed) Public address(Internet Gateway from AWS)
 	2) Dynamic NAT - 1 Private to 1st available Public IP (Used when available public ip is less then local ip)
  	3) Port Address Translation(PAT) or Overloading - Many Private to 1 public (NAT GW) 
