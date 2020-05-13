FROM python

LABEL "com.github.actions.name"="Github Action for Twist Web Hooks"
LABEL "com.github.actions.description"="Wraps the Twist Webhook to be used in Github Actions"
LABEL "com.github.actions.icon"="download-cloud"
LABEL "com.github.actions.color"="gray-dark"

LABEL "repository"="git@github.com:crbaker/actions-twister.git"
LABEL "homepage"="https://github.com/crbaker/actions-twister"
LABEL "maintainer"="Chris Baker <crbaker@gmail.com>"

RUN pip install requests

ADD *.py .

ENTRYPOINT ["python", "./entrypoint.py"]
