; Dengeki Nurse English Translation - NS15_16B.MES
; Translated by Geometrizer
; Edited and commented by trentsignia
; --Description:--
; Dungeon Elektros warp.
(mes
 (meta (engine 'ADV) (charset "pc98"))
 (seg*
  (load-mem "dat¥icondat.dat" 33024)
  (load-mem "cmd¥quakeh.tcm" 6656)
; (define-proc 10 (<> (text-color 11) (str "Nursia: ")))
  (image-file "b:¥gpc¥Ns1_562.gpc") (image-mem 1 3)
  (image-file "b:¥gpc¥Ns1_563.gpc") (image-mem 1 3)
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
          (str "Doctor Tanchi, that's a warp device!")
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
   (str "We need to warp quickly and catch Black Nurse!" 'br)
   (str "I'll never forgive her!")
   (proc 15)
   (proc 19))
 (seg (? (= T 1) (= O 0))												; Look
   (nop@)
   (proc 18)
   (text-color 7)
   (str "That's a pretty cool-looking warp device. The" 'br)
   (str "ancient Elektros had good design sense!")
   (proc 15)
   (proc 19))
 (seg (? (= T 2) (= O 0))												; Talk
   (nop@)
   (proc 18)
   (proc 3) (exec-mem 2816 "GET 2 10 0 10 96") (proc 4) ; Portrait (Happy)
   (proc 1) ; Interesting, is this a mistake?
       ; Kirara:
           (str "Tanchi! Hurry up and warp already!")
   (proc 15)
   (proc 6) ; Clear Portrait
   (proc 19))
 (seg (? (= T 3) (= O 0))												; Action
   (nop@)
   (proc 18)
   (text-color 7)
   (str "I touch the Warp Device.")
   (proc 15)
   (proc 2)
       ; Tanchi:
           (str "It feels slightly different from Kirara's" 'br)
   (str "butt.")
   (proc 15)
   (proc 3) (exec-mem 2816 "GET 2 30 0 10 96") (proc 4) ; Portrait (Angry)
   (proc 0)
       ; Dengeki Nurse:
                  (str "Of course it does!")
   (proc 15)
   (proc 6) ; Clear Portrait
   (proc 19))
 (seg (? (= T 4) (= O 0))												; Move
   (nop@)
   (proc 18)
   (text-frame 3 324 52 379)
   (text-reset 15)
   (text-color 1)
   (str "What will you do?")
   (set-var T 0)
   ((cmd 211) 1 2)
   (menu1 10 348 24 348
    (</>
     (/ (text #:col 4 "　Ｗａｒｐ　"))
     (/ (text #:col 4 '|34368| "Ｌｅａｖｅ" '|34368|))))
   (text-frame 3 324 52 379)
   (text-reset 15)
   (branch-var S
    (</>

; 	Warp

     (/
      (text-color 7)
      (str "I activate the warp device.")
      (proc 15)
      (text-color 1)
      (str "Byubyubyubyubyuuuu!")
      (repeat 3 (<> (exec-mem 17920 2 0)))
      (if (</>
           (// (? (= G 1) (= S 1)) (nop@) (set-var G 5))
           (// (? (= G 2) (= S 2)) (nop@) (set-var G 6))
           (// (? (= G 2) (= S 3)) (nop@) (set-var G 1))
           (// (? (= G 3) (= S 2)) (nop@) (set-var G 5))
           (// (? (= G 3) (= S 4)) (nop@) (set-var G 1))
           (// (? (= G 4) (= S 1)) (nop@) (set-var G 5))
           (// (? (= G 4) (= S 5)) (nop@) (set-var G 2))
           (// (? (= G 5) (= S 2)) (nop@) (set-var G 6))
           (// (? (= G 6) (= S 4)) (nop@) (set-var G 5))))
      (set-var S 0)
      (exec-mem 19456 2 8 4 103 75 55 45 55 45 0 20)
      (exec-mem 18944 65535 528 33)
      (set-reg 990 #f)
      (mes-jump "b:¥mes¥Ns15_16.mes"))

; 	Leave

     (/
      (set-var S 0)
      (exec-mem 19456 2 8 4 103 75 55 45 55 45 0 20)
      (exec-mem 18944 65535 528 33)
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