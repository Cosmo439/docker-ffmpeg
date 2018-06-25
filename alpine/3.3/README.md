# Usage
Easiest way to use this is set up aliases

```shell
alias ffmpeg3='docker run --rm -v `pwd`:/workdir cosmo439/ffmpeg:alpine-3.3'
alias ffprobe3='docker run --rm -v `pwd`:/workdir --entrypoint="ffprobe" cosmo439/ffmpeg:alpine-3.3'
```