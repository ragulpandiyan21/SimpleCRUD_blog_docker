FROM node:15
WORKDIR /app
COPY package.json .

ARG NODE_ENV
RUN if [ "$NODE_ENV" = "development" ]; \
        then npm install; \
        else npm install --only=production; \
        fi

COPY . ./
ENV PORT 3000
EXPOSE $PORT
CMD ["node", "index.js"]

#RUN  npm install bcryptjs

#RUN npm install mongoose

#RUN npm install redis connect-redis express-session

#COPY . ./ 

#ENV PORT 4000

#EXPOSE $PORT

#CMD ["node", "index.js"]