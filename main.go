package main

import (
	"fmt"
	"log"
	"syscall"

	"github.com/aklian/go-gin-example/pkg/setting"
	"github.com/aklian/go-gin-example/routers"
	"github.com/fvbock/endless"
)

func main() {
	endless.DefaultReadTimeOut = setting.ReadTimeout
	endless.DefaultWriteTimeOut = setting.WriteTimeout
	endless.DefaultMaxHeaderBytes = 1 << 20
	endPoint := fmt.Sprintf(":%d", setting.HTTPPort)

	server := endless.NewServer(endPoint, routers.InitRouter())
	server.BeforeBegin = func(add string) {
		log.Printf("actual pid is %d", syscall.Getpid())
	}

	err := server.ListenAndServe()
	if err != nil {
		log.Printf("Server err: %v", err)
	}

	// router := routers.InitRouter()

	// s := &http.Server{
	// 	Addr: fmt.Sprintf(":%d", setting.HTTPPort),
	// 	Handler: router,
	// 	ReadTimeout: setting.ReadTimeout,
	// 	WriteTimeout: setting.WriteTimeout,
	// 	MaxHeaderBytes: 1 << 20,
	// }

	// s.ListenAndServe()
}