FROM gcr.io/cloud-builders/kubectl

LABEL version="1.0.0"
LABEL name="kubectl"
LABEL repository="http://github.com/ck99io/action-kubectl"
LABEL homepage="http://github.com/ck99io/action-kubectl"

LABEL com.github.actions.name="Kubernetes CLI - kubectl"
LABEL com.github.actions.description="Run kubectl. The config can be provided with the secret KUBE_CONFIG_DATA."

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
CMD ["help"]
