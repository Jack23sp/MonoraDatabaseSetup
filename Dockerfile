FROM mcr.microsoft.com/mssql/server:2022-latest

ENV ACCEPT_EULA=Y
ENV MSSQL_PID=Developer
ENV HOME=/var/opt/mssql

USER root

COPY start.sh /start.sh
RUN chmod +x /start.sh

EXPOSE 1433

CMD ["/start.sh"]