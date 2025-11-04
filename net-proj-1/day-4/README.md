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

### Static Network Address Translation:

- In static NAT, The Router (NAT Device) Maintains a NAT Table, it maps private IP : Public IP (1:1).
- If a device in local Network, with Private IP wants to communication to a device in public Network then

1) Packets are generated as normal with a Private source(SRC)IP, and an external Destination (DST) IP.

			Ex: SRC IP: 10.0.0.42
   				DST IP: Netflix
2) The Router (NAT Device), allocates the Public IP to the Private IP. so the source address of the Packet is translatedas it Passes through the NAT Device.

			EX: SRC IP: 52.95.36.67
   				DST IP: Netflix
- If a responce is send from the destination side, the NAT device checks the inbound packets, if a matching entry is found in NAT table, the DST public IP is translated to the matching Private IP. in AWS this is how the internet Gateway (IGW) Functions.

### Dynamic Network Address Translation:
- The Route (NAT Device) maintains a NAT table, it maps Private IP : Public IP. But here Public IP allocations are "temporary allocations" from a Public IP Pool.
- The Public IP is allocated as per the requirement, as the Public IP available < Private IP.
- Public IP allocation are temporary and multiple devices can use the same allocation over time as long as there is no overlap.
- Only one private IP will be mapped to a single public IP at any given time. its still 1:1 for the duration of the allocation.
- If the public IP pool is exhausted, then the external access can fail.

### Port address translation (PAT):
- In AWS this is how the NAT Gateway (NAT GW) funtions - a(many:1) (Private IP:Public IP) Architecture.
- it is when a large number of Private devices share a single public address.
- The NAT Device (Router) Records the source (Private) IP and Source Port. it replaces the source IP with the Single Public IP and a Public Soure Port Allocated from a pool which allows IP Overloading (Many to one).
- While sending a Packet, The Source Side Dynamicaly Create a Port like 32768. But the NAT device Stores this Port from client and assignes a Public source Port.
- The Return traffic from the destination side has tcp/443 & 1.3.3.7 as the Source and the Public IP of the NAT device and destination Port.
- Now the NAT device, will translate the public Port & IP to private Port and IP using the NAT Table.

  			NAT Table
  		+------------+--------------+------------+-------------+
  		| Private IP | Private Port |  Public IP | Public Port |
  		+------------+--------------+------------+-------------+
  		| 10.0.0.42  |   32768      | 52.95.36.67|     1337    |
  		+-------------------------------------------------------
  		| 10.0.0.43  |	32769     | 52.95.36.67|    1338     |
  		--------------------------------------------------------
  	
