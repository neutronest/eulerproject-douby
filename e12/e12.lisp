(defun tri (i)
  (* i 1/2 (1+ i)))

(defun dvi (i)
  (* 2 
     (loop for n from 1 to (isqrt i) 
           count (equal (mod i n) 0))))

(defun e12 (x)
  (loop for i from 1
        when (> (dvi (tri i)) x)
        return (tri i)))
