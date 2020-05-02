NAME = asana_automation
VER  = v0.0.1
REPO = lmlicuanan/airflow-tasks
DEST = $(REPO):$(NAME)-$(VER)

ENV_VARS = \
	--env ASANA_BOT_TOKEN \
	GCS_DEFAULT_BUCKET \
	GCS_AUTH_FILE

docker-build:
	docker build -t $(DEST) .

docker-run:
	docker run --rm --name $(NAME) $(ENV_VARS) $(DEST)

docker-bash:
	docker run -it --rm --name $(NAME) $(ENV_VARS) $(DEST) bash

docker-push:
	docker push $(DEST)