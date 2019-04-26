FROM scrapinghub/splash:3.0

ENV TOR_HOST=tor_proxy

ADD ./proxy-profiles/ /etc/splash/proxy-profiles/
ADD ./filters/ /etc/splash/
ADD entrypoint.sh /entrypoint.sh

RUN chmod +x /entrypoint.sh

ENTRYPOINT [ "/entrypoint.sh" ]

