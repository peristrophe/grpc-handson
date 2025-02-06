
regenerate:
	rm -f ./src/pkg/grpc/*.pb.go
	protoc -I src/api \
	       --go_out=./src/pkg/grpc --go_opt=paths=source_relative \
	       --go-grpc_out=./src/pkg/grpc --go-grpc_opt=paths=source_relative \
	       src/api/hello.proto