; Define una función llamada merge que toma dos listas ordenadas como argumentos
(define (merge lista1 lista2)
  
  ; Utiliza la expresión cond para evaluar múltiples condiciones en orden
  (cond
    
    ; Si la lista1 es vacía, devuelve la lista2
    ((null? lista1) lista2)
    
    ; Si la lista2 es vacía, devuelve la lista1
    ((null? lista2) lista1)
    
    ; Si ninguna de las condiciones anteriores es verdadera, ejecuta el bloque else
    (else
     ; Utiliza una expresión condicional (if) para comparar los primeros elementos de lista1 y lista2
     (if (< (car lista1) (car lista2))
         
         ; Si el primer elemento de lista1 es menor, consíguelo a la lista resultante y
         ; Luego, llama recursivamente a merge con el resto de lista1 y lista2
         (cons (car lista1) (merge (cdr lista1) lista2))
         
         ; Si el primer elemento de lista2 es menor o igual, consíguelo a la lista resultante y
         ; Luego, llama recursivamente a merge con lista1 y el resto de lista2
         (cons (car lista2) (merge lista1 (cdr lista2)))))))


; Ejemplos de uso de la función merge

; Fusiona las listas ordenadas '(5 6 7)' y '(1 2 3 4)'
(displayln (merge '(5 6 7) '(1 2 3 4))) ; Debería imprimir '(1 2 3 4 5 6 7)

; Fusiona las listas ordenadas '(3 4 5)' y '(3 4 5 6)'
(displayln (merge '(3 4 5) '(3 4 5 6))) ; Debería imprimir '(3 3 4 4 5 5 6)