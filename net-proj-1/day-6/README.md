## IPSEC VPN Types
VPN are of two types

1) **Policy-based VPNs** : it is when we Create rules based on traffic. using this rule traffic is send to a pair of security Associations. we can have different rules for different types of traffic, which is good for more regures security settings. it is more complex to setup but provide more flexiblity for different security. settings for different types of traffic.

       Policy-based => Single SA Pair == Multiple Unique IPSEC Key

3) **Route-based VPNs** : This type of VPN do target matching based on prefix. it has a single pair of security associations for each network Prefix. it provides less functionality, but it is much easier to setup.

       Route-based => Single SA Pair == Single IPSEC Key

# Jumbo Frames & MTU :
The Maximum ethernet V2 frame size is 1500 bytes. but any frame which exceeds this frame size is classified as Jumbo frame. In General, Jumbo frames are frames with maximum size of 9000 bytes. regardless of the size, the frame overhead remains the same size.

## Normal frame (VS) Jumbo Frames:
**Normal frames**: it has few Problems, where it has more overhead to payload ratio, and more wasted time on medium.

        |___A___|-->-|_Payload_|_|-->---|____|_|-->--|____|_|--->-|___B___|
                               |
                             Frame 
                            Overhead

- More Frames = More Space between frames & More wasted time on medium.

**Jumbo frames**: It gives us more max bytes to works with so more payload & less wasted time on medium.

        |___A___|--->--|______Payload______|_|---->----|__________________|_|-->--|___B___|

- More Payload (data) per frame Overhead = More efficient
- More Payload per frame = less frames = less waste between frames. we need to make sure that every step of OSI Model has to support jumbo frames (or) we will see fragmentation (BAD). not all services in AWS Support jumbo frames.

### AWS Components which dont support jumbo frames:
- Traffic outside of a single VPC dont support jumbo.
- Traffic Over an inter-region VPC Peering connection.
- Traffic Over VPN Connections.
- Traffic Over an internet gateway.

### AWS Components that do support jumbo frames:
- Traffic Over the same region Peering support jumbo.
- Traffic Over a direct connect support jumbo.
- Transit gateway can support packets which are larger than usual but they support only up to 8500.

