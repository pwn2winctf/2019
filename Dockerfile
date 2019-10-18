FROM alpine:latest

WORKDIR /nizkctf

ENV PYTHONUNBUFFERED=1

RUN apk add --no-cache \
		python3 \
		openssh-client \
		git \
		libsodium

RUN apk add --no-cache --virtual .build-deps \
		alpine-sdk \
		python3-dev \
		libffi-dev \
		libressl-dev && \
	\
	pip3 install \
		'requests[security]' \
		'pysodium' && \
	\
	apk del .build-deps

RUN { \
		echo "IdentityFile /nizkctf/.ssh/id_rsa"; \
		echo "IdentityFile /nizkctf/.ssh/id_ecdsa"; \
		echo "IdentityFile /nizkctf/.ssh/id_ed25519"; \
		echo "CheckHostIP no"; \
		echo "StrictHostKeyChecking yes"; \
		echo "UserKnownHostsFile /nizkctf/known_hosts"; \
	} >> /etc/ssh/ssh_config

ENTRYPOINT [ "python3", "./ctf" ]
