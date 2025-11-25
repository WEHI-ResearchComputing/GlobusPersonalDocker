# Globus Connect Personal Docker

Docker container for running Globus Connect Personal on Alpine Linux.

## Build

```bash
docker build -t gcp .
```

## Usage

Configure:
```bash
docker run -v some_volume:/home/globus/.globusonline gcp -setup ...
```

Run:
```bash
docker run -v some_volume:/home/globus/.globusonline gcp -start
```
