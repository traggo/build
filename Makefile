PROJECT=traggo/build

build-windows-amd64:
	docker build --build-arg GO_VERSION=${GO_VERSION} -t ${PROJECT}:${GO_VERSION}-windows-amd64 -f Dockerfile.windows-amd64 .

push-windows-amd64:
	docker push ${PROJECT}:${GO_VERSION}-windows-amd64

build-windows-386:
	docker build --build-arg GO_VERSION=${GO_VERSION} -t ${PROJECT}:${GO_VERSION}-windows-386 -f Dockerfile.windows-386 .

push-windows-386:
	docker push ${PROJECT}:${GO_VERSION}-windows-386

build-linux-amd64:
	docker build --build-arg GO_VERSION=${GO_VERSION} -t ${PROJECT}:${GO_VERSION}-linux-amd64 -f Dockerfile.linux-amd64 .

push-linux-amd64:
	docker push ${PROJECT}:${GO_VERSION}-linux-amd64

build-linux-386:
	docker build --build-arg GO_VERSION=${GO_VERSION} -t ${PROJECT}:${GO_VERSION}-linux-386 -f Dockerfile.linux-386 .

push-linux-386:
	docker push ${PROJECT}:${GO_VERSION}-linux-386

build-linux-arm-7:
	docker build --build-arg GO_VERSION=${GO_VERSION} -t ${PROJECT}:${GO_VERSION}-linux-arm-7 -f Dockerfile.linux-arm-7 .

push-linux-arm-7:
	docker push ${PROJECT}:${GO_VERSION}-linux-arm-7
	
build-linux-arm64:
	docker build --build-arg GO_VERSION=${GO_VERSION} -t ${PROJECT}:${GO_VERSION}-linux-arm64 -f Dockerfile.linux-arm64 .

push-linux-arm64:
	docker push ${PROJECT}:${GO_VERSION}-linux-arm64

build-linux-ppc64le:
	docker build --build-arg GO_VERSION=${GO_VERSION} -t ${PROJECT}:${GO_VERSION}-linux-ppc64le -f Dockerfile.linux-ppc64le .

push-linux-ppc64le:
	docker push ${PROJECT}:${GO_VERSION}-linux-ppc64le

build-linux-s390x:
	docker build --build-arg GO_VERSION=${GO_VERSION} -t ${PROJECT}:${GO_VERSION}-linux-s390x -f Dockerfile.linux-s390x .

push-linux-s390x:
	docker push ${PROJECT}:${GO_VERSION}-linux-s390x

build: build-linux-amd64 build-linux-arm-7 build-linux-arm64 build-linux-386 build-windows-amd64 build-windows-386 build-linux-ppc64le build-linux-s390x
push:  push-linux-amd64  push-linux-arm-7  push-linux-arm64  push-linux-386  push-windows-amd64  push-windows-386  push-linux-ppc64le  push-linux-s390x
