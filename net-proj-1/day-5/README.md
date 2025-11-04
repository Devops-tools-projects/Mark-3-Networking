# Stateful (VS) Stateless Firewall :
- Every "Connection" has two Parts - REQUEST (initiation) and Response. directionality INBOUND (or) OUTBOUND depends on Perspective (Clinet/Server).
- When a Client sends a request to the server. then the REQUEST is OUTBOUND from the Client Perspective. But the Request is INBOUND from the Server Perspective.

        |___Client___|-OUTBOUND--------->------INBOUND->|___Server___|
                                        REQ
- It is same for the Response request as the client becomes OUTBOUND & Server is INBOUND.

## Stateless Firewall:
- It is a basic type of network firewall that inspects each Packet individually without keeping track of ongoing connections (or) Session States. This Firewall does not remember Previous Packets (or) Track whether a connection is established (or) not.
- So we need two Rules (1 IN bound, 1 OUT bound) Per connection with stateless firewalls we need to remember the response ephemeral ports. its not the well known App port.

## Stateful Firewall:
- it is intelligent enough to identify the REQUEST and RESPONSE Components of a Connection as being related. Stateful firewall the request (inbound (or) Outbound) means the Response (inbound (or) Outbound) is automatically.

# IPSEC VPN Fundamentals :
- it is aa group of Protocols, it sets up secure tunnels across insecure network. They set between two Peers(Local & Remote). IPSEC also Provides Authentication and Encryption.
- Public Internet is insecure & data can not be directly forwarded for transfering data over the internet, we create IPSEC tunnels. Interesting traffic that matching sertain roles these can be network prefixes (or) more complex traffic types.
- Once data is classified as interesting traffic then the IPSEC tunnel is Created to Carry Traffic Through to its destination. Data inside tunnels is encrypted-secure connection over an insecure network.
- IPSEC VPN is secure Communication method that uses the IPSEC Protocol suite to Protect data send over an untrusted network (Like the internet).

## Symmetric Encryption:
It is a type of encrption where the same secure key is used for both encryption and decryption of data. it is the oldest and fastest menthod of securing information. it is fast, but it is a challenge to exchange keys securely.

## Asymmetric Encryption:
It is a cryptographic system that uses two different keys for secure communication. it solves the big problem of symmetric encryption which is how to share the key securely. it is slow , but we can easily exchange Public keys.



