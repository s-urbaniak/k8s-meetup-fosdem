# background

k8s the hard way

https://github.com/kelseyhightower/kubernetes-the-hard-way

# provisioning

execute millions of `gcloud` commands

... meh :-(

# building blocks

https://media1.giphy.com/media/Yxoeu3U5wVYVG/giphy.gif

what things are necessary?

conceptually

# overview

- network
- storage
- compute

# network

- nics
  - allows IP provisioning in forehand
  - if not available, chicken-egg problem

- dns
  - some providers

- security groups
  - internal
  - external

- load balancer
  - internal
  - external

- overlay network implications
  - no overlay (flannel-gw, calico): L2 connectivity
  - flannel-vxlan: L3 connectivity, only one port

# dns

- split horizon dns
- api DNS
- ingress DNS

# storage

- local storage
- cloud storage

# compute

- etcd
- master
- worker

# manifest provisioning

- ssh (connectivity)
- object storage (s3)

# k8s installation

- 100% manual
- self-hosted (bootkube)
- installer options:
   - https://kubernetes.io/docs/setup/pick-right-solution/

# the big picture
