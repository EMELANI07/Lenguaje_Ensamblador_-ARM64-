# Elabore practica en el emulador 8 bit Assembler ( emulador web )

👤 **Información General**

Nombre del estudiante: Estrada Rodriguez Melani

Grupo / Materia: SC6C / Lenguajes de Interfaz

Docente: Rene Solis Reyes

Fecha de entrega: 26 de Febrero de 2026

---

En esta Practica se le pidio a la IA (en este caso ChatGPT): Dame un ejercicio para practicar 8 bit assembly de Troy breadboard 8 bit computer.
Con la practica que se nos proporciono pude completarlo, esto eslo que me pidio y como pude entender el entorno de Desarrollo 8-bit.

---

**GPT:**

¡Excelente! 💻✨ Aquí tienes un ejercicio diseñado especialmente para practicar con Troy’s Breadboard 8-bit Computer, enfocado en:

Uso de registros

Banderas (FLAGS)

Saltos condicionales

Aritmética de 8 bits

Control de overflow 🚨

🧠 Ejercicio: Suma Acumulativa hasta Overflow
🎯 Objetivo

Crear un programa que:

Comience en 1

Sume números consecutivos:
```codigo
1 + 2 + 3 + 4 + 5 + ...
```


Muestre el resultado en el registro ```Rd```

Se detenga cuando ocurra overflow

Detecte el overflow usando la bandera ```O```

📋 Requisitos Técnicos

Usa ```Ra``` como acumulador de la suma

Usa ```Rb``` como el número que se va sumando

Usa ```Rd``` para mostrar el resultado

Usa ```jo``` para detectar overflow

Finaliza con ```hlt```

🧩 Ejemplo de estructura esperada (sin solución completa)
```asm
.begin:
    ; Inicialización

.loop:
    ; Sumar siguiente número
    
    ; Verificar overflow
    
    ; Mostrar resultado
    
    ; Incrementar contador
    
    ; Repetir

.end:
    hlt
```
💡 Pistas importantes

* Recuerda que en esta arquitectura:

  * ```add Ra``` significa: ```Ra = Ra + Rb```

* El overflow ocurre cuando el resultado excede 127 o baja de -128 (en signed 8-bit)

* jo etiqueta salta si la bandera O está activada

⚠️ No confundas Carry (C) con Overflow (O).
Carry es para aritmética sin signo. Overflow es para signed.

🏆 BONUS (Nivel Avanzado)

Modifica el programa para que:

* Cuando ocurra overflow:

   * Limpie todos los registros (```clra```)

   * Reinicie automáticamente

Si quieres, puedes escribir tu solución aquí y la revisamos paso a paso 🛠️💬
Estoy listo para ayudarte a depurarla y mejorarla 🚀

---

🎯 **Ejercicio Propuesto:** Suma Acumulativa hasta Overflow

Comience en 1

Sume números consecutivos:
```codigo
1 + 2 + 3 + 4 + 5 + ...
```
**Suma 0 + 0 = 0**

<img width="670" height="513" alt="image" src="https://github.com/user-attachments/assets/1ad0d7cd-77b1-4f5d-accf-64ee7da85881" />

**Suma 0 + 1 = 1**

<img width="679" height="533" alt="image" src="https://github.com/user-attachments/assets/bd8a6ab1-4eb0-4b63-9293-52680db718c8" />

**Suma 1 + 2 = 3**

<img width="672" height="536" alt="image" src="https://github.com/user-attachments/assets/8fabbd15-6e0e-47e4-ad25-cae132cb373b" />

**Suma 3 + 3 = 6**

<img width="679" height="536" alt="image" src="https://github.com/user-attachments/assets/f0676b37-126c-4128-8dfb-14703b1a7b94" />

**Suma 6 + 4 = 10**

<img width="674" height="535" alt="image" src="https://github.com/user-attachments/assets/9c971275-1f95-4902-bcc4-334ef790e48f" />

**Suma 10 + 5 = 15**

<img width="678" height="536" alt="image" src="https://github.com/user-attachments/assets/c92a66d2-ea5f-4ce2-bed3-ad65f8ed40eb" />

**Suma 15 + 6 = 21**

<img width="675" height="537" alt="image" src="https://github.com/user-attachments/assets/7a82efda-4afd-4e6a-a87e-cc9a8a034164" />

**Suma 21 + 7 = 28**

<img width="675" height="539" alt="image" src="https://github.com/user-attachments/assets/d0609e09-4a88-43b5-94a0-b52bcc4561e2" />

**Suma 28 + 8 = 36**

<img width="677" height="540" alt="image" src="https://github.com/user-attachments/assets/dae15f50-4058-405a-b667-3cf062e72eaa" />

**Suma 36 + 9 = 45**

<img width="679" height="538" alt="image" src="https://github.com/user-attachments/assets/fbbec612-6d4c-42a3-83f7-ccd219f8d7f3" />

**Suma 45 + 10 = 55**

<img width="675" height="535" alt="image" src="https://github.com/user-attachments/assets/88800d18-6f46-4b25-9993-3d7a9e24473b" />

La secuencia continua hasta el 255, ya que tiene poco alcance de memoria para no saturarlo.

<img width="678" height="530" alt="image" src="https://github.com/user-attachments/assets/a8f65ab5-c445-4ba0-a591-d74494faa0cc" /> 








