install:
	cp pre-push ${GOPATH}/src/kubevirt.io/kubevirt/.git/hooks/pre-push
	chmod +x ${GOPATH}/src/kubevirt.io/kubevirt/.git/hooks/pre-push

.PHONY: install

