FROM node:6.6
VOLUME /screeps
WORKDIR /app
RUN npm install screeps
ADD entrypoint.sh /screeps/entrypoint.sh
ENTRYPOINT ["/bin/bash","/screeps/entrypoint.sh"]
CMD ["screeps","start"]
