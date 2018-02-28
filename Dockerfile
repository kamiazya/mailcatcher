FROM ruby:2.5.0-alpine3.7

# required by gem install
RUN apk add --no-cache build-base libxml2-dev libxslt-dev sqlite-dev \
	&& gem install mailcatcher \
		-- --use-system-libraries \
		--with-xml2-config=/usr/bin/xml2-config \
		--with-xslt-config=/usr/bin/xslt-config \
		--with-sqlite-config=/usr/bin/sqlite-config \
	&& rm -rf /tmp/* /var/tmp/* /var/cache/apk/*

CMD mailcatcher \
	--verbose \
	--foreground \
	--ip 0.0.0.0 \
	--smtp-port 25 \
	--http-port 1080

EXPOSE 25 1080
