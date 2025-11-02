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

      +---------------------------------------------------------------+
      | Source Port (16) | Destination Port (16)                      |
      +---------------------------------------------------------------+
      | Sequence Number (32)                                          |
      +---------------------------------------------------------------+
      | Acknowledgment Number (32)                                    |
      +---------------------------------------------------------------+
      | Data Offset | Reserved | Flags | Window Size (16)             |
      +---------------------------------------------------------------+
      | Checksum (16) | Urgent Pointer (16)                           |
      +---------------------------------------------------------------+
      | Options (variable) | Padding (variable)                       |
      +---------------------------------------------------------------+
      |                    Data (Payload)                             |
      +---------------------------------------------------------------+

  - **Source Port**: Port number of the sending application.
  - **Destination Port** : Port number of the receiving application.
  - **Sequence Number** : Identifies the position of the first data byte in this segment within the stream.
  - **Acknowledgment Number** : Specifies the next expected byte from the other side. it is a way that one side can indicate that it received sertian sequence number.
  - **Data Offset**: Indicates where the data begins; tells how long the header is.
  - **Reserved** : Reserved for future use (set to 0).
  - **Flags** : Control messages for managing connections and flow. Flage are set to alter the connection.
  - **Window** : It defines the No.of bites that we indicate that we are willing to receive between acknowledgment.
  - **Checksum** : This is used for error checking. TCP can check errors and arriange retransmittion.
  - **Urgent Pointer** : indicates the end of urgent data.
 
## TCP :
TCP is a connection based protocol. A connection is established between two devices using a random port on a client and a known port on the server.Once established the connection is bi-directional. the "connection" is a reliable connection,Provided via the segments encapsulated in IP packets.

- Well known port of a TCP connects are 443. this is the port the server is running the TCP on.
- Ephemeral Port of a TCP. As part of TCP Connection from client the client uses a Temp port like 23060, This has higher Port range and Temporary.
- TCP is all about connection, we cannot send data without creating a connection, both the client and server needs to acknowledgment on started connection.
