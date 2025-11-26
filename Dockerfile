FROM debian:latest

ENV PATH="/opt/globusconnectpersonal:${PATH}"

RUN apt-get update && apt-get install -y \
    curl \
    bash

RUN curl https://downloads.globus.org/globus-connect-personal/linux/stable/globusconnectpersonal-latest.tgz | tar -C /opt -xzf - 

RUN mv /opt/globusconnectpersonal-* /opt/globusconnectpersonal

RUN useradd globus

USER globus

RUN mkdir /home/globus/.globusonline

ENTRYPOINT ["globusconnect"]

CMD ["--help"]
