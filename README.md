# Centro multimedia emby

[![Docker #web-neytor](https://https://hub.docker.com/r/neytor/emby-neytor)](https://www.neytor.com)


# Referencia rápida

-	**Emby y el mundo de la multimedia**:  
	[Sitio oficial de Emby](https://emby.media/download.html)
  
# ¿Qué es  emby?

Emby es un centro de multimedia multiplataforma que nos permite visualizar contenido desde cualquier tipo de dispositivo vía Web, App o DLNA.

Emby una manera diferente de ver películas y series
11 junio, 2018 Armando Felipe Fuentes Denis Aplicaciones, Software Libre 13

El servidor de Emby convierte y envía automáticamente los vídeos a cualquier dispositivo, cuenta con canales de vídeo en directo, permite sincronizar librerías con los clientes móviles, la organización está muy cuidada para ser sencilla de ver y entender, cuenta con controles parentales, servidor DLNA para reproducir el contenido multimedia, compatible con Chromecast, pip.

> [wikipedia.org/wiki/Emby](https://en.wikipedia.org/wiki/Emby)

![logo](https://upload.wikimedia.org/wikipedia/commons/c/c5/Emby-logo.png)

# ¿Cómo usar esta imagen?

## En tu consola inicia la imagen por el puerto 8096

```console
$ docker run  --name streaming -d -p 80:8096 -v metadata:/var/lib/emby/ streaming
```

## Compartir tu multimedia al contenedor

```console
$ docker run  --name streamingfull -d -p 80:8096 -v $PWD/mimultimedia:/multimedia/ -v metadata:/var/lib/emby/ streaming
```
## Te invito a visitar mi web
Puedes ver nuevos eventos en [https://neytor.com/](https://www.neytor.com).
