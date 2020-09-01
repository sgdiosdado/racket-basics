#lang racket

; 1. Función clima: Recibe un número que representa la temperatura en centígrados y regresa un símbolo
(define (clima grados)
  (cond [(<= grados 0 ) printf 'Congelado]
        [(<= grados 10) printf 'Helado]
        [(<= grados 20) printf 'Frío]
        [(<= grados 30) printf 'Normal]
        [(<= grados 40) printf 'Caliente]
        [(> grados 40) printf 'Hirviendo]
   ))

; 4. Función sumarpar: recibe 4 argumentos numéricos y regrese la suma de los argumentos pares
(define (sumarpar a b c d)
  (apply + (filter even? (list a b c d)))
)