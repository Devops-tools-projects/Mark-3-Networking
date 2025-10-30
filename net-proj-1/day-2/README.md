## Layer 3 - Networking :

### Internet Protocol (IP):
it is a Layer-3 Protocol which adds cross network IP addressing and routing to move data between local Area Networks without direct P2P links. if LAN1 & LAN2 are Isolated local area network. using only Layer 2, Only those networks joined by a direct point to point link using the SAME Layer 2 Protocol could communicate.

IP Packets are moved Step by Step from source to destination Via Intermediate Networks. encapsulated in different frames along the way.

### Routers:
They are Layer 3 devices, remove frame encapsulation and add new frame encapsulation at every hop.

### Packets:
It is a data unit used within the internet Protocol(IP), which is Layer 3. They are similar to Frames. they have data that needs to be moved, along with source and destination address. with Frames Source & Destination address are local. but in IP Packets source and destination can be Global. Packets remain same in there journey, where they move in Layer 2.

Packets are placed inside the frames. which is called encapsulation frames are specific to local and chages everytime the packet moves between the network. but packets are constant from source to destination.

### Packet Structure:
There are two types IPS in use.

**V4** : There are multiple fields inside an packet of IPV4. some of the importent once are

  1) Source IP address
  2) Destination IP address
  3) Protocol (ICMP, TCP, UDP,etc)
  4) Data (layer 4)
  5) Time to live

**V6** : There are few importent field inside IPV6.

  1) Source IP Address (Bigger)
  2) Destination IP Address (Bigger)
  3) Data (From Layer 4)
  4) HOP Limit (Same as Time to Live) ---> Max hop that an ip can take before discarding

## IP Addressing (IPV4):
Lets take an example IP address. This Format of an IP is called Dotted-decimal Notatoin(4 x 0-255). These are 4 decimal Numbers from 0-255 divided by "."
IP are mostly divided into two parts.

            133.33.3.7

            # Network Part ---> 133.33        # Host Part ----> 3.7

            10000101.00100001.00000011.00000111  ---> 32 bits(4 bytes)/ 4 x 8 bits (Octects)

If the "Network Part" of two IP address match, it means they're on the same IP network. if not, they're on different networks. IP address are binary, 4 sets of 8 bits(octets) for a total of 32 bits.
