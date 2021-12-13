# Dockerfile git Max
FROM node:12.18.1
RUN git clone "https://github.com/maxime-lalo/PA_2K21"
WORKDIR "/PA_2K21"
RUN cp .env.exemple .env
RUN npm install 
CMD npm start

# Dockerfile git Luis
# FROM node:12.18.1
# RUN git clone "https://github.com/Lutenruto/PA_2K21"
# WORKDIR "/PA_2K21"
# RUN cp .env.exemple .env
# RUN npm install 
# CMD npm start