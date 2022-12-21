(define stringContains
  (lambda (string char)
    (if (equal? string "")
        #f
        (if (char=? (string-ref string 0) char)
            #t
            (if (not (char=? (string-ref string 0) char))
                (stringContains (substring string 1 (string-length string)) char)
                #f)))))

(define uniqueCharacters
  (lambda (string)
    (cond
      ((equal? string "") "")
      ((equal? (string-length string) 1) (string-ref string 0))
        (else
            (if (equal? (stringContains (substring string 1 (string-length string)) (string-ref string 0)) #t)
                (uniqueCharacters (substring string 1 (string-length string)))
                (string-append (substring string 0 1) (substring string 1 (string-length string))))))))

(define uniqueSubstring
  (lambda (string)
    (display (string-length (uniqueCharacters string)))))

;; p0tt3r@w4nd ~/coursework/PL/PL-ASSG-4
;; $ mit-scheme

;; 1 ]=> (load "PL4.scm")
;; ;Loading "PL4.scm"... done
;; ;Value: uniquesubstring

;; 1 ]=> (uniqueSubstring "abaacb")
;; 3

