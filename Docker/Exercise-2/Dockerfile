#Stage 1- Build React app
FROM node:18 AS build
WORKDIR /app
COPY example-react-app/package.json example-react-app/package-lock.json ./ 
RUN npm install
COPY example-react-app ./

#Stage 2- Serve with nginx
FROM nginx:alpine
COPY --from=build /app/build /usr/share/nginx/html
EXPOSE 80
CMD ["nginx" , "-g" , "daemon off;"] 