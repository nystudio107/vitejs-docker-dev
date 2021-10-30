TAG?=14-alpine
PORT?=3000
VITE_REPO?=https://github.com/vitejs/vite.git
VITE_DIR?=vite

.PHONY: docker pnpm vite

docker:
	docker build \
		docker-config/ \
		-t nystudio107/vitejs-dev:${TAG} \
		--build-arg TAG=${TAG} \
		--no-cache
	docker container run \
		--name vitejs-build-dev \
		--rm \
		-t \
		-v `pwd`:/app \
		--entrypoint "/bin/sh" \
		-e VITE_REPO=${VITE_REPO} \
		-e VITE_DIR=${VITE_DIR} \
		nystudio107/vitejs-dev:${TAG} \
		docker-config/docker.sh
pnpm:
	docker container run \
		--name vitejs-app-dev \
		--rm \
		-t \
		-p ${PORT}:${PORT} \
		-v `pwd`:/app \
		nystudio107/vitejs-dev:${TAG} \
		$(filter-out $@,$(MAKECMDGOALS))
vite-pnpm:
	docker container run \
		--name vitejs-vite-dev \
		--rm \
		-t \
		-v `pwd`:/app \
		--entrypoint "/bin/sh" \
		nystudio107/vitejs-dev:${TAG} \
		-c "cd ${VITE_DIR}/packages/vite && pnpm $(filter-out $@,$(MAKECMDGOALS))"
%:
	@:
# ref: https://stackoverflow.com/questions/6273608/how-to-pass-argument-to-makefile-from-command-line
