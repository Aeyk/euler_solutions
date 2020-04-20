#lang racket
(define (mod-3? x)
  (= 0 (modulo x 3)))

(define (mod-5? x)
  (= 0 (modulo x 5)))

(define (mod-3-or-5? x)
  (or (mod-3? x) (mod-5? x)))

(println
 (apply + (filter mod-3-or-5?
		  (range 1 1000))))


