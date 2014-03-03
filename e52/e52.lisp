(defun split-num (n)
  (sort
    (loop for c across (write-to-string n)
          collect (digit-char-p c))
    #'>))

(defun all-the-same-p (lst)
  (loop for i in lst always
        (equal i (car lst))))

(defun e52 ()
  (loop for i from 2
        when (all-the-same-p 
               (list
                 (split-num i)
                 (split-num (* i 2))
                 (split-num (* i 3))
                 (split-num (* i 4))
                 (split-num (* i 5))
                 (split-num (* i 6))))
        return i))
