; Dengeki Nurse English Translation - NS15_16D.MES
; Translated by Geometrizer
; Edited and commented by trentsignia
; --Description:--
; A familiar looking pipe...
(mes
 (meta (engine 'ADV) (charset "pc98"))
 (seg*
  (load-mem "dat¥icondat.dat" 33024)
; (define-proc 10 (<> (text-color 11) (str "Nursia: ")))
  (branch-reg 702
   (</>
    (/
     (sound '|| 0)
     (sound '|| "uso¥Nurse10.uso")
     (sound '|| 1)
     (exec-mem 19456 2 8 4 103 75 8 40 103 40 0 20)
     (image-file "b:¥gpc¥Ns1_562.gpc") (image-mem 1 3)
     (image-file "b:¥gpc¥Ns1_572.gpc") (image-mem 1 3)
     (exec-mem 19456 1 8 40 103 40 8 4 103 75 8 20)
     (text-frame 3 324 52 379)
     (text-reset 15)
     (text-color 8)
     (str "Tomoyo: Heh heh heh! So you made it here!")
     (proc 15)
     (proc 2)
             (str "H-How the hell are you-? I thought we" 'br)
     (str "defeated you!")
     (proc 15)
     (text-color 8)
     (str "Tomoyo: Don't underestimate Black Cross medical" 'br)
     (str "technology!")
     (proc 15)
     (proc 3)
     (exec-mem 2816 "GET 2 0 0 10 96") ; Smiling
     (proc 4)
     (proc 0)
                    (str "It's fine! We beat her once, we" 'br)
     (str "sure can do it again!")
     (proc 15)
     (proc 6)
     (text-color 8)
     (str "Tomoyo: Heh heh heh! This time, I won't hold back!")
     (proc 15)
     (exec-mem 2816 "EXIT")
     (set-var R 0)
     (set-var U 1)
     (sound '|| 2)
     (mes-load? "mes¥action1.mes")
     (branch-var Q
      (</>
       (/ (nop@))
       (/
        (sound '|| 0)
        (sound '|| "uso¥Nurse14.uso")
        (sound '|| 1)
        (image-file "gpc¥Aflame01.gpc")   (image-mem 1 3)
        (image-file "b:¥gpc¥Ns1_562.gpc") (image-mem 1 0)
        (image-file "b:¥gpc¥Ns1_570.gpc") (image-mem 1 0)
        (exec-mem 2816 "INIT,SHOW 0,ACCESS 1")
        (image-file "gpc¥face_w00.gpc")   (image-mem 0 0)
        (exec-mem 2816 "GET 20 71 320 8 64")
        (exec-mem 2816 "ACCESS 0")
        (exec-mem 17920 0 1)
        (exec-mem 1280 14 7 6 6)
        (exec-mem 6656 8)
        (text-frame 3 324 52 379)
        (text-reset 15)
        (proc 2)
                (str "Wh-wh-whaaaat is this?")
        (proc 15)
        (proc 9) (proc 11)	; Nursia
        (proc 10)
                (str "I'd say it's a pipe?")
        (proc 15)
        (proc 14)
        (set-reg 702 #t))
       (/ (nop@)))))
    (/
     (image-file "b:¥gpc¥Ns1_562.gpc") (image-mem 1 3)
     (image-file "b:¥gpc¥Ns1_570.gpc") (image-mem 1 0)
     (proc 13)
     (proc 9) (proc 11)	; Nursia
     (text-frame 3 324 52 379)
     (text-reset 15)
     (proc 10)
             (str "Doctor Tanchi, there's a pipe here...")
     (proc 15)
     (proc 14))))
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
   (str "Dokkaaaaaaaan!")
   (proc 15)
   (proc 19))
 (seg (? (= T 1) (= O 0))												; Look
   (nop@)
   (proc 18)
   (text-color 7)
   (str "There's a pipe here... That's about it.")
   (proc 15)
   (proc 19))
 (seg (? (= T 2) (= O 0))												; Talk
   (nop@)
   (proc 18)
   (proc 3)
   (exec-mem 2816 "GET 2 40 0 10 96") ; Shocked
   (proc 4)
   (proc 0)
                  (str "Dokkaaaaaaannn!")
   (proc 15)
   (proc 6)
   (proc 2)
           (str "Dokkannnnnn!")
   (proc 15)
   (proc 9) (proc 11)	; Nursia
   (proc 10)
           (str "Dokkan...")
   (proc 15)
   (proc 14)
   (proc 19))
 (seg (? (= T 3) (= O 0))												; Action
   (nop@)
   (proc 18)
   (text-color 7)
   (str "I try kicking the pipe...")
   (proc 15)
   (text-color 7)
   (str "It worked as well as you'd expect.")
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
     (/ (text #:col 4 '|34368| "Ｅｎｔｅｒ" '|34368|))
     (/ (text #:col 4 '|34368| "Ｌｅａｖｅ" '|34368|))))
   (branch-var S
    (</>

; 	Enter

     (/
      (exec-mem 19456 2 8 4 103 75 55 45 55 45 0 20)
      (sound '|| 2)
      (text-frame 3 324 52 379)
      (text-reset 15)
      (exec-mem 18944 65535 528 33)
      (set-reg 990 #f)
      (mes-jump "b:¥mes¥Ns15_16E.mes"))

; 	Leave

     (/
      (set-var S 0)
      (exec-mem 19456 2 8 4 103 75 55 45 55 45 0 20)
      (text-frame 3 324 52 379)
      (text-reset 15)
      (exec-mem 18944 65535 528 33)
      (set-reg 990 #f)
      (mes-jump "b:¥mes¥Ns15_16.mes")))))

 (seg (? (= T 5) (= O 0))												; Save
   (proc 18)
   (proc 9) (proc 11)	; Nursia
   (proc 10)
           (str "Sorry, but we'll have to head out to the" 'br)
   (str "hallway to save...")
   (proc 15)
   (proc 14)
   (proc 19)))