(defun primep (x)
  (if (loop for i from 2 to (floor (sqrt x)) always (> (mod x i) 0))
    t
    nil))

(defun e3 (x)
  (loop for i from 1 to (ceiling (sqrt x)) 
        when (and (equal (mod x i) 0) (primep i))
        maximize i into result
        finally (return result)))
