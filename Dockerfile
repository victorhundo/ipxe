from node:latest

RUN git clone git://git.ipxe.org/ipxe.git /ipxe

RUN apt-get update && apt-get install -y \
    genisoimage \
	tftpd-hpa \
	tftp-hpa \
&& rm -rf /var/lib/apt/lists/*

RUN cd /ipxe/src && make
COPY ./conf /ipxe/confa

WORKDIR /ipxe
CMD ["/bin/bash", "/ipxe/conf/entrypoint.sh"]
