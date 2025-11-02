## Sessions & State:
A Firewall configuration can be divided into two types as per the TCP setup.

**Stateless Firewall** : where it usually see two types of traffic. so we need two rules to configure the firewall both out and in traffic. AWS Network ACL uses the stateless Firewall to establish the connection.
	
1) Outbound --> Traffic going from client side to the server[Laptop IP(tcp/23060)--->server IP(tcp/443)].
2) Response --> Traffic comming from server side to the client [server IP(tcp/443) --->Laptop IP(tcp/230600)].

**Stateful Firewall** : 
