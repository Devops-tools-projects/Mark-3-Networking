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
IP are mostly divided into two parts. IP address needs to be unique in both the local and global setup to avoid any issues.

            133.33.3.7

            # Network Part ---> 133.33        # Host Part ----> 3.7

            10000101.00100001.00000011.00000111  ---> 32 bits(4 bytes)/ 4 x 8 bits (Octects)

If the "Network Part" of two IP address match, it means they're on the same IP network. if not, they're on different networks. IP address are binary, 4 sets of 8 bits(octets) for a total of 32 bits.

This network has a 116 prefix. 16 bits of ip are the network, and the remaining bits are are for hosts. IP address are assigned by machine (DHCP) (or) humans.

  1) **static IP** : IPs which are staticaly assigened by humans.
  2) **DHCP (Dynamic host Configuration protocol)** : This is used to assigned IP automatically by the machine

## Subnet Mask:
It divides a larger network into smaller, more manageable parts each subnet functions as its own smaller within the larger one. subnet mask allows a host to determine if an IP address it needs to communicate with is local (or) remote - which influences if it needs to use a gateway (or) can communicate locally.

A subnet mast is configured on a host device in addition to an IP address. the starting address of the local network, is ALL-0's in the HOST part, the ending is ALL-1's in the HOST Part.

    EX: 255.255.0.0 ---> this is the same as /16 Prefix

        133.33.3.7 ---> has a subnet mask for /16 are

    net start -->  10000101.00100001.00000000.00000000 ---> 133.33.0.0
    net end   -->  10000101.00100001.11111111.11111111 ---> 133.33.255.255

## Route Tables & Routes :
Router compares packet destination IP & route table for Matching destinations. The More specific Prefixes are preferred (0 lowest, 32 highest). Packet is forwarded on to the next HOP/Target.

 Example of a route table is

        ----------------------------------
        |Destination   |  Next Hop/Target|
        ----------------------------------
        | 52.217.13.0/24 | 52.217.13.1    |
        |  0.0.0.0/0     |  52.43.214.1   |
        |  52.43.215.0/24|  52.43.215.1   |
        -----------------------------------

- Routing is the process of packets, hop by hop across the internet from source to destination. Router has multiple interfaces route table is used for selection.
- Route tables are statically populated are they are protocols like BGP (Boarder Gateway Protocol), which runs the internet.

