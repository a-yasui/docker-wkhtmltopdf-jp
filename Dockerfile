# Released under the MIT license
# https://opensource.org/licenses/MIT
#
# Via https://github.com/IcaliaLabs/docker-wkhtmltopdf/
#
FROM icalialabs/wkhtmltopdf:alpine

MAINTAINER a-yasui

WORKDIR /root

# IPA font
COPY IPAfont00303.zip .
RUN cd \ 
    && unzip IPAfont00303.zip \
    && mkdir -p /usr/share/fonts/ipa \
    && cp IPAfont00303/* /usr/share/fonts/ipa/ \
    && rm -rf IPAfont00303* \
    && fc-cache -fv

# 2: Set wkhtmltopdf as the entrypoint:
COPY alpine-entrypoint.sh /bin/entrypoint.sh

ENTRYPOINT ["/bin/entrypoint.sh"]
