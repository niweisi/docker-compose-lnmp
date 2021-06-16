FROM rabbitmq:3.8.3-management

ADD ./rabbitmq_delayed_message_exchange-3.8.0.ez /plugins
RUN chown rabbitmq:rabbitmq /plugins/rabbitmq_delayed_message_exchange-3.8.0.ez \
    && rabbitmq-plugins enable rabbitmq_delayed_message_exchange
