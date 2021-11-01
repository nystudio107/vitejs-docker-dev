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

2. Go into the `vitejs-docker-dev` directory:

```
cd vitejs-docker-dev
```

3. Build the Docker image:
```
make docker
```
This will be somewhat lengthy, as it builds the Docker image, and then clones down the [vitejs](https://github.com/vitejs/vite/) repository, and installs all of its dependencies

4. Start Vite in development mode:
```
make vite-pnpm run dev
```

5. Start the Vite app that you use for testing:
```
make app-pnpm run dev
```

## How it works

Vite.js Docker Dev uses one Docker image, and 3 Docker containers that are all based on the same image:

1. `vitejs-build-dev` is the container used to build the local dev environment, and is responsible for cloning down the Vite repository, installing dependencies, etc.
2. `vitejs-vite-dev` is the container that runs Vite itself in development mode
3. `vitejs-app-dev` is the container that runs the client "app" that you use while testing/developing Vite.js


