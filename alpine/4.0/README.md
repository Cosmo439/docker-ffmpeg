# Usage
Easiest way to use this is set up aliases

```shell
alias ffmpeg4='docker run --rm -v `pwd`:/workdir cosmo439/ffmpeg:alpine-4.0'
alias ffprobe4='docker run --rm -v `pwd`:/workdir --entrypoint="ffprobe" cosmo439/ffmpeg:alpine-4.0'
```