;1.1
10 ; 10
(+ 5 3 4) ; 12
(- 9 1) ; 8
(/ 6 2) ; 3
(+ (* 2 4) (- 4 6) ; 6
(define a 3) ; a
(define b (+ a 1)) ; b
(+ a b (* a b)) ; 19
(= a b) ; false

(if (and (> b a) (< b (* a b)))
    b
    a) ; 4

(cond ((= a 4) 6)
      ((= b 4) (+ 6 7 a))
      (else 25)) ; 16

(+ 2 (if (> b a) b a)) ; 6

(* (cond ((> a b) a)
	 ((< a b) b)
	 (else -1))
   (+ a 1)) ; 16

;1.2
(/ (+ 5 4 (- 2 (- 3 (+ 6 (/ 4 5))))) (* 3 (- 6 2) (- 2 7)))

;1.3
(define (square x) (* x x))

(define (squareSum x y) (+ (square x) (square y)))

(define (sumOfLargestTwoSquared x y z)
  (cond ((and (>= (+ x y) (+ y z)) (>= (+ x y) (+ x z))) (squareSum x y))
        ((and (>= (+ x z) (+ y z)) (>= (+ x z) (+ x y))) (sqaureSum x z))
	(else (squareSum y z))
  )
)


;1.4
we choose the operator based off the value of b, and then evaluate the resulting expression.
if b is greater than 0, we use the + operator, otherwise the - operator. this ensures that a "positive" value of b is always "added"

;1.5
under applicative-order evaluation, the program will hang, as p is called recursively with no base case.
under normal-order evaluation, because p is never evaluated because the if special form evaluates to -, the program will return 0 with no issues

;1.6









