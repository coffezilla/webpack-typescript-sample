# This image run webpack sample and node for development
# all files are running inside the container even the node_modules
#
# TIP 1: the node_modules folder will be empty in the local folder
# TIP 2: if you want to install new dependencies like: npm install <new_dep>, you have to recreate the image
# TIP 2: run bash from the the node image:
# $ docker run -it --entrypoint /bin/bash <image_name>

FROM node:14


# add `/app/node_modules/.bin` to the $PATH
ENV PATH /app/frontend/node_modules/.bin:$PATH

COPY ./frontend/package.json /app/frontend/package.json
# COPY ./frontend/package-lock.json /app/frontend/package-lock.json

COPY ./frontend/.eslintrc.js /app/frontend/.eslintrc.js
COPY ./frontend/.prettierrc /app/frontend/.prettierrc
COPY ./frontend/tsconfig.json /app/frontend/tsconfig.json
COPY ./frontend/webpack.common.js /app/frontend/webpack.common.js
COPY ./frontend/webpack.dev.js /app/frontend/webpack.dev.js
COPY ./frontend/webpack.prod.js /app/frontend/webpack.prod.js

WORKDIR /app/frontend

RUN npm install

CMD echo 'Image Builded - webpack-typescript-sample'
