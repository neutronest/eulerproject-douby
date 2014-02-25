(defmacro pythagorean-p (a b c)
  `(= (+ (expt ,a 2) (expt ,b 2)) (expt ,c 2)))

(defmacro e9 ()
  `(loop named outer for i from 1 to 1000 do
         (loop for j from 1 to (- 1000 i)
               if (pythagorean-p i j (- 1000 i j))
               do (return-from outer (* i j (- 1000 i j))))))
