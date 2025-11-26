# Globus Connect Personal Docker

Docker container for running Globus Connect Personal on Alpine Linux.

## Usage

Configure:
```bash
docker run -v some_volume:/home/globus/.globusonline ghcr.io/wehi-researchcomputing/globus_connect_personal:$VERSION -setup ...
```

Run:
```bash
docker run -v some_volume:/home/globus/.globusonline ghcr.io/wehi-researchcomputing/globus_connect_personal:$VERSION -start
```

## Build

Work out what the latest Globus verion is, then:

```bash
docker build -t ghcr.io/wehi-researchcomputing/globus_connect_personal:$VERSION .
```
