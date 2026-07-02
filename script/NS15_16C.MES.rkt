; Dengeki Nurse English Translation - NS15_16C.MES
; Translated by Geometrizer
; Edited and commented by trentsignia
; --Description:--
; Dungeon Panda (?) warp.
(mes
 (meta (engine 'ADV) (charset "pc98"))
 (seg*
  (load-mem "dat¥icondat.dat" 33024)
  (load-mem "cmd¥quakeh.tcm" 6656)
; (define-proc 10 (<> (text-color 11) (str "Nursia: ")))
  (image-file "b:¥gpc¥Ns1_562.gpc") (image-mem 1 3)
  (image-file "b:¥gpc¥Ns1_564.gpc") (image-mem 1 3)
  (proc 13)
  (exec-mem 2816 "GET 1 40 23 10 96")
  (exec-mem 2816 "SHOW 0,ACCESS 1")
  (exec-mem 2816 "GET 2 10 288 10 96")
  (exec-mem 2816 "ACCESS 0")
  (exec-mem 2816 "VIEW 40 23 50 120,PUT 2 40 23,FREE 2")

; 	Intro begins here...

  (text-frame 3 324 52 379)
  (text-reset 15)
  (proc 10)
          (str "Doctor Tanchi, there's a warp device here" 'br)
  (str "too...")
  (proc 15)
  (proc 14)
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
   (nop@)
   (proc 18)
   (text-color 7)
   (str "I don't want to use this one... It feels like it" 'br)
   (str "might warp us out into deep space...")
   (proc 15)
   (proc 19))

 (seg (? (= T 1) (= O 0))												; Look
   (nop@)
   (proc 18)
   (text-color 7)
   (str "Hmm... How would I describe this... A super-" 'br)
   (str "futuristic warp device, maybe?")
   (proc 15)
   (proc 19))

 (seg (? (= T 2) (= O 0))												; Talk
   (nop@)
   (proc 18)
   (proc 3) (exec-mem 2816 "GET 2 40 0 10 96") (proc 4) ; Portrait (Shocked)
   (proc 0)
       ; Dengeki Nurse:
                  (str "Tanchi!!! A panda!!!")
   (proc 15)
   (proc 6) ; Clear Portrait
   (proc 2)
       ; Tanchi:
           (str "Yes, that's definitely a panda.")
   (proc 15)
   (proc 19))

 (seg (? (= T 3) (= O 0))												; Action
   (nop@)
   (proc 18)
   (text-color 7)
   (str "I pat the panda's head.")
   (proc 15)
   (text-color 7)
   (str "One must be kind to animals, after all.")
   (proc 15)
   (proc 19))

 (seg (? (= T 4) (= O 0))												; Move
   (nop@)
   (proc 18)
   (text-frame 3 324 52 379)
   (text-reset 15)
   (text-color 1)
   (str "What should we do?")
   (set-var T 0)
   ((cmd 211) 1 2)
   (menu1 10 348 24 348
    (</>
     (/ (text #:col 4 "　Ｗａｒｐ　"))
     (/ (text #:col 4 '|34368| "Ｌｅａｖｅ" '|34368|))))
   (branch-var S
    (</>

; 	Warp

     (/
      (text-frame 3 324 52 379)
      (text-reset 15)
      (if (</>

; 		No coin

           (//
            (? (= 806 #f) (= D 0))
            (nop@)
            (proc 9) (proc 11) (proc 10)
                ; Nursia:
                    (str "That warp device won't work unless you" 'br)
            (str "insert a coin.")
            (proc 15)
            (proc 14)
            (exec-mem 18944 65535 528 33))

; 		Out of coins

           (//
            (? (= 806 #t) (= D 0))
            (nop@)
            (proc 9) (proc 11) (proc 10)
                ; Nursia:
                    (str "Looks like we're out of coins...")
            (proc 15)
            (proc 14)
            (proc 3) (exec-mem 2816 "GET 2 40 0 10 96") (proc 4) ; Portrait (Shocked)
            (proc 0)
                ; Dengeki Nurse:
                           (str "Maybe we could go back and get" 'br)
            (str "more?")
            (proc 15)
            (proc 6) ; Clear Portrait
            (exec-mem 18944 65535 528 33))

; 		Coin inserted

           (//
            (text-color 7)
            (str "I insert a coin into the warp device.")
            (proc 15)
            (text-color 1)
            (str "Beebeebooooop!")
            (exec-mem 6656 0 2 1 4 0)
            (exec-mem 6656 0 40 1 1 0)
            (if (</>
                 (// (? (= G 1) (= S 3)) (nop@) (set-var G 3))
                 (// (? (= G 2) (= S 4)) (nop@) (set-var G 4))
                 (// (? (= G 4) (= S 2)) (nop@) (set-var G 6))
                 (// (? (= G 5) (= S 3)) (nop@) (set-var G 2))
                 (// (? (= G 6) (= S 1)) (nop@) (set-var G 1))))
            (dec-var D 1)
            (set-var S 0)
            (exec-mem 19456 2 8 4 103 75 55 45 55 45 0 20)
            (exec-mem 18944 65535 528 33)
            (set-reg 990 #f)
            (mes-jump "b:¥mes¥Ns15_16.mes")))))

; 	Leave

     (/
      (set-var S 0)
      (exec-mem 19456 2 8 4 103 75 55 45 55 45 0 20)
      (text-frame 3 324 52 379)
      (text-reset 15)
      (set-reg 990 #f)
      (mes-jump "b:¥mes¥Ns15_16.mes"))))
   (proc 19))

 (seg (? (= T 5) (= O 0))												; Save
   (proc 18)
   (proc 9) (proc 11) (proc 10)
       ; Nursia:
           (str "Sorry, but we'll have to head out to the" 'br)
   (str "hallway to save...")
   (proc 15)
   (proc 14)
   (proc 19)))