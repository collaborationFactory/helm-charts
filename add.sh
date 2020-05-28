#!/bin/bash
# Helper script to add/update a Helm chart in the GitHub pages Helm repository
# The script will be called by GitHub action from the individual chart repository.
# Note: git push must be executed manually
set -euo pipefail

# defines the path to the Helm chart
CHART_PATH=${1:-helm}
CHART_VERSION=${2:-}
# defines the path to the helm repository, which must also be a valid GIT repo
INDEX_PATH=${3:-"helm-charts/docs"}

if [ "${CHART_VERSION}" = "" ]; then
  helm package "${CHART_PATH}/" -d "${INDEX_PATH}"
else
  helm package "${CHART_PATH}/" --version "${CHART_VERSION}" -d "${INDEX_PATH}"
fi

helm repo index "${INDEX_PATH}"
cd "${INDEX_PATH}"

git config --local user.email "action@github.com"
git config --local user.name "GitHub Action"
git add *.tgz
git add index.yaml
git commit -m "add chart for ${GITHUB_REPOSITORY:-"?"}"