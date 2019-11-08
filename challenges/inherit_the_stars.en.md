
The year is 2022. A HARPA operative, bored by the fact HxH is in hiatus since 2018 (wait, but the story this year isn't even inspired by HxH?!), decided it would be nice to hide information by spreading it across several MIPS OpenWrt nodes belonging to a 10.0.0.0/8 network. Each node can have subordinates which it can ask to die, thereby giving their nen, oops, their information, back to their master.

If you query the main node (i.e., the master of them all) through HTTP (port 8000) at a specific hidden endpoint, it will yield you the secret information (i.e., the flag). Not every node the binary tries to contact should be online: we expect some of the nodes to be offline. If you run the binary either in more or in fewer nodes than the specific set of nodes expected to be online, it will answer with random garbage. In short, you need to try all tree topologies accepted by the binary until you get a result with the correct flag format.

[Link](https://cloud.ufscar.br:8080/v1/AUTH_c93b694078064b4f81afd2266a502511/static.pwn2win.party/inherit_the_stars_8c3dd7e3288863a86fe47b8ae4f6e54cf5f73159c0641a9f94c95d4f80528aed.tar.gz)

[Mirror](https://static.pwn2win.party/inherit_the_stars_8c3dd7e3288863a86fe47b8ae4f6e54cf5f73159c0641a9f94c95d4f80528aed.tar.gz)
