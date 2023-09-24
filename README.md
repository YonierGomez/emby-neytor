Centro multimedia emby
======================

# Referencia rápida

-	**¿Qué es Emby?**
-	**¿Objetivo de la imagen?**
-	**¿Cómo usar esta imagen?**
-	**Login por defecto**
-	**Arquitectura soportada**
-	**Volumenes**
-	**Uso avanzado - persistencia**
-	**Rendimiento optimizado**
-	**[Sitio oficial de Emby](https://emby.media/)**
  
# ¿Qué es  emby?

Emby es un centro de multimedia multiplataforma que nos permite visualizar contenido desde cualquier tipo de dispositivo vía Web, App o DLNA.


Los usuarios pueden conectarse al servidor desde un cliente compatible, disponible en una amplia variedad de plataformas, incluidas HTML5, plataformas móviles como Android e iOS , dispositivos de transmisión tales como Roku , Amazon Fire TV , Chromecast y Apple TV , plataformas de TV inteligentes como LG Smart TV y Samsung Smart TV y consolas de videojuegos como la Xbox 360 y Xbox One

> [wikipedia.org/wiki/Emby](https://en.wikipedia.org/wiki/Emby)

![logo](https://image.winudf.com/v2/image/Y29tLmd1aWRlLmd1aWRlZm9yZW1ieXhfaWNvbl8xNTEyNTUxNzcyXzA2NA/icon.png?w=170&fakeurl=1&type=.png)

## ¿Objetivo de la imagen?

Nuestro servidor Emby permitirá crear un centro multimedia compatible con sistemas tales como WIndows, Linux, MacOS y arquitecturas basadas en ARM con tan solo descargar la imagen con el tag `:arm`

## ¿Cómo usar esta imagen?

Puede hacer uso de docker cli o docker compose, crea un container y exponer el puerto 8081 para tu browser o el puerto de su preferencia, ejemplo de acceso http://localhost:8081/ o http://laipdemimaquina:8081/

### Login por defecto

Para acceder a su recurso compartido siga la sintaxis descrita en la tabla:

| URL acceso            | Usuario por defecto | Contraseña por defecto |
| --------------------- | ------------------- | ---------------------- |
| `http://localhost:8081/` | `Se crea en el login`            | `Se crea en el login`               |

### docker-compose (recomendado)

```yaml
---
version: '3'
services:
  embyneytor:
    image: neytor/emby-neytor
    restart: always
    ports:
      - 8081:8096
    networks:
      - mynet
    volumes:
      - metadata:/var/lib/emby
  networks:
    mynet:
  volumes:
    metadata:
...
```

### docker cli

```console
$ docker run  --name streaming -d -p 8081:8096 -v metadata:/var/lib/emby/ neytor/emby-neytor
```

## Arquitectura soportada

La arquitectura soportada es la siguiente:

| Arquitectura | Disponible | Tag descarga                 |
| ------------ | ---------- | ---------------------------- |
| x86-64       | ✅          | docker pull neytor/emby-neytor    |
| arm64        | ✅          | docker pull neytor/emby-neytor:arm


## Volumenes

Puedes pasar las siguientes variables al crear el contenedor

| Variable      | Función                                                      |
| ------------- | ------------------------------------------------------------ |
| `-v metadata:/var/lib/emby/`     | Almcenamiento persistente para Emby Server.       |
| `-v videos:/videos` | Define el directorio donde almacenaras tus videos, peliculas, series. |


## Uso avanzado - persistencia

### docker cli - Compartir tu multimedia al contenedor

```console
$ docker run  --name streamingfull -d -p 8081:8096 --restart unless-stopped -v $PWD/mimultimedia:/multimedia/ -v metadata:/var/lib/emby/ neytor/emby-neytor
```
### docker-compose (recomendado) - Compartir tu multimedia al contenedor

```yaml
---
version: '3'
services:
  embyneytor:
    image: neytor/emby-neytor
    restart: always
    ports:
      - 8081:8096
    networks:
      - mynet
    volumes:
      - metadata:/var/lib/emby
      - videos:/videos
  networks:
    mynet:
  volumes:
    metadata:
    videos:
...
```

## Rendimiento optimizado

Si desea una mejor velocidad se recomienda utilizar la red `host`

[![Try in PWD](https://github.com/play-with-docker/stacks/raw/cff22438cb4195ace27f9b15784bbb497047afa7/assets/images/button.png)](http://play-with-docker.com?stack=https://raw.githubusercontent.com/docker-library/docs/db214ae34137ab29c7574f5fbe01bc4eaea6da7e/wordpress/stack.yml)

## Te invito a visitar mi web
Puedes ver nuevos eventos en [https://www.yonier.com/](https://www.yonier.com)
