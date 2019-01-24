# VueJS app with docker-compose

A base structure to create a VueJS development environment.

## Requirements

- [Docker](https://www.docker.com/)
- [Docker-compose](https://docs.docker.com/compose/)

## Using CLI to development.

You can up a CLI container to admin all you need on the Vue app. To run CLI use:
```sh
$ docker-compose up -d cli
```

The CLI responds to http://localhost:8000.

## Review on production mode.

To init on production mode, you need use you distribution files after build you project on CLI.

To review you app on a web server, you can add some of next alternatives to your services on `docker-compose.yml` file.

### NGINX web server.

```yml
web:
    image: nginx
    volumes:
      - ./app/{your app name}/dist:/usr/share/nginx/html
    ports:
      - 80:80
      - 443:443
```

### Apache web server.

```yml
web:
    image: httpd
    volumes:
      - ./app/{your app name}/dist:/usr/local/apache2/htdocs
    ports:
      - 80:80
      - 443:443
```

### Running web server

After add some web server configuration, you need build and up your service.

```sh
$ docker-compose up -d web
```

## Author

Josue Meza Peña, contacto@josuemeza.com

## License

**VueJS app with docker-compose** is available under the MIT license. See the [LICENSE](LICENSE) file for more info.