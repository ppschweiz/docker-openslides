FROM python:2
RUN pip install openslides
RUN mkdir /data
RUN mkdir -p /root/.config
RUN ln -s /data /root/.config/openslides
VOLUME /data
EXPOSE 80
CMD ["openslides"]
