# Vite.js Docker Dev
Local development environment for developing vite.js via Docker container

## About

This is a local development environment for developing [vite.js](https://vitejs.dev) via a Docker container.

It takes care of the setup listed in the [Vite Contributing Guide](https://github.com/vitejs/vite/blob/main/CONTRIBUTING.md) in a Dockerized environment, which allows you to get it up and running quickly & easily.

## Why Docker?

Developers who have adopted [Docker](https://www.docker.com/) for a containerized approach to development are used to not having to install a matching development infrastructure each time they approach a project.

This allows you to "shrink-wrap" the devops needed to run a project in a container, which will run anywhere, on any machine, without having to do a meticulous setup step.

It also allows you to easily swap between basic things like node versions, without affecting your local computer.

## Quick Start

1. Clone down the repository:

```
git clone https://github.com/nystudio107/vitejs-docker-dev.git
```

2. Build the Docker image:
```
cd vitejs-docker-dev && make docker
```
This will be somewhat lengthy, as it builds the Docker image, and then clones down the [vitejs](https://github.com/vitejs/vite/) repository, and installs all of its dependencies

3. Start Vite in development mode:
```
make vite-pnpm run dev
```

4. Start the Vite app that you use for testing:
```
make pnpm run dev
```

## How it works

