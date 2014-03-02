(defun ! (n)
  (if (<= n 1)
    1
    (* n (! (1- n)))))

(defun combin (n r)
  (if (> r n)
    0
    (/ (! n) (* (! r) (! (- n r))))))

(defmacro e53 (n)
  `(loop for i from 1 to ,n
        sum (loop for j from 1 to i
              count (> (combin i j) 1000000))))
