; Define una función llamada eliminar-elemento que toma una lista y un elemento como argumentos
(define (eliminar-elemento lista elemento)
  
  ; Utiliza la expresión condicional (if) para comprobar si el elemento está presente en la lista
  (if (member elemento lista) 
    
    ; Si el elemento está presente, utiliza map para crear una nueva lista que copia cada elemento
    ; Usa filter para excluir el elemento deseado de la nueva lista
    (map (lambda (x) x) 
         (filter (lambda (x) (not (equal? x elemento))) lista))
    
    ; Si el elemento no está presente, simplemente devuelve la lista original
    lista))


; Ejemplo de uso de la función eliminar-elemento con diferentes listas y elementos

; Elimina el elemento 3 de la lista '(1 2 3 4 5)
(displayln (eliminar-elemento '(1 2 3 4 5) 3)) ; Debería imprimir (1 2 4 5)

; El elemento 'x no está presente en la lista '(a b c d e)
(displayln (eliminar-elemento '(a b c d e) 'x)) ; Debería imprimir (a b c d e)

; Elimina el elemento 'b de la lista '(a b c d e)
(displayln (eliminar-elemento '(a b c d e) 'b)) ; Debería imprimir (a c d e)