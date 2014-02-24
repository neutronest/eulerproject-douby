(defun primep (x)
  (if (loop for i from 2 to (floor (sqrt x)) always (> (mod x i) 0))
    t
    nil))

(defmacro e5 (x)
  `(apply #'* 
  (loop for i from 2 to ,x
         when (primep i)
         collect
         (do* ((j 1 (1+ j))
               (x (expt i j) (expt i j))
               (result x))
           ((> x ,x) result)
           (setf result x)))))
