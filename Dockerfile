# Create build production env [Build Phase]
FROM node:16-alpine as builder

WORKDIR '/app'
COPY package.json .
RUN npm install
COPY . .
# RUN npm run build

# Create nginx server and copy result of build folder [Run Phase]
# FROM nginx
# COPY --from=builder /app/build /usr/share/nginx/html
