FROM ruby:2.4

MAINTAINER thinkbot@outlook.de

ENV VERSION=0.1.0

RUN gem install bio-cd-hit-report --version ${VERSION} --no-format-exec

WORKDIR /tmp

ENTRYPOINT ["bio-cd-hit-report"]
CMD ["--help"]
