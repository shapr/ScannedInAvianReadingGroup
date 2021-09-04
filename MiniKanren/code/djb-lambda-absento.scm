;; A further variation on djb-lambda.scm:
;; We use absento in place of not-in-envo.

(define evalo
  (lambda (expr val)
    (eval-expro expr '() '() val)))

(define eval-expro
  (lambda (expr xs zs val)   ;; xs: binding vars; zs: binding values
    (conde
      ((fresh (rator rand x body xs^ zs^ a)
         (== `(,rator ,rand) expr)
         (eval-expro rator xs zs `(closure ,x ,body ,xs^ ,zs^))
         (eval-expro rand xs zs a)
         (eval-expro body
                     `(,x . ,xs^)
                     `(,a . ,zs^)
                     val)))
      ((fresh (x body)
         (== `(lambda (,x) ,body) expr)
         (symbolo x)
         (== `(closure ,x ,body ,xs ,zs) val)
         (absento 'lambda xs)))
      ((symbolo expr) (lookupo expr xs zs val)))))

(define lookupo
  (lambda (x xs zs t)
    (conde
      ((fresh (xs^ zs^)
         (== `(,x . ,xs^) xs)
         (== `(,t . ,zs^) zs)))
      ((fresh (y z xs^ zs^)
         (== `(,y . ,xs^) xs)
         (=/= y x)
         (== `(,z . ,zs^) zs)
         (lookupo x xs^ zs^ t))))))
