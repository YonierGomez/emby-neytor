Centro multimedia emby
======================

# Referencia rápida

-	**Emby y el mundo de la multimedia**:  
	[Sitio oficial de Emby](https://emby.media/)
  
# ¿Qué es  emby?

Emby es un centro de multimedia multiplataforma que nos permite visualizar contenido desde cualquier tipo de dispositivo vía Web, App o DLNA.


Los usuarios pueden conectarse al servidor desde un cliente compatible, disponible en una amplia variedad de plataformas, incluidas HTML5, plataformas móviles como Android e iOS , dispositivos de transmisión tales como Roku , Amazon Fire TV , Chromecast y Apple TV , plataformas de TV inteligentes como LG Smart TV y Samsung Smart TV y consolas de videojuegos como la Xbox 360 y Xbox One

> [wikipedia.org/wiki/Emby](https://en.wikipedia.org/wiki/Emby)

![logo](https://image.winudf.com/v2/image/Y29tLmd1aWRlLmd1aWRlZm9yZW1ieXhfaWNvbl8xNTEyNTUxNzcyXzA2NA/icon.png?w=170&fakeurl=1&type=.png)

# ¿Cómo usar esta imagen?

## En tu consola inicia la imagen por el puerto 8096

```console
$ docker run  --name streaming -d -p 80:8096 -v metadata:/var/lib/emby/ neytor/emby-neytor
```

## Compartir tu multimedia al contenedor

```console
$ docker run  --name streamingfull -d -p 80:8096 -v $PWD/mimultimedia:/multimedia/ -v metadata:/var/lib/emby/ neytor/emby-neytor
```
## ...Correr vía  [`docker-compose`](https://github.com/docker/compose)

```yaml
version: '3'

services:

  embyneytor:
    image: neytor/emby-neytor
    restart: always
    ports:
      - 80:8096
    networks:
      - mynet
    volumes:
      - metadata:/var/lib/emby
      
  networks:
    mynet:
  volumes:
    metadata:

```

[![Try in PWD](https://github.com/play-with-docker/stacks/raw/cff22438cb4195ace27f9b15784bbb497047afa7/assets/images/button.png)](http://play-with-docker.com?stack=https://raw.githubusercontent.com/docker-library/docs/db214ae34137ab29c7574f5fbe01bc4eaea6da7e/wordpress/stack.yml)

## Te invito a visitar mi web
Puedes ver nuevos eventos en [https://www.neytor.com/](https://www.neytor.com).
