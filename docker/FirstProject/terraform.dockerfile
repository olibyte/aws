FROM alpine
LABEL Oliver Bennett <oliver.bennett@unimelb.edu.au>

RUN wget -O /tmp/terraform.zip https://releases.hashicorp.com/terraform/0.12.20/terraform_0.12.20_linux_amd64.zip
RUN unzip /tmp/terraform.zip -d /
RUN apk add ca-certificates

ENTRYPOINT [ "/terraform" ]

USER nobody