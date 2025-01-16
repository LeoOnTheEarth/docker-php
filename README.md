Docker PHP Images
=================

Docker PHP Images for CI/CD.

Development
-----------

```shell
# Build docker image manually
docker build --rm -t leoontheearth/php:8.4 -f Dockerfile-PHP84 .
docker build --rm -t leoontheearth/php:8.3 -f Dockerfile-PHP83 .
docker build --rm -t leoontheearth/php:8.2 -f Dockerfile-PHP82 .
docker build --rm -t leoontheearth/php:7.4 -f Dockerfile-PHP74 .
docker build --rm -t leoontheearth/php:5.6 -f Dockerfile-PHP56 .
```

```shell
# Run image
docker run -t -i --rm leoontheearth/php:8.4 sh
docker run -t -i --rm leoontheearth/php:8.3 sh
docker run -t -i --rm leoontheearth/php:8.2 sh
docker run -t -i --rm leoontheearth/php:7.4 sh
docker run -t -i --rm leoontheearth/php:5.6 sh
```
