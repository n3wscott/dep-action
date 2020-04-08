FROM golang

RUN go get github.com/golang/dep/cmd/dep
RUN go get github.com/google/ko/cmd/ko
RUN go get github.com/google/licenseclassifier
RUN go get github.com/google/go-licenses
RUN go get knative.dev/test-infra/tools/dep-collector

ENV PATH "$PATH:$GOPATH/bin"

# Entrypoint:
COPY ./entrypoint.sh /
RUN chmod +x /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
