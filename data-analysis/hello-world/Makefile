NAME = hello-world
VER  = v0.0.1
REPO = lmlicuanan/data-analysis
DEST = $(REPO):$(NAME)-$(VER)

ENV_VARS = \
	--env GOOGLESHEETS_TOKEN

docker-build:
	docker build -t $(DEST) .

docker-run:
	docker run --rm --name $(NAME) $(ENV_VARS) $(DEST)

docker-bash:
	docker run -it --rm --name $(NAME) $(ENV_VARS) $(DEST) bash

docker-push:
	docker push $(DEST)