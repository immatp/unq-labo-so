# unq-labo-so

## Objetivo

El presente repositorio contiene tres laboratorios de ejemplos listos para ser ejecutados, mediante lo cuales se puede probar el comportamiento de la herramienta Masscan

## Requisitos

Para ejecutar este laboratorio es necesario tener Docker y Docker compose instalado

* Instalacion Docker: https://docs.docker.com/engine/install/
* Instalacion Docker Compose: https://docs.docker.com/compose/install/


## Funcionamiento

Aunque seria posible ejecutar Masscan en un equipo por si solo, los resultados de la búsqueda realizada por la herramienta puedan variar entre diferentes redes y equipos. Para evitar diferencias se organizó el laboratorio para ser ejecutado mediante Docker, Docker Compose y Bash


## Ejecución

En la carpeta scripts/runners se encuentran los scripts de bash:
* run_basic_nginx.sh
* run_small_network.sh
* run_big_network.sh

Cada uno de los scripts plantea un escenario diferente para realizar un escaneo con Masscan.
     
|        Script        |   Servicios que ejecuta     |   Puertos expuestos en cada contenedor         |        
|  ------------------- | ---------------------------- | ---------------------------------------------- | 
| run_basic_nginx.sh   |  1 Nginx                    |   80 (Nginx)                                   |  
| run_small_network.sh |  1 Nginx - 1 FTP - 1 Telnet |   80 (Nginx) - 21 (FTP) - 23 (Telnet)          |  
| run_big_network.sh   |  1 Nginx - 3 FTP - 3 Telnet |   80 (Nginx) - 21 (FTP) - 23 (Telnet)          |  

Para iniciar cualquiera de los escenarios se debe posicionar en la raíz del repositorio y ejecutar

```bash
chmod u+x scripts/runners/NOMBRE_DEL_SCRIPT_A_EJECUTAR
./scripts/runners/NOMBRE_DEL_SCRIPT_A_EJECUTAR
```

Como STDOUT del servicio "masscan" de cada laboratorio se obtendrá el resultado del escaneo realizado por Masscan dentro de la red Docker asignada al laboratorio
