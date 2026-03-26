- =====================================

Autor: Estrada Rodriguez Melani

Materia: Lenguajes de Interfaz 

Grupo: SC6C

Fecha: 26/ Marzo /2026

Descripción: Practicas de Microbit. 

- =====================================

# MicrobitEVALpython 🧩
Antes de empezar a mostrar las practicas realizadas, se necesita saber que Micro bit es una pequeña tarjeta programable para crear diferentes usos con ella, por su amplio uso.

Este contiene sensores, luces LED, botones, radio, entre otras cosas. Al ser fácil de programar lo hace ideal para principiantes y personas que quieren empezar a aprender.


## 1. Practica para agarrar confianza ⚙️
En la primera practica, se hizo el código que viene por defecto y se empezó a buscar entre los códigos de referencia para aprender más, en los primeros códigos se busco practicar con las diferentes melodías y códigos que se me iba encontrando.
> Muestra un corazón y un saludo para después poner la canción de NYAN.


https://github.com/user-attachments/assets/04823373-e444-4155-af28-5a49710f83ad

![WhatsApp Image 2026-03-25 at 9 56 23 PM](https://github.com/user-attachments/assets/5bf086b5-fa64-4d2b-a388-0b41a88d1582)

*Código realizado:*
```codigo
# Imports go at the top
from microbit import *
import music

# Code in a 'while True:' loop repeats forever
while True:
     display.show(Image.HEART)
     sleep(1000)
     display.scroll('Hola')
     music.play(music.NYAN)
```

## 2. Uso de Sensores en Microbit 🧸
La segunda practica se necesito la utilización de los sensores, para realizarla se utilizo [makecode.microbit](https://makecode.microbit.org/#) para buscar ideas y se realizo la del hámster mascota, esta mascota si la agitas se pone triste y si tocas la carita se pone feliz.

> Video de como se veía el hámster mascota y sus interacciones.

https://github.com/user-attachments/assets/54442048-fb37-4876-9ef2-960338921d27

*Código realizado:*

```micro:bit
# Imports go at the top
from microbit import *


# Code in a 'while True:' loop repeats forever
import music

while True:
    if pin_logo.is_touched():
        display.show(Image.HAPPY)
        music.play(music.JUMP_UP)
        display.show(Image.ASLEEP)
    
    if accelerometer.was_gesture('shake'):
        display.show(Image.SAD)
        music.play(music.WAWAWAWAA)
        display.show(Image.ASLEEP)
    
    sleep(100)
```


## 3. Uso de Radio 900 MHz 👾
En esta practica no hubo muchos problemas, con los códigos de ejemplo de la plataforma donde se realizo, en este caso [python.microbit](https://python.microbit.org/v/3/reference) solo que en la parte "Grupo" de la radio se cambio de 23 a 20, para que el trabajo de los demás compañeros no interfiriera en la señal.

> Por medio de la radio se envía la señal al receptor, mensaje: "Hola", en el video se muestra la llegada del mensaje.

https://github.com/user-attachments/assets/df108c69-5777-483a-b5ad-5d3c1cde4eb8

*Código realizado (Receptor):*
```micro:bit
from microbit import *
import radio

radio.config(group=20, power = 5)

radio.on()

while True:
    message = radio.receive()
    if message:
        display.scroll(message)
```

*Código realizado (Emisor):*
```micro:bit
# Imports go at the top
from microbit import *
import radio


# Code in a 'while True:' loop repeats forever
radio.config(group=20, power=5)
radio.on()
while True:
    if button_a.was_pressed() or button_b.was_pressed():
        radio.send('Hola')
```
---
### Aprendido

Con lo anterior visto se aprendió bastante del lenguaje Python y como se puede utilizar en un micro bit, estas practicas fueron muy entretenidas y enriquecedoras. 

las practicas iban aumentando el nivel con el pasar de los días y se podían lograr diferentes resultados con los códigos, si necesitaba inspiración solo debía ir al apartado de ideas o en makecode.microbit, la practica que mas me gusto fue la del hámster mascota, pero las demás igualmente fueron entretenidas.
