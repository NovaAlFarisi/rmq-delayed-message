FROM rabbitmq:3.11-management

ENV RABBITMQ_ERLANG_COOKIE="secretcookie" \
    RABBITMQ_DEFAULT_USER="user" \
    RABBITMQ_DEFAULT_PASS="password"

COPY rabbitmq_delayed_message_exchange-3.11.1.ez /opt/rabbitmq/plugins/

RUN rabbitmq-plugins enable rabbitmq_delayed_message_exchange

EXPOSE 15672 5672
