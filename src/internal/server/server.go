package server

import (
	hellopb "mygrpc/pkg/grpc"
)

type myServer struct {
	hellopb.UnimplementedGreetingServiceServer
}

func NewMyServer() *myServer {
	return &myServer{}
}
