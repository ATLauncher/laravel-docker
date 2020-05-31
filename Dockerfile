FROM lorisleiva/laravel-docker:7.4

RUN apk add --no-cache autoconf automake libpng-dev libtool make gcc musl-dev nasm \
    && echo "memory_limit=1024M" > /usr/local/etc/php/conf.d/memory_limit.ini \
    && echo "upload_max_filesize=1024M" > /usr/local/etc/php/conf.d/upload_max_filesize.ini \
    && echo "post_max_filesize=1024M" > /usr/local/etc/php/conf.d/post_max_filesize.ini \
    && echo "post_max_size=1024M" > /usr/local/etc/php/conf.d/post_max_size.ini \
    && echo "max_execution_time=600" > /usr/local/etc/php/conf.d/max_execution_time.ini
