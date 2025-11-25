FROM frolvlad/alpine-glibc:latest

ENV PATH="/opt/globusconnectpersonal:${PATH}"

RUN apk add --no-cache \
    curl \
    bash \
    coreutils

RUN curl https://downloads.globus.org/globus-connect-personal/linux/stable/globusconnectpersonal-latest.tgz | tar -C /opt -xzf - 

RUN mv /opt/globusconnectpersonal-* /opt/globusconnectpersonal

USER guest

ENTRYPOINT ["globusconnect"]

CMD ["--help"]
