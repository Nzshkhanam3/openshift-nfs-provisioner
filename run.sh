#!/bin/bash
# https://github.com/kubernetes-incubator/nfs-provisioner/blob/master/docs/deployment.md

oc create -f serviceaccount.yaml
oc create -f openshift-scc.yaml
oc create -f openshift-clusterrole.yaml
oadm policy add-scc-to-user nfs-provisioner system:serviceaccount:default:nfs-provisioner
oadm policy add-cluster-role-to-user nfs-provisioner-runner system:serviceaccount:default:nfs-provisioner
oc create -f deployment.yaml
oc create -f class.yaml
# oc create -f claim.yaml
