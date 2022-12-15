go get github.com/fullstorydev/grpcurl
go install github.com/fullstorydev/grpcurl/cmd/grpcurl

grpcurl -v -plaintext -d '{"name":"bob"}' localhost:50051 protos.HelloWorld/SayHello
