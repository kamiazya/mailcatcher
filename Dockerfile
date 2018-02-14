FROM ruby:2.5.0-alpine3.7

# mailcatcher
ENV SMTP_PORT 25
ENV HTTP_PORT 1080

# required by gem install
RUN apk add --no-cache build-base libxml2-dev libxslt-dev sqlite-dev \
	&& gem install mailcatcher \
		-- --use-system-libraries \
		--with-xml2-config=/usr/bin/xml2-config \
		--with-xslt-config=/usr/bin/xslt-config \
		--with-sqlite-config=/usr/bin/sqlite-config \
	&& rm -rf /tmp/* /var/tmp/* /var/cache/apk/*

CMD mailcatcher \
	--no-quit \
	--foreground \
	--ip 0.0.0.0 \
	--smtp-port $SMTP_PORT \
	--http-port $HTTP_PORT

EXPOSE $SMTP_PORT $HTTP_PORT
