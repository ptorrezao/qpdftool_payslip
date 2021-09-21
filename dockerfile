FROM debian:stretch-slim
RUN apt update && apt install -y qpdf
WORKDIR /work
ENTRYPOINT ["/bin/bash", "/work/scripts/generate_docs.sh"]
#ENTRYPOINT ["tail", "-f", "/dev/null"]

