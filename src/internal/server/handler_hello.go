package server

import (
	"context"
	"fmt"
	hellopb "mygrpc/pkg/grpc"
)

func (s *myServer) Hello(ctx context.Context, req *hellopb.HelloRequest) (*hellopb.HelloResponse, error) {
	message := fmt.Sprintf("Hello, %s!", req.GetName())
	return &hellopb.HelloResponse{Message: message}, nil
}
