FROM fluent/fluentd-kubernetes-daemonset:v1.3.3-debian-elasticsearch-1.8

LABEL maintaner="michal.kopacki@tivix.com"

RUN gem install fluent-plugin-detect-exceptions

COPY entrypoint.sh /bin/entrypoint.sh
RUN chmod +x /bin/entrypoint.sh

USER fluent

ENTRYPOINT ["/bin/entrypoint.sh"]