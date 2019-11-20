FROM alpine

ENV NAME=neucodb-project
ADD ./build /build
ADD ./entrypoint /entrypoint
ADD ./salt /salt

RUN apk --no-cache add bash

RUN bash < /entrypoint

