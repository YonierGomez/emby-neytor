Conectate vía ssh y gestiona servicios con systemd
==================================================

# Referencia rápida

-	**Emby y el mundo de la multimedia**:  
	[Sitio oficial de Neytor](https://www.neytor.com/)
  
# ¿Qué es  ssh?

SSH o Secure Shell, es un protocolo de administración remota que permite a los usuarios controlar y modificar sus servidores remotos a través de Internet. 

> [wikipedia.org/wiki/Secure_Shell)(https://es.wikipedia.org/wiki/Secure_Shell)

![logo](https://miro.medium.com/max/544/0*mqE9-fHbs78SweX_.png)


# ¿Qué es systemd?

systemd es un conjunto de demonios o daemons de administración de sistema, bibliotecas y herramientas diseñados como una plataforma de administración y configuración central para interactuar con el núcleo del Sistema operativo GNU/Linux. 

> [wikipedia.org/wiki/Systemd(https://es.wikipedia.org/wiki/Systemd)


# ¿Cómo usar esta imagen?

## Crear container y exponer el puerto 22

```console
$ docker run --name sshsystemd -d -p 22:22 neytor/ssh_systemd
```
## Crear container y exponer el puerto 2222

```console
$ docker run  --name ssh -d -p 2222:22 neytor/ssh_systemd
```
## ¿Cómo consultar la ip de mi contenedor?

```console
$ docker inspec sshsystemd
```

## Te invito a visitar mi web
Puedes ver nuevos eventos en [https://www.neytor.com/](https://www.neytor.com).
