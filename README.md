# Docker Compose GitOps

Basic implementation of GitOps paradigm using docker-compose. This program continuously fetch a git repository
and update docker-compose services.

## Installation

<Todo>

## Usage

```
$ git clone <Git URL with docker-compose configuration>
$ gitops.sh
```

### With docker-compose

```yaml
# /path/to/subfodler/docker-compose.yml

services:
  ...
  gitops:
    image: zeeke/docker-compose-gitops
    working_dir: /git/path/to/subfolder # Optional. Use it if docker-compose.yml is not in the root
    volumes:
      - /var/run/docker.sock:/var/run/docker.sock
      - ./:/git  # Or ../../:/git to map git repo root to /git

```

## Next

[ ] Add a parameter to specify update interval
[ ] Add a parameter to specify remote name
