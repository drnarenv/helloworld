# helloworld

This repo shows the hello world microservice using golang, gRPC and HTTP/2 protocol using Ingress Gateway in kubernetes.

## Authentication & Authorization of API requesst

- **kube-api server**

In Kubernetes, authentication of API requests is handled by the kube-apiserver, which is a component of the Kubernetes control plane. When a user or client makes an API request to the kube-apiserver, the request is authenticated using a variety of methods, such as client certificates, bearer tokens, and authenticated HTTP requests.

Once a request has been authenticated, the kube-apiserver then checks to see if the user or client is authorized to access the requested resources or perform the requested actions. This is done using a combination of role-based access control (RBAC) and other policies that are defined within the Kubernetes cluster.

- **Ingress/Route Management**

In Kubernetes, ingress is the term used to refer to traffic that enters the cluster from the outside. An ingress resource is a collection of rules that allow inbound connections to reach the cluster services. This allows you to expose your applications to the outside world, and control the way external traffic is routed to your services.

- **route API parts(URI) to ddifferent resources/services**

In Kubernetes, you can use the concept of a "path-based routing" ingress to route different parts of an API's URI to different services. To do this, you first need to create an ingress resource that defines the rules for routing incoming traffic.

e.g:

apiVersion: networking.k8s.io/v1
kind: Ingress
metadata:
  name: example-ingress
spec:
  rules:
  - host: example.com
    http:
      paths:
      - path: /api/v1
        backend:
          serviceName: service-1
          servicePort: 80
      - path: /api/v2
        backend:
          serviceName: service-2
          servicePort: 80

- **REST to gRPC transcoding using grpc-gateway in proto file**

In order to enable REST to gRPC transcoding using grpc-gateway in a proto file, you need to include certain directives in the proto file that define the mapping between the REST and gRPC APIs. The grpc-gateway uses these directives to generate the necessary code to handle the transcoding.


To enable transcoding, you need to include the grpc-gateway and google.api.http packages in your proto file. The google.api.http package provides the http option, which is used to define the REST endpoints for your gRPC service. The grpc-gateway package provides the get and post options, which are used to define the HTTP methods for the REST endpoints.

refer to service.proto file in the repo.

Once you have defined your gRPC service and its corresponding REST endpoints in the proto file, you can use the protoc command-line tool to generate the necessary code for the grpc-gateway to handle the transcoding. The protoc tool will use the directives in the proto file to generate the code that enables the grpc-gateway to handle the REST to gRPC transcoding.

In summary, to enable REST to gRPC transcoding using grpc-gateway in a proto file, you need to include certain directives in the proto file that define the mapping between the REST and gRPC APIs. You can then use the protoc tool to generate the necessary code for the grpc-gateway to handle the transcoding.






          
