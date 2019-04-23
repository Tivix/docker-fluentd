FROM fluent/fluentd-kubernetes-daemonset:elasticsearch

LABEL maintaner="michal.kopacki@tivix.com"

RUN gem install fluent-plugin-detect-exceptions
