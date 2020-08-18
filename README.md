# Stardog

The project contains the manifest to deploy Stardog onto a Kubernetes cluster using Kustomize

## Pre-requisites

  * [Docker](https://www.docker.com/)
  * [Kubernetes](https://kubernetes.io/)
  * [Kustomize](https://kubernetes-sigs.github.io/kustomize/)
  * [Apache ZooKeeper](https://zookeeper.apache.org/)

## Running locally

To run local you should have:

  * a Kubernetes cluster running on your machine and `kubectl` should be configured to your local cluster.
  * a highly available Zookeeper service running. This tutorial assumes you have deployed with [Sauce ZooKeeper](https://github.com/sauce-consortia/zookeeper)

Once you have those up and running, follow the steps below:

  1. If you do not have a local image of stardog build you should first build stardog
    `docker build -t gcr.io/sauce-gcr--hawk/stardog`
  2. Then deploy the manifest to your cluster
    `kustomize build dist/overlays/local | kubectl apply -f -`

You should see Stardog being deployed into the `default` namespace in your local cluster.

For more information about `stardog.properties` see the ß[stardog.properties example](https://github.com/stardog-union/stardog-examples/blob/develop/config/stardog.properties).