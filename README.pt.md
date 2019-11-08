# Pwn2Win CTF 2019

Sobre a nossa plataforma NIZK (Non-Interactive Zero-Knowledge): [arXiv:1708.05844](https://arxiv.org/pdf/1708.05844.pdf).


## Instalando o cliente da plataforma

Ano que vem, pretendemos ter um cliente baseado em web. Para esta edição, por favor escolha uma das opções abaixo para instalar nosso cliente de linha de comando.


### Opção 1: Docker

Clone este repositório:
```bash
git clone https://github.com/pwn2winctf/2019.git
cd 2019
```

Depois, gere uma nova chave SSH:
```bash
ssh-keygen -t ed25519 -f .ssh/id_ed25519
cat .ssh/id_ed25519.pub  # adicione à sua conta do GitHub (https://github.com/settings/keys)
```

**ou então** copie uma chave existente:
```bash
cp ~/.ssh/id_* .ssh/
```

Por fim, siga as instruções de  [registro](#registro) abaixo, sempre trocando `$CTF` por `./dctf`.

```bash
CTF=./dctf
```


### Opção 2: LXD

Crie o contêiner:
```bash
wget https://static.pwn2win.party/pwn2win2019.tar.gz
lxc image import pwn2win2019.tar.gz --alias=pwn2win
lxc launch pwn2win pwn2win
lxc exec pwn2win -- git pull   # assegura que o repositório está atualizado
```

Depois, gere uma nova chave SSH:
```bash
lxc exec pwn2win -- ssh-keygen -t ed25519
lxc exec pwn2win -- cat .ssh/id_ed25519.pub  # adicione à sua conta do GitHub (https://github.com/settings/keys)
```

**ou então** copie uma chave existente:
```bash
lxc file push ~/.ssh/id_* pwn2win/root/.ssh/
```

Por fim, siga as instruções de  [registro](#registro) abaixo, sempre trocando `$CTF` por `lxc exec pwn2win -- ./ctf`.

```bash
CTF="lxc exec pwn2win -- ./ctf"
```


### Opção 3: Sua máquina

Assegure-se que você já tenha uma chave SSH na sua máquina que esteja [vinculada à sua conta do GitHub](https://github.com/settings/keys).

Clone este repositório:
```bash
git clone git@github.com:pwn2winctf/2019.git
cd 2019
```

E instale as dependências, *e.g.* no Debian ou Ubuntu:
```bash
sudo apt-get install libsodium23
curl https://bootstrap.pypa.io/get-pip.py | sudo -H python
sudo -H python -m pip install -r pip-requirements.txt
```

Por fim, siga as instruções de  [registro](#registro) abaixo, sempre trocando `$CTF` por `./ctf`.

```bash
CTF=./ctf
```


## Registro

Execute:
```bash
$CTF init
```

Se você for o **líder** do time, responda `y` quando o cliente perguntar se você deseja cadastrar um novo time. Compartilhe o arquivo `team-secrets.json` que será gerado com os demais membros do time.

Se você for um dos **outros membros do time**, coloque o arquivo `team-secrets.json` compartilhado pelo seu líder dentro do seu diretório `2019`.


## Challenges

Os desafios ficam em [https://pwn2.win/2019](https://pwn2.win/2019).

Se você preferir, pode consultar localmente executando:
```bash
git pull && $CTF challs
```


## Submissão de flags

Se o desafio houver sido lançado recentemente, pode ser que antes você precise atualizar seu repositório local:
```bash
git pull
```

Para submeter uma flag:
```bash
$CTF submit --chall challenge-id 'CTF-BR{flag123}'
```

Você pode omitir `--challenge chall-id` do comando, mas vai demorar mais para submeter pois ele vai testar a flag contra todos os desafios.


## Placar

Você pode ver o placar na URL do game (https://pwn2.win/2019) ou por meio do comando:
```bash
$CTF score --names --pull
```


## Suporte

Podemos tentar te ajudar via IRC: #pwn2win @ freenode.
