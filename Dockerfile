FROM frolvlad/alpine-glibc:latest

ENV PATH="/opt/globusconnectpersonal:${PATH}"

RUN apk add --no-cache \
    curl \
    bash \
    coreutils \
    libstdc++

RUN curl https://downloads.globus.org/globus-connect-personal/linux/stable/globusconnectpersonal-latest.tgz | tar -C /opt -xzf - 

RUN mv /opt/globusconnectpersonal-* /opt/globusconnectpersonal

RUN adduser -D globus

USER globus

RUN mkdir /home/globus/.globusonline

ENTRYPOINT ["globusconnect"]

CMD ["--help"]
