FROM python:3.7-alpine3.7

ARG http_proxy
ENV http_proxy=$http_proxy
ARG https_proxy
ENV https_proxy=$http_proxy

RUN pip install --upgrade pip \
  && pip install mkdocs mkdocs-material \
  && mkdir -p /doxtak /www

COPY static/* /doxtak/

VOLUME [/www]

CMD [ "mkdocs" ]
ENTRYPOINT [ "mkdocs" ]
