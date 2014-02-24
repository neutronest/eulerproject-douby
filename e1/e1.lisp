(defun e1 (x) 
  (loop for i from 1 to (- x 1) 
        when (or (equal (mod i 3) 0) (equal (mod i 5) 0))
        summing i into sum
        finally (return sum)))
