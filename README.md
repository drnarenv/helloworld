# helloworld

This repo shows the hello world microservice using golang, gRPC and HTTP/2 protocol using Ingress Gateway in kubernetes.

##Authentication & Authorization of API requesst

kube-api server#

In Kubernetes, authentication of API requests is handled by the kube-apiserver, which is a component of the Kubernetes control plane. When a user or client makes an API request to the kube-apiserver, the request is authenticated using a variety of methods, such as client certificates, bearer tokens, and authenticated HTTP requests.

Once a request has been authenticated, the kube-apiserver then checks to see if the user or client is authorized to access the requested resources or perform the requested actions. This is done using a combination of role-based access control (RBAC) and other policies that are defined within the Kubernetes cluster.

