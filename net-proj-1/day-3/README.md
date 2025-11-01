## Summary of Layer 3

- Layer 3 adds IP address (IPV4/V6) - Cross network addressing
- ARP - finds the MAC address for this IP
- Route -when to forward the Packet
- Route tables - Multiple Routes
- Router - Moves Packets from SRC to DST - Encapsulating in L2 on the way.
- Device to Device Communication over the internet
- No Method for Channels of Communications SRC IP <==> DST IP only.
- Can be delivered out of order.

## Problems of Layer-3

- The Main Problems of Layer 3 are, Routing Decisions are per packet. Different routes can result in out of order Packets at the destination. L3 Provides no ordering mechanism.
- Layer 3 communication is not guaranteed to be reliable packets can be lost in route. Per Packet routing can introduce delays to packets in route. different packets can experience different delays.
- There are no communication channels. Packet have a source and destination IP, but no method of splitting by app (or) channel when it comes to Layer 3
- No Flow control, if the source transmits faster then the destination can receive it can saturate the destination causing packet loss.

# Layer -4 Transportlayer:
Layer-4 adds on top of layer 3. it provides two Protocols. both stand on top of IP

  1) **TCP (Transmition Control Protocol)/IP**: It Provides error correction Reliability & Order in data. They are much slower but reliable.it is used for most of the imp app protocol. such as http,https,ssh,etc. it is connection oriented and can provide bidirectional channel of communication once connection is established.
     
  2) **UDP (User Datagram Protocol)**: It is faster but less reliable comparted to the TCP.

### TCP Segments:
A TCP segment (Transmission Control Protocol segment) is the basic data unit exchanged in a TCP connection. Each segment consists of two main parts: a TCP header and a data (payload) section.

- A TCP segments are encapsulated within ip packets. Segments dont have SRC and DST IPs. the Packets Provide device addressing, it has Source Port & Destination Port.
