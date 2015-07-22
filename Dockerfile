FROM python:2
RUN pip install openslides
RUN mkdir /data
RUN mkdir /data/config
RUN mkdir /data/share
RUN mkdir -p /root/.config
RUN mkdir -p /root/.share
RUN ln -s /data/config /root/.config/openslides
RUN ln -s /data/share /root/.share/openslides
VOLUME /data
EXPOSE 80
CMD ["openslides"]
