(defmacro  sum-digit (str)
  `(loop for c across ,str
        sum (parse-integer (princ-to-string c))))

(defmacro e16 (n)
  `(sum-digit (write-to-string (expt 2 ,n))))
