(defun palindrome-p (x)
  (equal (write-to-string x) (reverse (write-to-string x))))

(defmacro e4 (mx mn)
  `(loop for i from ,mx downto ,mn 
         maximize
         (do* ((j ,mx (1- j))
              (x (* i j) (* i j)))
           ((< j ,mn) 0)
           (if (palindrome-p x) (return x))) into result
         finally (return result)))
