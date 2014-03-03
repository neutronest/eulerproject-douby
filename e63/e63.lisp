(defun length-n (num)
  (length (write-to-string num)))

(defun e63 ()
  (loop for i from 1 to 100
        summing (loop for j from 1 to 10
                      count (= (length-n (expt j i)) i)
                      )
        into result
        finally (return result)))
