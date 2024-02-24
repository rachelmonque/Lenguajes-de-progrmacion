; Define una función llamada subconjunto? que toma dos conjuntos como argumentos
(define (subconjunto? conjunto1 conjunto2)
  
  ; Utiliza la expresión cond para evaluar múltiples condiciones en orden
  (cond
    
    ; Si conjunto1 es vacío, entonces es un subconjunto y devuelve #t
    ((null? conjunto1) #t)
    
    ; Si el primer elemento de conjunto1 está presente en conjunto2
    ; Luego, llamamos recursivamente a subconjunto? con el resto de conjunto1 y conjunto2
    ((member (car conjunto1) conjunto2)
     (subconjunto? (cdr conjunto1) conjunto2))
    
    ; Si ninguna de las condiciones anteriores es verdadera, entonces conjunto1 no es un subconjunto
    (else #f)))


; Ejemplos de uso de la función subconjunto?

; Verifica si el conjunto vacío es un subconjunto de '(a b c d e f)
(displayln (subconjunto? '() '(a b c d e f))) ; Debería imprimir #t

; Verifica si '(a b c) es un subconjunto de '(a b c d e f)
(displayln (subconjunto? '(a b c) '(a b c d e f))) ; Debería imprimir #t

; Verifica si '(a b x) es un subconjunto de '(a b c d e f)
(displayln (subconjunto? '(a b x) '(a b c d e f))) ; Debería imprimir #f