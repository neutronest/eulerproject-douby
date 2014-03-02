(defun count-char (str)
  (loop for c across str
        count (and (not (equal c #\Space))
                  (not (equal c #\-)))))

(defun e17 (n)
  (loop for i from 1 to n
        summing (count-char (format nil "~r" i))
        into result
        when (and (>= i 100) (not (equal (mod i 100) 0)))
        do (setq result (+ result 3))
        finally (return result)))
