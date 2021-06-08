# docker-chowdown
lightweight alpine container for chowdown.io. You should git pull the app into your /config volume.

### Docker run command
```docker run --name chowdown -d -p 4000:4000/tcp -v "storage/dir:/config" --restart=unless-stopped docker.pkg.github.com/aneisch/docker-chowdown/chowdown:latest```
