FROM ubuntu

COPY bin/your_mom /

RUN apt-get -qq update && apt-get install -y -qq ca-certificates && apt-get clean
RUN rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

CMD ["/your_mom"]
