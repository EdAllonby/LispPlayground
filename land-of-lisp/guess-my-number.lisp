;; Can also use defvar, which will not overwrite previous defined values
(defparameter *small* 1)
(defparameter *big* 100)

(defun guess-my-number ()
  (ash (+ *small* *big*) -1))

(defun smaller ()
  (setf *big* (1- (guess-my-number)))
  (guess-my-number))

(defun bigger ()
  (setf *small* (1+ (guess-my-number)))
  (guess-my-number))

(defun start-over ()
  (defparameter *small* 1)
  (defparameter *big* 100)
  (guess-my-number))

(defun local-var-example (&optional (c 0 cSupplied))
  (let ((a 5)
        (b 6))
    (PRINT cSupplied)
    (+ a (* b c))))

(defun local-fn-example ()
  (flet ((f (n)
           (+ n 10))
         (g (n)
           (- n 10)))
    (PRINT (f 5))
    (PRINT (g 5))))

;; This is similar to flet, but lets us reference functions in the 'let' list. Allows recursion.
(defun labels-example ()
  (labels ((f (n)
             (+ n 10))
           (g (n)
             (f n)))
    (PRINT (f 5))
    (PRINT (g 5))))
