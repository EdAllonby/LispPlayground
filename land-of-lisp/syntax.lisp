(defparameter *my-param* 5)

;; lisp is case-insensitive
(defun are-equal ()
  (eq *my-param* *mY-pArAm*))

(defun numbers ()
  (+ 2.12345 ))

(defun large-number-calc ()
  (expt 53 53))

(defun rational-example ()
  (/ 4 6))

(defun string-example ()
  (princ "Hello World!"))

;; from right to left
;; a - get the head of list - (1 2)
;; d - get the tail of the list - (2)
;; a - get the header of the list, or now, the single value - 2
(defun list-example ()
  (cadar '((1 2) 3 4)))

;; make a list of 2 and 3 - (2 3)
;; add 1 to the head - (1 (2 3)) / (1 2 3)
;; get the head of the list using car - 1
(defun cons-example ()
  (car (cons 1 (cons 2 3))))
