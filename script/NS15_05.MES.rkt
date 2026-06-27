; Dengeki Nurse English Translation - NS15_05.MES
; Translated by Geometrizer
; Edited and commented by trentsignia
; --Description:--
; The Dentendo crew go outside to greet Nursia.
(mes
 (meta (engine 'ADV) (charset "pc98"))
 (seg*
  (define-proc 10 (<> (text-color 5) (str "Yukikoji: ")))
  (define-proc 11 (<> (text-color 11) (str "Nursia: ")))

; 	Dr. Akiba portrait:

  (define-proc 12 (<> (exec-mem 2816 "GET 1 40 23 10 96") (exec-mem 2816 "SHOW 0,ACCESS 1") (exec-mem 2816 "GET 2 10 192 10 96")))
  (define-proc 13 (<> (exec-mem 2816 "ACCESS 0") (exec-mem 2816 "VIEW 40 23 50 120,PUT 2 40 23,FREE 2")))
  (define-proc 14 (<> (exec-mem 2816 "VIEW 40 23 50 120,PUT 1 40 23,FREE 1")))

; 	Setup continues...

  (exec-mem 2816 "INIT,SHOW 0,ACCESS 1")
  (image-file "gpc¥face_w00.gpc") (image-mem 0 0)
  (exec-mem 2816 "GET 20 71 320 8 64")
  (exec-mem 2816 "ACCESS 0")
  (sound '|| 0)
  (sound '|| "uso¥Nurse08.uso")
  (sound '|| 1)
  (image-file "gpc¥aflame01.gpc") (image-mem 1 3)
  (image-file "b:¥gpc¥ns1_505.gpc") (image-mem 1 3)

; 	Intro begins here...

  (text-frame 3 324 52 379)
  (text-reset 15)
  ((cmd 204) 21 23)
  ((cmd 209) 1 2)
  (text #:col 1 'br)
  (text "　　　　" '|34368| "−") (str "Dentendo Hospital Courtyard") (str "−")
  (proc 15)
  (proc 10)
             (str "Nice to meet you. I'm Sakurako Yukikoji,")
  (str "Miss Nursia's attending nurse.")
  (proc 15)
  (proc 12) (proc 13)	; Dr. Akiba
  (proc 5)
      ; Dr. Akiba:
              (str "The pleasure is all mine. I'm Director" 'br)
  (str "Akihabara.")
  (proc 15)
  (proc 14)
  (proc 10)
             (str "I'm sorry for asking so much of you.")
  (proc 15)
  (proc 12) (proc 13)	; Dr. Akiba
  (proc 5)
      ; Dr. Akiba:
              (str "Oh, it's nothing, really. Dr. Tanchi" 'br)
  (str "here has cured countless incurable diseases.")
  (proc 15)
  (proc 14)
  (proc 10)
             (str "That's certainly reassuring.")
  (proc 15)
  (proc 12) (proc 13)	; Dr. Akiba
  (proc 5)
      ; Dr. Akiba:
              (str "Just leave everything to us.")
  (proc 15)
  (proc 14)
  (proc 10)
             (str "Thank you. I know it isn't much, but" 'br)
  (str "please, if you can accept this...")
  (proc 15)
  (proc 12) (proc 13)	; Dr. Akiba
  (proc 5)
      ; Dr. Akiba:
              (str "Oh, Osaka okonomiyaki!!! How'd you know")
  (str "this was my favorite!?")
  (proc 15)
  (proc 14)
  (proc 10)
             (str "Ho ho ho... Just a coincidence!")
  (proc 15)
  (proc 19)
  (exec-mem 18944 65535 528 33)
  
; 	Dialogue trees defined here...

  (loop
   (exec-mem 24576 1 1 0)
   (exec-mem 24576 3)
   (text-color 1)
   (text-frame 3 324 52 379)
   (proc 19)
   (branch-var Z
    (</>
; Think
     (/ (nop@) (set-var T 0) (set-var O 0) (seg-call))
; Look
     (/ (nop@) (set-var T 1) (set-var O 0) (seg-call))
; Talk
     (/
      (if (</>
           (// (? (= 21 #t) (= 22 #t) (= 23 #t)) (nop@) (set-var T 2) (set-var O 1) (seg-call))
           (//                                   (nop@) (set-var T 2) (set-var O 0) (seg-call)))))
; Action
     (/ (nop@) (set-var T 3) (set-var O 0) (seg-call))
; Move
     (/ (nop@) (set-var T 4) (set-var O 0) (seg-call))
; Save
     (/ (nop@) (set-var T 5) (set-var O 0) (seg-call))
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
   (str "Nursia has always been anemic and frail... We" 'br)
   (str "don't know why, but the specific gravity of her" 'br)
   (str "blood is less than half of a normal person's.")
   (proc 15)
   (text-color 7)
   (str "Man, I wonder... Can I really save her?")
   (proc 15)
   (proc 19)
   (set-reg 22 #t))
 (seg (? (= T 1) (= O 0))												; Look
   (proc 18)
   (text-color 7)
   (str "Nursia is being guarded by a troop of escorts. In" 'br)
   (str "the time since I last saw her, she seems to have" 'br)
   (str "grown up quite a bit...")
   (proc 15)
   (proc 19)
   (set-reg 23 #t))
 (seg (? (= T 2) (= O 0))												; Talk
   (proc 18)
   (proc 11)
           (str "Doctor Tanchi...")
   (proc 15)
   (proc 2)
       ; Tanchi:
           (str "Don't worry, Nursia. You're in good hands.")
   (str "I'll make you all better, I promise.")
   (proc 15)
   (proc 11)
           (str "With those words coming from you, Dr." 'br)
   (str "Tanchi...")
   (proc 15)
   (proc 19)
   (set-reg 21 #t))
 (seg (? (= T 2) (= O 1))
   (proc 18)
   (proc 12) (proc 13)	; Dr. Akiba
   (proc 5)
       ; Dr. Akiba:
               (str "Tanchi and Kirara, I'll be counting on" 'br)
   (str "you.")
   (proc 15)
   (proc 14)
   (proc 2)
       ; Tanchi:
           (str "I'll make her all better.")
   (proc 15)
   (proc 3)
   (exec-mem 2816 "GET 2 0 96 10 96") ; Aloof
   (proc 4)
   (proc 1)
       ; Kirara:
           (str "Me too!")
   (proc 15)
   (proc 6)
   ((cmd 209) 0 2)
   (text-frame 3 324 52 379) (text-reset 15)
   (text-frame 4 16 51 303)  (text-reset 15)
   (exec-mem 2816 "EXIT")
   (sound '|| 2)
   (set-reg 990 #f)
   (mes-jump "b:¥mes¥ns15_06.mes"))
 (seg (? (= T 3) (= O 0))												; Action
   (proc 18)
   (proc 12) (proc 13)	; Dr. Akiba
   (proc 5)
       ; Dr. Akiba:
               (str "Hey! Don't steal my okonomiyaki!")
   (proc 15)
   (proc 14)
   (proc 19))
 (seg (? (= T 4) (= O 0))												; Move
   (proc 18)
   (proc 12) (proc 13)	; Dr. Akiba
   (proc 5)
       ; Dr. Akiba:
               (str "You can go to the bathroom later!")
   (proc 15)
   (proc 14)
   (proc 19))
 (seg (? (= T 5) (= O 0))												; Save
   (proc 18)
   (mes-load? "mes¥save.mes")
; FMT
;  (branch-reg 750 (</> (/ (nop@)) (/ ((cmd 212)))))

;  (define-proc 10 (<> (text-color 5) (str "Yukikoji: ")))
;  (define-proc 11 (<> (text-color 11) (str "Nursia: ")))
   (proc 19)
   (set-var B 5)
   (set-var C 5)))