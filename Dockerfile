FROM node:8.12

# ARG proxy
# ARG sproxy
# ARG noproxy
#
# ENV http_proxy="$proxy"
# ENV https_proxy="$sproxy"
# ENV no_proxy="$noproxy"

RUN apt-get update -y && apt install lbzip2

EXPOSE 3128
