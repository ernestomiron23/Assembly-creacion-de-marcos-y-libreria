INCLUDE retardo.lib
.model tiny ;        directiva de modelo de programación
.stack ;             directiva de asignación de segmento de stack
.data ;              directiva de asignación de segmento de datos
TEXTO       DB       "HOLA! TESOEM $"
.code ;              directiva de asignación de segmento de datos
start:
begin PROC FAR;      inicio de PROCEDIMIENTO BEGIN
 
         MOV AH,00H; PETICION PARA HABILITAR MODO VIDEO
         MOV AL,0EH; 640 X 200 EGA, VGA
         INT 10H

         MOV AH, 0BH ;Establece la paleta de 16 colores
         MOV BX, 000AH ;BH=Page=0, BL=Color Verde claro
         INT 10H ;Para el fondo de pantalla

         retardo ;Macro
 
         MOV AH,00H; REGRESAMOS AL MODO TEXTO
         MOV AL,03H
         INT 10H

         MOV AX,4C00H ; vuelta al DOS
         INT 21H 

BEGIN ENDP ;FIN DE PROCEDIMIENTO
      END start ;FIN DE PROGRAMA