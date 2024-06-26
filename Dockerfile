FROM node:18

WORKDIR /usr/src/app
ENV PORT 8080
ENV HOST 0.0.0.0
ENV MODEL_URL 'https://storage.googleapis.com/submissionmlgc-rajabagung/submissions-model/model.json'
COPY package*.json ./
RUN npm install
COPY . .
EXPOSE 8080
CMD [ "npm", "run", "start"]