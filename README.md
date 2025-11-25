# Globus Connect Personal Docker

Docker container for running Globus Connect Personal on Alpine Linux.

## Build

```bash
docker build -t globus-connect-personal .
```

## Usage

Configure:
```bash
docker run -v some_volume:/home/globus/.globusconnect -setup ...
```

Run:
```bash
docker run -v some_volume:/home/globus/.globusconnect -start
```
