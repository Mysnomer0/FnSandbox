FROM clearlinux/stacks-dlrs-oss:v0.5.0

COPY --from=fnproject/hotwrap:latest  /hotwrap /hotwrap

CMD "bin/rev"

ENTRYPOINT ["/hotwrap"] 
