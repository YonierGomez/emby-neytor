# Centro multimedia emby

[![Build Status](https://neytor.com)]

-	[Automated `update.sh` and `push.sh`:  
	![build status badge](https://doi-janky.infosiftr.net/job/docs/job/update/badge/icon)](https://neytor.com)

# Referencia rápida

-	**Where to get help**:  
	[Sitio oficial de Emby](https://emby.media/download.html)
  
# ¿Qué es  emby?

Emby es un centro de multimedia multiplataforma que nos permite visualizar contenido desde cualquier tipo de dispositivo vía Web, App o DLNA.

Emby una manera diferente de ver películas y series
11 junio, 2018 Armando Felipe Fuentes Denis Aplicaciones, Software Libre 13

El servidor de Emby convierte y envía automáticamente los vídeos a cualquier dispositivo, cuenta con canales de vídeo en directo, permite sincronizar librerías con los clientes móviles, la organización está muy cuidada para ser sencilla de ver y entender, cuenta con controles parentales, servidor DLNA para reproducir el contenido multimedia, compatible con Chromecast, pip.

> [wikipedia.org/wiki/Emby](https://en.wikipedia.org/wiki/Emby)

![logo](https://goo.gl/images/F2VGkj)

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
