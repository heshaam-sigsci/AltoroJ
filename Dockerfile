FROM eystsen/altoro:latest

EXPOSE $PORT

#RUN mkdir /app
#COPY start.sh start.sh
#RUN chmod +x start.sh

#ARG P=${PORT}

RUN sed "s/8080/${PORT}/g" < /$CATALINA_HOME/conf/server.xml > /tmp/server.xml

RUN cp /tmp/server.xml /$CATALINA_HOME/conf/server.xml

#ENTRYPOINT ["./start.sh"]
CMD ["catalina.sh", "run"]
