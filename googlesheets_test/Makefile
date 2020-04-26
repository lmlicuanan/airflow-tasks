NAME = googlesheets_test
VER  = v0.0.1
REPO = lmlicuanan/airflow-tasks
DEST = $(REPO):$(NAME)-$(VER)

ENV_VARS = \
	--env DIR_GARGLE_GSHEETS

docker-build:
	docker build -t $(DEST) .

docker-run:
	docker run --rm --name $(NAME) $(ENV_VARS) $(DEST)

docker-bash:
	docker run -it --rm --name $(NAME) $(ENV_VARS) $(DEST) bash

docker-push:
	docker push $(DEST)