FROM ubuntu
LABEL "org.opencontainers.image.source"="https://github.com/ptorrezao/qpdftool_payslip"
RUN apt update && apt install -y qpdf
WORKDIR /work
ENTRYPOINT ["/bin/bash", "/work/scripts/generate_docs.sh"]
#ENTRYPOINT ["tail", "-f", "/dev/null"]
