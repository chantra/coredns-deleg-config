
$TTL 2d
$ORIGIN deleg.example.com.
@   IN SOA ns1.deleg.example.com. hostmaster.deleg.example.com. (
            2013080801 ; serial
            7200       ; refresh (2 hours)
            3600       ; retry (1 hour)
            1209600    ; expire (2 weeks)
            3600       ; minimum (1 hour)
            )

    IN  NS  ns1.deleg.example.net.
    IN  NS  ns2.deleg.example.net.
;    IN DELEG  1 ns1.deleg.example.net. ( ipv4hint=192.0.2.11 ipv6hint=2001:DB8::11 )
