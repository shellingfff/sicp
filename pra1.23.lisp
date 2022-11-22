(define (smallest-divisor n)
    (find-divisor n 2)
  )

(define (find-divisor n test-divisor)
    (cond ((> (square test-divisor) n) n)
          ((divide? test-divisor n) test-divisor)
          (else (find-divisor n (next test-divisor)))
      )
  )
(define (divide? a b)
    (= (remainder b a) 0)
  )
(define (square n)
    (* n n)
  )

(define (next x)
    (if (= x 2) 3
    (+ x 2)
      )
  )