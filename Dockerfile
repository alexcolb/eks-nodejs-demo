FROM node:14

WORKDIR /opt/eks-nodejs-demo

COPY package-lock.json /opt/eks-nodejs-demo
COPY package.json /opt/eks-nodejs-demo

RUN npm ci --silent

COPY . .

EXPOSE 3000
CMD ["npm", "start"]
