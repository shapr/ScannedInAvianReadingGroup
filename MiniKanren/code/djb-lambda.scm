;; A variation on simple-interp.scm from the faster-miniKanren repository.
;; We refactor it so the env variable (a list of pairs) becomes a pair of lists.

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
         (not-in-envo 'lambda xs)))
      ((symbolo expr) (lookupo expr xs zs val)))))

(define not-in-envo                     ;TODO try absento instead
  (lambda (x xs)
    (conde
      ((== '() xs))
      ((fresh (y v rest)
         (== `(,y . ,rest) xs)
         (=/= y x)
         (not-in-envo x rest))))))

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
