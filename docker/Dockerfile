FROM ubuntu:22.10 AS appbuild
WORKDIR /opt/app
RUN apt update && apt install -y git make gcc
RUN git clone https://github.com/robertdavidgraham/masscan
WORKDIR /opt/app/masscan
RUN make

FROM ubuntu:22.10
RUN apt update && apt install -y libpcap-dev
WORKDIR /opt/app
COPY --from=appbuild /opt/app/masscan/bin/masscan ./
ENV MASSCAN_ARGS --help
CMD /opt/app/masscan $MASSCAN_ARGS
