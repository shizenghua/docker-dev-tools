ARG GO_VERSION
FROM ${GO_VERSION}

ARG TZ
ARG CONTAINER_PACKAGE_URL
ARG GOPROXY
ARG GO111MODULE

RUN if [ $CONTAINER_PACKAGE_URL ] ; then sed -i "s/dl-cdn.alpinelinux.org/${CONTAINER_PACKAGE_URL}/g" /etc/apk/repositories ; fi

RUN apk --no-cache add tzdata \
    && cp "/usr/share/zoneinfo/$TZ" /etc/localtime \
    && echo "$TZ" > /etc/timezone 
RUN go env -w GOPROXY=${GOPROXY} &&\
    go env -w GO111MODULE=${GO111MODULE}    

WORKDIR /go