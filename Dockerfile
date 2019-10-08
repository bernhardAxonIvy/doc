FROM python:alpine

ADD requirements.txt requirements.txt

RUN apk add --update --no-cache make && \
    pip3 install -r requirements.txt

# remove modernizer
RUN rm /usr/local/lib/python3.7/site-packages/sphinx_rtd_theme/static/js/modernizr.min.js
RUN sed -i '/modernizr/d' /usr/local/lib/python3.7/site-packages/sphinx_rtd_theme/layout.html

WORKDIR /ivy-core/doc

USER 1000:1000
