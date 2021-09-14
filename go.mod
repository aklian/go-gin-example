module github.com/aklian/go-gin-example

go 1.14

require (
	github.com/gin-gonic/gin v1.7.4
	github.com/go-ini/ini v1.63.0
	github.com/go-playground/validator/v10 v10.9.0 // indirect
	github.com/go-sql-driver/mysql v1.6.0 // indirect
	github.com/golang/protobuf v1.5.2 // indirect
	github.com/jinzhu/gorm v1.9.16
	github.com/json-iterator/go v1.1.12 // indirect
	github.com/mattn/go-isatty v0.0.14 // indirect
	github.com/modern-go/concurrent v0.0.0-20180306012644-bacd9c7ef1dd // indirect
	github.com/ugorji/go v1.2.6 // indirect
	github.com/unknwon/com v1.0.1
	golang.org/x/crypto v0.0.0-20210817164053-32db794688a5 // indirect
	golang.org/x/sys v0.0.0-20210910150752-751e447fb3d0 // indirect
	golang.org/x/text v0.3.7 // indirect
	google.golang.org/protobuf v1.27.1 // indirect
	gopkg.in/yaml.v2 v2.4.0 // indirect
)

replace (
	github.com/aklian/go-gin-example/conf => /root/go/src/go-gin-example/pkg/conf
	github.com/aklian/go-gin-example/middleware => /root/go/src/go-gin-example/middleware
	github.com/aklian/go-gin-example/models => /root/go/src/go-gin-example/models
	github.com/aklian/go-gin-example/pkg/e => /root/go/src/go-gin-example/pkg/e
	github.com/aklian/go-gin-example/pkg/setting => /root/go/src/go-gin-example/pkg/setting
	github.com/aklian/go-gin-example/routers => /root/go/src/go-gin-example/routers
)
