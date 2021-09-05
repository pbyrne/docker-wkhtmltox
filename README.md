Pre-built WKTHMLtoX for use in a Docker container by way of [multi-step builds](https://docs.docker.com/develop/develop-images/multistage-build/). Not intended for use-cases outside of exactly my own.

In your Dockerfile, add:

```
FROM pbyrne/wkhtmltox as wkhtmltox
```

Then in whichever stage you need it, add
```
COPY --from=wkhtmltox /usr/local/bin/wkhtmltopdf /usr/local/bin/
```
