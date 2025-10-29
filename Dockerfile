# Use the official n8n image
FROM docker.n8n.io/n8nio/n8n:latest

USER root
RUN mkdir -p /home/node/.n8n/workflows && chown -R node:node /home/node/.n8n
USER node

COPY ./*.json /home/node/.n8n/workflows/

EXPOSE 5678
