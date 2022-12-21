(define (rev_non_tail lst)
  (if (null? lst)
    ()
    (append (rev_non_tail (cdr lst)) 
            (list (car lst)))))

(define (rev_tail lst)
  (define (rev_tail_helper lst temp)
    (if (null? lst)
      temp
      (rev_tail_helper (cdr lst)
                       (cons (car lst) temp))))
  (rev_tail_helper lst '()))

;; p0tt3r@w4nd ~/coursework/PL/PL-ASSG-3
;; $ mit-scheme

;; 1 ]=> (load "PL3.scm")
;; ;Loading "PL3.scm"... done
;; ;Value: rev_tail

;; 1 ]=> (rev_non_tail '(1 a 2 3 () v))
;; ;Value: (v () 3 2 a 1)

;; 1 ]=> (rev_tail '(1 a 2 3 () v))
;; ;Value: (v () 3 2 a 1)
