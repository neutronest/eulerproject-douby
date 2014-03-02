(defmacro  sum-digit (str)
  `(loop for c across ,str
        sum (parse-integer (princ-to-string c))))

(defun ! (n)
  (if (= n 1)
    1
    (* n (! (1- n)))))

(defmacro e18 (n)
  `(sum-digit (write-to-string (! ,n))))
