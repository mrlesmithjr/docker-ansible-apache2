Repo Info
=========
Build [Docker] image for [Apache2] provisioned via [Ansible]

Building
--------
If you need to modify any configurations you will need to rebuild the image:
```
docker build -t apache2 .
```
And then spin the image up:
```
docker run -d -p 80:80 -p 443:443 apache2
```

Consuming
---------
```
docker run -d -p 80:80 -p 443:443 mrlesmithjr/apache2
```
You can also enable PHP support by spinning up as below:
```
docker run -d -e "APACHE2_ENABLE_PHP=true" -p 80:80 -p 443:443 mrlesmithjr/apache2
```

Spin up using `docker-compose`:
```
docker-compose up -d
```

`docker-compose.yml`
```
version: '2'
services:
  apache2:
    environment:
      APACHE2_ENABLE_PHP: "true"
    image: "mrlesmithjr/apache2"
    ports:
      - "80:80"
      - "443:443"
    restart: "always"
    volumes:
      - "apache2_www:/var/www"

volumes:
  apache2_www:
```

License
-------

BSD

Author Information
------------------

Larry Smith Jr.
- [@mrlesmithjr]
- [everythingshouldbevirtual.com]
- [mrlesmithjr@gmail.com]


[Ansible]: <https://www.ansible.com/>
[Apache2]: <https://httpd.apache.org/>
[Docker]: <https://www.docker.com>
[@mrlesmithjr]: <https://twitter.com/mrlesmithjr>
[everythingshouldbevirtual.com]: <http://everythingshouldbevirtual.com>
[mrlesmithjr@gmail.com]: <mailto:mrlesmithjr@gmail.com>
