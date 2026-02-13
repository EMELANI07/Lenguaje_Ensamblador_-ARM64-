// =====================================
// Autor: Estrada Rodriguez Melani
// Materia: Lenguajes de Interfaz 
// Grupo: SC6C
// Fecha: 12/Febrero/26
// Arquitectura: ARM64 (AArch64)
// Descripción: Código con los programas Termux y tailscare, 
// código con nano, compile manualmente y ejecute un programa funcional en Linux ARM64.
// =====================================

// -------------------------------------
// Solución en alto nivel (Pseudocódigo)
// 1. Instalar e iniciar Termux
// 2. Instalar paquete openssh
// 3. Crear una contraseña
// 4. Iniciar servicio sshd
// 5. Obtener dirección IP del celular
// 6. Ir a la computadora con Windows
// 7. Instalar cliente OpenSSH si no está instalado
// 8. Ejecutar comando:
//      ssh -p 8022 usuario@IP (Para la conexión)
// 9. Ingresar la contraseña creada
// 10. Si autenticación es correcta:
//        Permitir ejecución remota de comandos y instalar asciinema para la grabación
//     Si no:
//        Mostrar error de autenticación
// 11. Finalizar conexión con comando "exit" y finalizar asciinema
// 12. Programa completado
// -------------------------------------

//Código Ensamblador Comentado//

.section .text
.global _start

_start:                               // Indica que se inicia y el control se manda aqui 
                                      // (En el caso de la practica el control se manda a la computadora).
    // Inicializar registros
    mov x0, #0          // Registro x0 usado para código de salida

    // Lógica principal del programa
    // (describir qué hace este bloque)

    // Finalizar el programa
    mov x8, #93         // syscall: exit
    svc #0
