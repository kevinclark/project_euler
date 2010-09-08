(defn mul-3-or-5? [x] (some zero? [(mod x 5) (mod x 3)]))


(println 
  (apply + (for [x (range 1000) :when (mul-3-or-5? x)] x)))
