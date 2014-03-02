(defun palind-p (num)
  (equal (write-to-string num)
         (reverse (write-to-string num))))

(defun lychrel-p (num)
  (do* ((i 1 (1+ i))
        (n (+ num (parse-integer (reverse (write-to-string num)))) 
           (+ n (parse-integer (reverse (write-to-string n))))))
    ((> i 49) t)
    (if (palind-p n)
      (return nil))))

(defun e55 (n)
  (loop for i from n downto 1
        count (lychrel-p i)))
