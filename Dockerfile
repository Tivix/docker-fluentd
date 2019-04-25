FROM fluent/fluentd-kubernetes-daemonset:v1.3.3-debian-elasticsearch-1.8

LABEL maintaner="michal.kopacki@tivix.com"

USER root

RUN gem install fluent-plugin-detect-exceptions

USER fluent
