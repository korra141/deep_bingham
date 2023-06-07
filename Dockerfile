FROM pytorch/pytorch:1.0.1-cuda10.0-cudnn7-runtime 
WORKDIR /app
COPY . .
#RUN yarn install --production
#CMD ["node", "src/index.js"]
EXPOSE 3000
