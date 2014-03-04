(defun d (n)
  (loop for i from 1 to (1- n)
        when (equal (mod n i) 0)
        sum i))

(defun amicable-p (n)
  (and 
  (= n (d (d n)))
  (not (= n (d n)))))

(defun e21 (n)
  (loop for i from 1 to n
        when (amicable-p i)
        sum i))
