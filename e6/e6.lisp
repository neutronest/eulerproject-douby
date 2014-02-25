(defmacro e5 (x)
  `(- (expt (* ,x (1+ ,x) 1/2) 2)
      (loop for i from 1 to ,x sum (expt i 2))))
