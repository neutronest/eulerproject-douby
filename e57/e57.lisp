(defun get-exp (s)
  (do* ((i 1 (1+ i))
        (n 3)
        (d 2))
    ((> i (1- s)) (cons n d))
    (setq n (+ n (* 2 d))
          d (- n d))))

(defun e57-p (pair)
  (> (length (write-to-string (car pair)))
     (length (write-to-string (cdr pair)))))

(defun e57 (n)
  (loop for i from 1 to n
        count (e57-p (get-exp i))))
