; Dengeki Nurse English Translation - NS15_16E.MES
; Translated by Geometrizer
; Edited and commented by trentsignia
; --Description:--
; ...And the predictable parody that follows the pipe.
(mes
 (meta (engine 'ADV) (charset "pc98"))
 (seg*
  (load-mem "dat¥icondat.dat" 33024)
; (define-proc 10 (<> (text-color 11) (str "Nursia: ")))
  (sound '|| 0)
  (if (</>
       (//
        (? (= 705 #f))
        (nop@)
        ((cmd 204) 550 565)
        (image-file "b:¥gpc¥Ns1_571.gpc") (image-mem 1 3)
        (exec-mem 2816 "GET 11 8 145 4 30")
        (exec-mem 2816 "GET 12 8 81 4 30")
        (text-frame 8 81 12 111)
        (text-reset 1)
        (exec-mem 2816 "VIEW 16 17 20 47,PUT 12 16 17")
        (exec-mem 2816 "VIEW 24 17 28 47,PUT 12 24 17")
        (exec-mem 2816 "VIEW 32 17 36 47,PUT 12 32 17")
        (exec-mem 2816 "VIEW 40 17 44 47,PUT 12 40 17")
        (exec-mem 2816 "VIEW 16 81 20 111,PUT 12 16 81")
        (exec-mem 2816 "VIEW 24 81 28 111,PUT 12 24 81")
        (exec-mem 2816 "VIEW 32 81 36 111,PUT 12 32 81")
        (exec-mem 2816 "VIEW 40 81 44 111,PUT 12 40 81")
        (exec-mem 2816 "VIEW 16 145 20 175,PUT 12 16 145")
        (exec-mem 2816 "VIEW 24 145 28 175,PUT 12 24 145")
        (exec-mem 2816 "VIEW 32 145 36 175,PUT 12 32 145")
        (exec-mem 2816 "VIEW 40 145 44 175,PUT 12 40 145")
        (exec-mem 2816 "VIEW 16 209 20 239,PUT 12 16 209")
        (exec-mem 2816 "VIEW 24 209 28 239,PUT 12 24 209")
        (exec-mem 2816 "VIEW 32 209 36 239,PUT 12 32 209")
        (exec-mem 2816 "VIEW 40 209 44 239,PUT 12 40 209")
        (proc 13)
        (text-frame 3 324 52 379)
        (text-reset 15)
        (proc 2)
                (str "What the heck is going on here?")
        (proc 15)
        (proc 3)
        (exec-mem 2816 "GET 2 50 0 10 96") ; Confused
        (proc 4)
        (proc 0)
                       (str "Could this be the Elektros" 'br)
        (str "treasure?")
        (proc 15)
        (proc 6)
        (proc 9) (proc 11)	; Nursia
        (proc 10)
                (text "‥‥‥‥‥‥‥‥‥‥‥‥")
        (proc 15)
        (proc 14)
        (set-reg 705 #t))
       (//
        (? (= 705 #t) (= 806 #f) (= D 0))
        (nop@)
        (image-file "b:¥gpc¥Ns1_571.gpc") (image-mem 1 3)
        (exec-mem 2816 "GET 11 8 145 4 30")
        (exec-mem 2816 "GET 12 8 81 4 30")
        (text-frame 8 81 12 111)
        (text-reset 1)
        (exec-mem 2816 "VIEW 16 17 20 47,PUT 12 16 17")
        (exec-mem 2816 "VIEW 24 17 28 47,PUT 12 24 17")
        (exec-mem 2816 "VIEW 32 17 36 47,PUT 12 32 17")
        (exec-mem 2816 "VIEW 40 17 44 47,PUT 12 40 17")
        (exec-mem 2816 "VIEW 16 81 20 111,PUT 12 16 81")
        (exec-mem 2816 "VIEW 24 81 28 111,PUT 12 24 81")
        (exec-mem 2816 "VIEW 32 81 36 111,PUT 12 32 81")
        (exec-mem 2816 "VIEW 40 81 44 111,PUT 12 40 81")
        (exec-mem 2816 "VIEW 16 145 20 175,PUT 12 16 145")
        (exec-mem 2816 "VIEW 24 145 28 175,PUT 12 24 145")
        (exec-mem 2816 "VIEW 32 145 36 175,PUT 12 32 145")
        (exec-mem 2816 "VIEW 40 145 44 175,PUT 12 40 145")
        (exec-mem 2816 "VIEW 16 209 20 239,PUT 12 16 209")
        (exec-mem 2816 "VIEW 24 209 28 239,PUT 12 24 209")
        (exec-mem 2816 "VIEW 32 209 36 239,PUT 12 32 209")
        (exec-mem 2816 "VIEW 40 209 44 239,PUT 12 40 209")
        (proc 13)
        (text-frame 3 324 52 379)
        (text-reset 15)
        (proc 2)
                (str "As expected... The coins are floating.")
        (proc 15)
        (proc 9) (proc 11)	; Nursia
        (proc 10)
                (str "Doctor Tanchi, let's grab those floating" 'br)
        (str "coins!")
        (proc 15)
        (proc 14))
       (//
        (? (= 705 #t) (= 806 #t) (= D 0))
        (nop@)
        (image-file "b:¥gpc¥Ns1_571.gpc") (image-mem 1 3)
        (exec-mem 2816 "GET 11 8 145 4 30")
        (exec-mem 2816 "GET 12 8 81 4 30")
        (text-frame 8 81 12 111)
        (text-reset 1)
        (exec-mem 2816 "VIEW 16 17 20 47,PUT 12 16 17")
        (exec-mem 2816 "VIEW 24 17 28 47,PUT 12 24 17")
        (exec-mem 2816 "VIEW 32 17 36 47,PUT 12 32 17")
        (exec-mem 2816 "VIEW 40 17 44 47,PUT 12 40 17")
        (exec-mem 2816 "VIEW 16 81 20 111,PUT 12 16 81")
        (exec-mem 2816 "VIEW 24 81 28 111,PUT 12 24 81")
        (exec-mem 2816 "VIEW 32 81 36 111,PUT 12 32 81")
        (exec-mem 2816 "VIEW 40 81 44 111,PUT 12 40 81")
        (exec-mem 2816 "VIEW 16 145 20 175,PUT 12 16 145")
        (exec-mem 2816 "VIEW 24 145 28 175,PUT 12 24 145")
        (exec-mem 2816 "VIEW 32 145 36 175,PUT 12 32 145")
        (exec-mem 2816 "VIEW 40 145 44 175,PUT 12 40 145")
        (exec-mem 2816 "VIEW 16 209 20 239,PUT 12 16 209")
        (exec-mem 2816 "VIEW 24 209 28 239,PUT 12 24 209")
        (exec-mem 2816 "VIEW 32 209 36 239,PUT 12 32 209")
        (exec-mem 2816 "VIEW 40 209 44 239,PUT 12 40 209")
        (proc 13)
        (text-frame 3 324 52 379)
        (text-reset 15)
        (proc 2)
                (str "I grabbed them, but are there more?")
        (proc 15)
        (proc 3)
        (exec-mem 2816 "GET 2 50 0 10 96") ; Confused
        (proc 4)
        (proc 0)
                       (str "Puzzling... Is this Elektros magic?")
        (proc 15)
        (proc 6)
        (proc 9) (proc 11)	; Nursia
        (proc 10)
                (text "‥‥‥‥‥‥‥‥‥‥‥‥")
        (proc 15)
        (proc 14))
       (//
        (? (= 705 #t) (= 806 #t))
        (nop@)
        (image-file "b:¥gpc¥Ns1_571.gpc")
        (image-mem 1 3)
        (text-frame 8 81 12 111)
        (text-reset 1)
        (proc 13)
        (text-frame 3 324 52 379)
        (text-reset 15)
        (proc 2)
                (str "The coins are gone!")
        (proc 15)
        (proc 3)
        (exec-mem 2816 "GET 2 10 0 10 96") ; Happy
        (proc 4)
        (proc 0)
                       (str "Didn't you just grab them, Tanchi?")
        (proc 15)
        (proc 6))
       (//)))
  (proc 19)
  
; 	Dialogue trees defined here...

  (loop
   (exec-mem 24576 1 1 0)
   (exec-mem 24576 3)
   (text-color 1)
   (text-frame 3 324 52 379)
   (proc 19)
   (branch-var Z
    (</>
     (/ (nop@) (set-var T 0) (set-var O 0) (seg-call)) ; Think
     (/ (nop@) (set-var T 1) (set-var O 0) (seg-call)) ; Look
     (/ (nop@) (set-var T 2) (set-var O 0) (seg-call)) ; Talk
     (/ (nop@) (set-var T 3) (set-var O 0) (seg-call)) ; Action
     (/ (nop@) (set-var T 4) (set-var O 0) (seg-call)) ; Move
     (/ (nop@) (set-var T 5) (set-var O 0) (seg-call)) ; Save
; Unused
     (/ (nop@))
     (/ (nop@))
     (/ (nop@))
     (/ (nop@))
     (/ (nop@))
     (/ (nop@))
     (/ (nop@))
     (/ (nop@))))))

; 	Text continues here...

 (seg (? (= T 0) (= O 0))												; Think
   (proc 18)
   (text-color 7)
   (if (</>
        (// (? (= 705 #t) (= D 0)) (str "Let's finish this up... I want to go home and play" "some games."))
        (//                        (text "ゲームだと、何度入ってもコインがあるんだが‥‥"))))
   (proc 15)
   (proc 19))
 (seg (? (= T 1) (= O 0))												; Look
   (proc 18)
   (text-color 7)
   (if (</>
        (// (? (= 705 #t) (= D 0)) (str "How the heck do we have floating coins? Is" 'br "Elektros technology able to negate gravity...?"))
        (//                        (text "コインはもうないようだ。"))))
   (proc 15)
   (proc 19))
 (seg (? (= T 2) (= O 0))												; Talk
   (proc 18)
   (proc 3)
   (exec-mem 2816 "GET 2 10 0 10 96") ; Happy
   (proc 4)
   (proc 0)
   (if (</>
        (//
         (? (= 705 #t) (= D 0))
         (str "The coins shining in the sky are so")
         (str "pretty!")
         (proc 15)
         (proc 6)
         (proc 2)
                 (str "Hey... Do you not understand how things" 'br)
         (str "work?"))
        (//
         (str "It's nice and cool inside here!")
         (proc 15)
         (proc 6)
         (proc 2)
                 (str "She really has no sense of tension..."))))
   (proc 15)
   (proc 19))
 (seg (? (= T 3) (= O 0))												; Action
   (proc 18)
   (branch-var C
    (</>
     (/ (set-reg 806 #f))
     (/ (nop@))
     (/ (nop@))
     (/ (nop@))
     (/ (nop@))
     (/ (nop@))
     (/ (nop@))
     (/ (nop@))
     (/ (nop@))
     (/ (nop@))
     (/ (nop@))
     (/ (nop@))
     (/ (nop@))
     (/ (nop@))
     (/ (nop@))
     (/ (nop@))))
   (branch-reg 806
    (</>
     (/
      (text-frame 3 324 52 379)
      (text-reset 15)
      (text-color 1)
      (str "Should I take the coin?")
      (set-var T 0)
      ((cmd 211) 1 2)
      (menu1 10 348 28 348
       (</>
        (/ (text #:col 4 "Ｔａｋｅ　ｉｔ！"))
        (/ (text #:col 4 "　Ｄｏｎ’ｔ！　"))))
      (branch-var S
       (</>
        (/
         (text-frame 3 324 52 379)
         (text-reset 15)
         (proc 2)
                 (str "If we collect enough coins we'll get a" 'br)
         (str "1UP, right?")
         (proc 15)
         (sound '|se | 25) (exec-mem 2816 "VIEW 16 17 20 47,PUT 11 16 17")    (delay 30)
         (sound '|se | 25) (exec-mem 2816 "VIEW 24 17 28 47,PUT 11 24 17")    (delay 30)
         (sound '|se | 25) (exec-mem 2816 "VIEW 32 17 36 47,PUT 11 32 17")    (delay 30)
         (sound '|se | 25) (exec-mem 2816 "VIEW 40 17 44 47,PUT 11 40 17")    (delay 30)
         (sound '|se | 25) (exec-mem 2816 "VIEW 16 81 20 111,PUT 11 16 81")   (delay 30)
         (sound '|se | 25) (exec-mem 2816 "VIEW 24 81 28 111,PUT 11 24 81")   (delay 30)
         (sound '|se | 25) (exec-mem 2816 "VIEW 32 81 36 111,PUT 11 32 81")   (delay 30)
         (sound '|se | 25) (exec-mem 2816 "VIEW 40 81 44 111,PUT 11 40 81")   (delay 30)
         (sound '|se | 25) (exec-mem 2816 "VIEW 16 145 20 175,PUT 11 16 145") (delay 30)
         (sound '|se | 25) (exec-mem 2816 "VIEW 24 145 28 175,PUT 11 24 145") (delay 30)
         (sound '|se | 25) (exec-mem 2816 "VIEW 32 145 36 175,PUT 11 32 145") (delay 30)
         (sound '|se | 25) (exec-mem 2816 "VIEW 40 145 44 175,PUT 11 40 145") (delay 30)
         (sound '|se | 25) (exec-mem 2816 "VIEW 16 209 20 239,PUT 11 16 209") (delay 30)
         (sound '|se | 25) (exec-mem 2816 "VIEW 24 209 28 239,PUT 11 24 209") (delay 30)
         (sound '|se | 25) (exec-mem 2816 "VIEW 32 209 36 239,PUT 11 32 209") (delay 30)
         (sound '|se | 25) (exec-mem 2816 "VIEW 40 209 44 239,PUT 11 40 209")
         (set-var D 15)
         (proc 2)
                 (str "Hahaha! I'm strangely enjoying this!")
         (proc 15)
         (exec-mem 2816 "FREE 11,FREE 12")
         (set-reg 806 #t))
        (/
         (text-frame 3 324 52 379)
         (text-reset 15)
         (exec-mem 18944 65535 528 33)))))
     (/
      (text-color 7)
      (str "What a pity... All the coins are gone...")
      (proc 15)
      (proc 3)
      (exec-mem 2816 "GET 2 10 0 10 96") ; Happy
      (proc 4)
      (proc 0)
      (str "Let's get moving already!")
      (proc 15)
      (proc 6))))
   (proc 19))
 (seg (? (= T 4) (= O 0))												; Move
   (nop@)
   (proc 18)
   (text-frame 3 324 52 379)
   (text-reset 15)
   (text-color 1)
   (str "Should we leave?")
   (set-var T 0)
   ((cmd 211) 1 2)
   (menu1 10 348 24 348
    (</>
     (/ (text-color 4) (text '|34368| "　Ｙｅｓ　" '|34368|))
     (/ (text-color 4) (text "　　Ｎｏ　　"))))
   (branch-var S
    (</>

; 	Yes

     (/
      (exec-mem 19456 2 8 4 103 75 55 45 55 45 0 20)
      (text-frame 3 324 52 379)
      (text-reset 15)
      (sound '|| 0)
      (sound '|| "uso¥Nurse14.uso")
      (sound '|| 1)
      (exec-mem 2816 "FREE 11,FREE 12")
      (set-reg 990 #f)
      (exec-mem 18944 65535 528 33)
      (mes-jump "b:¥mes¥Ns15_16D.mes"))

; 	No

     (/
      (text-frame 3 324 52 379)
      (text-reset 15)
      (exec-mem 18944 65535 528 33))))
   (proc 19))
 (seg (? (= T 5) (= O 0))												; Save
   (proc 18)
   (proc 9) (proc 11)	; Nursia
   (proc 10)
           (str "Doctor Tanchi.. Please don't save in a" 'br)
   (str "place like this...")
   (proc 15)
   (proc 14)
   (proc 19)))