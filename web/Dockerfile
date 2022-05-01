FROM centos:centos7.9.2009
RUN mkdir -p /nx-logs /html
COPY ./nginx /nginx
COPY ./exec.sh /exec.sh
ENTRYPOINT ["/exec.sh"]
