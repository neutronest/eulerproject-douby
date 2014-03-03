(defmacro  sum-digit (str)
  `(loop for c across ,str
        sum (parse-integer (princ-to-string c))))

(defun e56 (n)
  (loop for i from (1- n) downto 1
       maximizing (loop for j from (1- n) downto 1 maximizing
                        (sum-digit (write-to-string (expt i j)))
                        into m
                        finally (return m))
       into result
       finally (return result)))
