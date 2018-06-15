FROM alpine:3.7

# Install dependencies
RUN apk update \
    && apk --update add \
    freetype-dev \
    gnutls-dev \
    lame-dev \
    libass-dev \
    libogg-dev \
    libtheora-dev \
    libvorbis-dev \ 
    libvpx-dev \
    libwebp-dev \ 
    libssh2 \
    opus-dev \
    rtmpdump-dev \
    x264-dev \
    x265-dev \
    yasm-dev \
    && apk add --no-cache --virtual \ 
    .build-dependencies \ 
    build-base \ 
    bzip2 \ 
    coreutils \ 
    gnutls \ 
    nasm \ 
    tar \ 
    x264

######################################################
# Install ffmpeg
######################################################
ARG FFMPEG_VERSION
ENV SOFTWARE_VERSION_URL="http://ffmpeg.org/releases/ffmpeg-${FFMPEG_VERSION}.tar.bz2"
ENV BIN="/usr/bin"

ADD temp/*  /tmp/installs

WORKDIR /tmp/installs

RUN cd ffmpeg* \
    && PATH="$BIN:$PATH" \
    && ./configure --bindir="$BIN" --disable-debug \
    --disable-doc \ 
    --disable-ffplay \ 
    --enable-avresample \ 
    --enable-gnutls \
    --enable-gpl \ 
    --enable-libass \ 
    --enable-libfreetype \ 
    --enable-libmp3lame \ 
    --enable-libopus \ 
    --enable-librtmp \ 
    --enable-libtheora \ 
    --enable-libvorbis \ 
    --enable-libvpx \ 
    --enable-libwebp \ 
    --enable-libx264 \ 
    --enable-libx265 \ 
    --enable-nonfree \ 
    --enable-postproc \ 
    --enable-small \ 
    --enable-version3 \
    && make \
    && make install \
    && make distclean
######################################################
# Done installing ffmpeg
######################################################

WORKDIR /workdir

ENTRYPOINT [ "ffmpeg" ]
CMD [ "-help" ]