; Dengeki Nurse English Translation - SAVE.MES
; Translated by Geometrizer
; Edited and commented by trentsignia
; --Description:--
; The Save system.
(mes
 (meta (engine 'ADV) (charset "pc98"))
 (seg*
  (define-proc 10
    (<>
     (menu1 22 345 22 361
      (</>
       (/ (text-color 4) (text "　　Ｙｅｓ　　"))
       (/ (text #:col 4 '|34368| "　　Ｎｏ　　" '|34368|))))))
  (define-proc 11
    (<>
     (menu1 22 345 22 361
      (</>
       (/ (text-color 4) (text "　　Ｙｅｓ　　"))
       (/ (text #:col 4 '|34368| "　　Ｎｏ　　" '|34368|))))))
  (define-proc 12
    (<> (str "Do you want to overwrite existing data?")))
  (define-proc 13
    (<>
     (text-frame 3 324 52 379)
     (text-reset 15)
     (text-color 1)
     (str "Are you sure you want to end the game?")))
  (define-proc 14
    (<>
     (text-frame 3 324 52 379)
     (text-reset 15)
     (text 'br)
     (text "　　　　　　　　　　") (str "Save complete!")
     (proc 15)))
  (loop
   (set-var T 0)
   ((cmd 199) 4)
   ((cmd 211) 1 3)
   (text-frame 3 324 52 379)
   (text-reset 15)
   (text-color 1)
   (text "　　") (str "Which Carte would you like to save to?")
   (menu1
    4 345  16 345  28 345
    4 361  16 361  28 361  40 361
    (</>
     (/ (text #:col 4 "　") (str "Carte ") (text "１　"))
     (/ (text #:col 4 "　") (str "Carte ") (text "２　"))
     (/ (text #:col 4 "　") (str "Carte ") (text "３　"))
     (/ (text #:col 4 "　") (str "Carte ") (text "４　"))
     (/ (text #:col 4 "　") (str "Carte ") (text "５　"))
     (/ (text #:col 4 "　") (str " Cancel ") (text "　"))
     (/ (text #:col 4 "　") (str "Game End") (text "　"))))
   (set-var |[| 0)
   (text-color 4)
   (text-frame 3 324 52 379)
   (text-reset 15)
   (branch-var S
    (</>
     (/
      (set-reg 1000 #f)
      (nop@)
      (set-reg 990 #t)
      (set-reg 991 #f)
      (set-reg 333 #f)
      (set-reg 666 #f)
      (set-reg 965 #f)
      (set-reg 966 #f)
      (set-reg 967 #t)
      (flag-save 0)
      (proc 14))
     (/
      (set-reg 1001 #f)
      (nop@)
      (set-reg 990 #t)
      (set-reg 991 #f)
      (set-reg 333 #f)
      (set-reg 666 #f)
      (set-reg 965 #f)
      (set-reg 966 #t)
      (set-reg 967 #f)
      (flag-save 1)
      (proc 14)
      (exec-mem 18944 65535 528 23))
     (/
      (set-reg 1002 #f)
      (nop@)
      (set-reg 990 #t)
      (set-reg 991 #f)
      (set-reg 333 #f)
      (set-reg 666 #f)
      (set-reg 965 #t)
      (set-reg 966 #f)
      (set-reg 967 #f)
      (flag-save 2)
      (proc 14))
     (/
      (set-reg 1003 #f)
      (nop@)
      (set-reg 990 #t)
      (set-reg 991 #f)
      (set-reg 333 #f)
      (set-reg 666 #f)
      (set-reg 965 #t)
      (set-reg 966 #f)
      (set-reg 967 #t)
      (flag-save 3)
      (proc 14))
     (/
      (set-reg 1004 #f)
      (nop@)
      (set-reg 990 #t)
      (set-reg 991 #f)
      (set-reg 333 #f)
      (set-reg 666 #f)
      (set-reg 965 #t)
      (set-reg 966 #t)
      (set-reg 967 #f)
      (flag-save 4)
      (proc 14))
     (/ (nop@))
     (/
      (proc 13)
      ((cmd 211) 0 1)
      (proc 10)
      (branch-var S
       (</>
        (/
         (text-frame 3 324 52 379)
         (text-reset 15)
         (exec-mem 18944 65535 528 23)
         (branch-reg 700
          (</> (/ (nop@)) (/ (set-reg 991 #t) (set-reg 333 #t)))))
        (/
         (sound '|| 2)
         ((cmd 209) 0 2)
         (image-file "gpc¥Ns0506B.GPC") (image-mem 1 3)
         (image-file "gpc¥Waku2.GPC") (image-mem 1 3)
         ((cmd 209) 1 2)
         (text-frame 3 332 52 379)
         (text-color 4)
         (text "　　　　　　　　") (str "Thanks for playing!")
         (str "You can now eject the disk and turn off the power.")
         (sound '|| 0)
         (loop)))))))
   (exec-mem 18944 65535 528 23)
   (if (</>
        (// (? (= C 1)) (nop@) (set-var B 1))
        (// (? (= C 2)) (nop@) (set-var B 2))
        (// (? (= C 3)) (nop@) (set-var B 3))
        (// (? (= C 4)) (nop@) (set-var B 4))
        (// (? (= C 5)) (nop@) (set-var B 5))))
   (branch-reg 700 (</> (/ (nop@)) (/ (set-reg 991 #t) (set-reg 333 #t))))
   ((cmd 212)))))