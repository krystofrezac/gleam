FROM node:slim


ARG TARGETARCH
RUN echo ${TARGETARCH}
COPY gleam-${TARGETARCH} /bin

CMD ["gleam"]

