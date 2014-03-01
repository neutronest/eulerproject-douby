(defun collatz (n)
  (cond 
    ((= n 1) (list 1))
    ((evenp n) (cons n (collatz (/ n 2))))
    ((oddp n) (cons n (collatz (1+ (* 3 n)))))))

(defmacro e14 (n)
  `(loop for i from ,n downto 2
        with x = i
        if (< (length (collatz x)) (length (collatz i)))
        do (setq x i)
        finally (return x)))
