# openshift-nfs-provisioner
nfs-provisioner for allowing storageclass testing in an all-in-one openshift platform

    oc create -f serviceaccount.yaml
    oc create -f openshift-scc.yaml
    oc create -f openshift-clusterrole.yaml
    oadm policy add-scc-to-user nfs-provisioner system:serviceaccount:default:nfs-provisioner
    oadm policy add-cluster-role-to-user nfs-provisioner-runner system:serviceaccount:default:nfs-provisioner
    oc create -f deployment.yaml
    oc create -f class.yaml

Can test this way:

    oc create -f claim.yaml
    
