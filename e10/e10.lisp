(defun primep (x)
  (if (loop for i from 2 to (floor (sqrt x)) always (> (mod x i) 0))
    t
    nil))

(defmacro e10 (x)
  `(loop for i from 2 to ,x
         when (primep i)
         sum i))
