FROM gmolaire/yarn:1.22.4_12.18.3-alpine3.12

WORKDIR /app

ENV PATH /app/node_modules/.bin:$PATH

ENV PORT 3001

COPY package.json ./
COPY yarn.lock ./
EXPOSE 3001
RUN yarn

RUN yarn add react-scripts@3.4.1 -g

COPY . ./

CMD ["npm","start"]