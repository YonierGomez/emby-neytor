# Centro multimedia emby

[![Build Status](https://neytor.com)](https://hub.docker.com/r/neytor/emby-neytor)

# ¿Qué es  emby?

Emby es un centro de multimedia multiplataforma que nos permite visualizar contenido desde cualquier tipo de dispositivo vía Web, App o DLNA.

Emby una manera diferente de ver películas y series
11 junio, 2018 Armando Felipe Fuentes Denis Aplicaciones, Software Libre 13

El servidor de Emby convierte y envía automáticamente los vídeos a cualquier dispositivo, cuenta con canales de vídeo en directo, permite sincronizar librerías con los clientes móviles, la organización está muy cuidada para ser sencilla de ver y entender, cuenta con controles parentales, servidor DLNA para reproducir el contenido multimedia, compatible con Chromecast, pip.

> [wikipedia.org/wiki/Emby](https://en.wikipedia.org/wiki/Emby)

![logo](https://www.google.com/url?sa=i&source=images&cd=&cad=rja&uact=8&ved=2ahUKEwjj7NK-w57hAhVQw1kKHXK0DREQjRx6BAgBEAU&url=https%3A%2F%2Femby.media%2F&psig=AOvVaw11z-pXaLr6FQKt8cDErGWu&ust=1553645714479128)

# ¿Cómo usar esta imagen?

## En tu consola inicia la imagen por el puerto 8096

```console
$ docker run  --name streaming -d -p 80:8096 -v metadata:/var/lib/emby/ streaming
```

