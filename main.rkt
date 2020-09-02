#lang racket

; 1. Función clima: Recibe un número que representa la temperatura en centígrados y regresa un símbolo
(define (clima grados)
  (cond [(<= grados 0 ) 'Congelado]
        [(<= grados 10) 'Helado]
        [(<= grados 20) 'Frío]
        [(<= grados 30) 'Normal]
        [(<= grados 40) 'Caliente]
        [(> grados 40) 'Hirviendo]
   ))

; 2. Función cuadrante: Recibe dos argumentos numéricos representando 'x' y 'y' y regresa el cuadrante del plano cartesiando en el que se encuentra
(define (cuadrante x y)
  (cond [(and(zero? x) (zero? y) 'origen)]
        [(and(positive? x)(positive? y)  'primer_cuadrante)]
        [(and(negative? x)(positive? y) 'segundo_cuadrante)]
        [(and(negative? x)(negative? y)  'tercer_cuadrante)]
        [(and(positive? x)(negative? y)  'cuarto_cuadrante)]
  )
)

; 3. Función ordena: Recibe 3 argumentos numéricos y los despliega ordenados de menor a mayor

(define (ordena a b c)
  (printf "~s\n" (sort (list a b c) <))
)

; 4. Función sumarpar: recibe 4 argumentos numéricos y regrese la suma de los argumentos pares
(define (sumarpar a b c d)
  (apply + (filter even? (list a b c d)))
)
