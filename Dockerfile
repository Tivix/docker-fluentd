FROM fluent/fluentd-kubernetes-daemonset:elasticsearch

LABEL maintaner="michal.kopacki@tivix.com"

USER root

RUN gem install fluent-plugin-detect-exceptions

USER fluent
