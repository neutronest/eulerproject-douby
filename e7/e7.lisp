(defun primep (x)
  (if (loop for i from 2 to (floor (sqrt x)) always (> (mod x i) 0))
    t
    nil))

(defmacro e7 (x)
  `(do ((i 2 (1+ i))
        (counter 0))
     ((= counter ,x) (1- i))
     (if (primep i) (setf counter (1+ counter)))))
