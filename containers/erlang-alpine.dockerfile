FROM erlang:alpine


ARG TARGETARCH
RUN echo ${TARGETARCH}
COPY gleam-${TARGETARCH} /bin/gleam

CMD ["gleam"]

