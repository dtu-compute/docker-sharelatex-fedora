FROM fedora:24

RUN ln -sf /usr/share/zoneinfo/Europe/Copenhagen /etc/localtime && \
    dnf -y update && \
    dnf -y install git nodejs nodejs-grunt-cli npm make python time strace which \
           texlive aspell aspell-en aspell-da \
           unzip ImageMagick optipng zlib-devel \
           qpdf \
           supervisor net-tools nginx && \
    dnf clean all

RUN git clone https://github.com/sharelatex/sharelatex.git /var/www/sharelatex && \
    rm -rf /var/www/sharelatex/.git

COPY setup*.sh /
RUN /setup1.sh

COPY config/services.js                         /var/www/sharelatex/config/
COPY config/package.json config/git-revision.js /var/www/
COPY config/settings.coffee                     /etc/sharelatex/

ENV SHARELATEX_CONFIG /etc/sharelatex/settings.coffee

RUN /setup2.sh

#RUN npm install -g grunt-cli
RUN cd /var/www                 && npm install
RUN cd /var/www/sharelatex      && npm install; grunt install
RUN cd /var/www                 && node git-revision > revisions.txt
RUN cd /var/www/sharelatex/web  && grunt compile:minify
RUN cd /var/www/sharelatex/clsi && grunt compile:bin
RUN cd /var/www/sharelatex      && grunt migrate -v

COPY supervisord.ini /etc/supervisord.d/

COPY nginx.conf      /etc/nginx/
COPY sharelatex.conf /etc/nginx/conf.d/

CMD ["/usr/bin/supervisord"]

# cd /var/www/sharelatex && grunt check:redis
# cd /var/www/sharelatex && grunt check:mongo
