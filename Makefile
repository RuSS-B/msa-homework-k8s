include .make.env

namespace:
	kubectl create namespace ${NAMESPACE}

helm.install:
	helm install ${CHART_NAME} ./${CHART_FOLDER_NAME} --values ${CHART_FOLDER_NAME}/values.yaml

helm.delete:
	helm delete ${CHART_NAME}

helm.upgrade:
	helm upgrade ${CHART_NAME} ./${CHART_FOLDER_NAME} --values ${CHART_FOLDER_NAME}/values.yaml

helm.deps.upd:
	helm dependency update ./${CHART_FOLDER_NAME}

helm.deps:
	helm dependency build ./${CHART_FOLDER_NAME}