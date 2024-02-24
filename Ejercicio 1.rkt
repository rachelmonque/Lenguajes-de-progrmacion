
; Define una función llamada calcular-monto que toma tres argumentos: Cap (capital), I (tasa de interés) y N (número de periodos)
(define (calcular-monto Cap I N)
  
  ; Define una función interna llamada calcular-monto-aux que toma cuatro argumentos: Cap, I, N y resultado
  (define (calcular-monto-aux Cap I N resultado)
    
    ; Utiliza la expresión condicional (if) para verificar si N es igual a 0
    (if (= N 0)
        
        ; Si N es 0, devuelve el resultado actual
        resultado
        
        ; Si N no es 0, ejecuta el bloque else
        (calcular-monto-aux Cap I (- N 1) (* resultado (+ 1 I)))))
  
  ; Llama a la función auxiliar calcular-monto-aux con los argumentos iniciales
  (calcular-monto-aux Cap I N Cap))


; Ejemplos de uso de la función calcular-monto

; Calcula el monto con un capital de 2000, tasa de interés del 0.10%, y 0 años
(displayln (calcular-monto 2000 0.10 0)) ; Debería imprimir 2000

; Calcula el monto con un capital de 2000, tasa de interés del 0.10%, y 1 años
(displayln (calcular-monto 2000 0.10 1)) ; Debería imprimir 2200.0 (2000 * (1 + 0.10))

; Calcula el monto con un capital de 2000, tasa de interés del 0.10%, y 2 años
(displayln (calcular-monto 2000 0.10 2)) ; Debería imprimir 2420.0 (2000 * (1 + 0.10) * (1 + 0.10))

; Calcula el monto con un capital de 2000, tasa de interés del 0.10%, y 3 años
(displayln (calcular-monto 2000 0.10 3)) ; Debería imprimir 2662.0 (2000 * (1 + 0.10) * (1 + 0.10) * (1 + 0.10))