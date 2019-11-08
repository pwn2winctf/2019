
O ano é 2022. Um agente da HARPA, chateado pelo fato de que o HxH está em hiato desde 2018 (espera, mas a história esse ano nem é inspirada no HxH?!), decidiu que seria legal esconder informações espalhando-as por vários nós MIPS OpenWrt pertencentes a uma rede 10.0.0.0/8. Cada nó pode ter subordinados que ele pode pedir para que morram, devolvendo assim seu nen, oops, sua informação, a seu mestre.

Se você consultar o nó principal (isto é, o mestre de todos os nós) via HTTP (porta 8000) em um certo endpoint oculto, ele devolverá a você a informação secreta (isto é, a flag). Nem todos os nós que o binário tenta conectar devem estar de pé: esperamos que alguns dos nós estejam fora do ar. Se você executar o binário em um único nó a mais ou em um único nó a menos do que é esperado, ele responderá com lixo aleatório. Em resumo, você precisa tentar todas as topologias de árvore aceitas pelo binário até que você obtenha um resultado com o formato correto de flag.

[Link](https://cloud.ufscar.br:8080/v1/AUTH_c93b694078064b4f81afd2266a502511/static.pwn2win.party/inherit_the_stars_8c3dd7e3288863a86fe47b8ae4f6e54cf5f73159c0641a9f94c95d4f80528aed.tar.gz)

[Mirror](https://static.pwn2win.party/inherit_the_stars_8c3dd7e3288863a86fe47b8ae4f6e54cf5f73159c0641a9f94c95d4f80528aed.tar.gz)
