#!/bin/bash

helm lint helm-chart-sources/*
helm package helm-chart-sources/*
helm repo index --url https://michalbiesek.github.io/helm-charts/ .


git add *tgz index.yaml
