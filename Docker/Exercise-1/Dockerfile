FROM ubuntu:plucky-20241124
WORKDIR /app
RUN apt-get update && \ 
    apt-get install -y git curl
COPY script.sh .
RUN chmod +x script.sh
ENTRYPOINT ["sh","./script.sh"]
CMD ["World"]
