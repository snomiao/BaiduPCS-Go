FROM golang
RUN apt-get update -y && apt-get install -y zip
WORKDIR /src
COPY . .

# for win11 https://github.com/josephspurrier/goversioninfo/issues/23
# RUN go get github.com/josephspurrier/goversioninfo/cmd/goversioninfo

RUN bash build.sh
CMD go run .
