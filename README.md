# Git hooks that save time

The PR process can take more time than neccessary, when
there are forgotten details. Especially, when these
details can be ommited.

This little project introduces `git pre-push` hook,
which checks for:

* present focused tests, focused tests will make the CI complain
* ommited `make generate`, which makes the CI complain


TODO:

* [] implement unit test check
* [] add `go fmt` and `go import` check separately
* [] figure out a way how to check for functinal tests run locally


## Requirements

Currently the containerized process is not supported.
Therefore you have to install dependencies:

```bash
go get github.com/mattn/goveralls && \
go get -u github.com/Masterminds/glide && \
go get -u github.com/golang/mock/gomock && \
go get -u github.com/rmohr/mock/mockgen && \
go get -u github.com/rmohr/go-swagger-utils/swagger-doc && \
go get -u github.com/onsi/ginkgo/ginkgo
go get -u k8s.io/code-generator/cmd/deepcopy-gen && \
go get -u k8s.io/code-generator/cmd/defaulter-gen && \
go get -u k8s.io/kube-openapi/cmd/openapi-gen && \
go get -u github.com/golang/protobuf/protoc-gen-go

dnf install protobuf-compiler
```

You also should have golang installed :).
