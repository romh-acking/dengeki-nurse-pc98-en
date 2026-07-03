; Dengeki Nurse English Translation - NS15_07.MES
; Translated by Geometrizer
; Edited and commented by trentsignia
; --Description:--
; Show's over, Kirara...
(mes
 (meta (engine 'ADV) (charset "pc98"))
 (seg*

; 	Character portraits:

  (define-proc 10 (<> (proc 3) (exec-mem 2816 "GET 2 60 0 10 96") (proc 4))) ; Shouting
  (define-proc 11 (<> (proc 3) (exec-mem 2816 "GET 2 0 96 10 96") (proc 4))) ; Aloof

; 	lol

  (define-proc 12 (<> (str "..............")))

; 	Setup continues...

  (exec-mem 2816 "INIT,SHOW 0,ACCESS 1")
  (text-frame 0 0 79 399)
  (text-reset 0)
  (image-file "b:¥gpc¥ns1_514.gpc") (image-mem 0 0) (exec-mem 2816 "GET 10 0 0 24 144")
  (image-file "gpc¥face_w00.gpc")   (image-mem 0 0) (exec-mem 2816 "GET 20 71 320 8 64")
  (exec-mem 2816 "ACCESS 0")
  (exec-mem 10752 "INIT")
  (exec-mem 10752 "MODE V0E0M64")
  (exec-mem 10752 "LOAD> b:¥gpc¥ns1_515.gpc,TEMP")
  (sound '|| 0)
  (sound '|| "uso¥Nurse11.uso")
  (sound '|| 1)
  (image-file "gpc¥ns1_k04.gpc")    (image-mem 1 3) (exec-mem 2816 "GET 9 0 0 24 144")
  (image-file "b:¥gpc¥ns1_513.gpc") (image-mem 1 3 16 93)

; 	Intro begins here...

  (text-frame 3 324 52 379)
  (text-reset 15)
  ((cmd 204) 24 40)
  ((cmd 209) 1 2)
  (proc 2)
      ; Tanchi:
          (str "Dammit... How did this happen...")
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
     (/
      (if (</>
           (// (? (= 41 #t) (= 42 #t)) (nop@) (set-var T 1) (set-var O 1) (seg-call))    ; (mes-jump "b:¥mes¥ns15_08.mes")
           (//                         (nop@) (set-var T 1) (set-var O 0) (seg-call))))) ; (set-reg 41 #t)
; Talk
     (/ (nop@) (set-var T 2) (set-var O 0) (seg-call))
; Action
     (/ (nop@) (set-var T 3) (set-var O 0) (seg-call)) ; (set-reg 42 #t)
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
   (str "Nursia...")
   (proc 15)
   (proc 19))
 (seg (? (= T 1) (= O 0))												; Look
   (proc 18)
   (text-color 7)
   (str "The ring that slipped from Nursia's finger is in" 'br)
   (str "my hand... It's still slightly warm...")
   (proc 15)
   (proc 19)
   (set-reg 41 #t))
 (seg (? (= T 1) (= O 1))
   (proc 18)
   (text-color 7)
   (str "I look at the bed... Just moments ago, Nursia had" 'br)
   (str "sat there, smiling...")
   (proc 15)
   (proc 11) ; Portrait (Aloof)
   (proc 1)
       ; Kirara:
           (str "What happened?")
   (proc 15)
   (proc 6) ; Clear Portrait
   (text-color 7)
   (str "The door opens and Kirara walks in.")
   (proc 15)
   (proc 2)
       ; Tanchi:
           (str "You took your time getting here!")
   (proc 15)
   (proc 11) ; Portrait (Shouting)
   (proc 1)
       ; Kirara:
           (str "Why are you yelling at me? I've got things")
   (str "to do too!")
   (proc 15)
   (proc 6) ; Clear Portrait
   (proc 2)
       ; Tanchi:
           (str "Nursia was kidnapped by Black Nurse!")
   (proc 15)
   (proc 11) ; Portrait (Shouting)
   (proc 1)
       ; Kirara:
           (str "Black Nurse!?")
   (proc 15)
   (proc 6) ; Clear Portrait
   (proc 2)
       ; Tanchi:
           (str "If you actually showed up on time, this" 'br)
   (str "wouldn't have happened in the first place!")
   (proc 15)
   (proc 3) (exec-mem 2816 "GET 2 20 0 10 96") (proc 4) ; Portrait (Sad)
   (proc 1)
       ; Kirara:
           (str "Even if you say that...")
   (proc 15)
   (proc 6) ; Clear Portrait
   (proc 11) ; Portrait (Aloof)
   (proc 1)
       ; Kirara:
           (str "Isn't that fine? She had an incurable" 'br)
   (str "disease! She's not going to live anyway, right?")
   (proc 15)

; 	IPV counter: 1

   (sound '|| 0)
   (sound '|se | 20)
   (proc 6) ; Clear Portrait
   (exec-mem 2816 "GET 9 16 93 40 237")
   (exec-mem 2816 "VIEW 16 93 40 237,PUT 10 16 93,FREE 10")
   (text-color 1)
   (text 'br "　　　　　　　　　　ＳＬＡＰ！")
   (proc 15)

; 	Text continues...

   (proc 2)
       ; Tanchi:
           (str "Stupid idiot! What do you think a nurse's" 'br)
   (str "job IS!?")
   (proc 15)
   (sound '|| 0)
   (sound '|| "uso¥Nurse11.uso")
   (sound '|| 3)
   (proc 1)
       ; Kirara:
           (proc 12)
   (proc 15)
   (proc 2)
       ; Tanchi:
           (str "If that's how you're going to think, you" 'br)
   (str "better stop being a nurse!")
   (proc 15)
   (proc 1)
       ; Kirara:
           (proc 12)
   (proc 15)
   (proc 2)
       ; Tanchi:
           (proc 12)
   (proc 15)
   (proc 1)
       ; Kirara:
           (proc 12)
   (proc 15)

; 	Kirara runs off!

   (exec-mem 19456 2 8 4 103 75 8 40 103 40 7 30)
   (exec-mem 2816 "VIEW 16 93 40 237,PUT 9 16 93,FREE 9")
   (exec-mem 10752 "COPY> b:¥gpc¥ns1_515.gpc,GPC")
   (image-mem 1 3)
   (exec-mem 19456 1 8 40 103 40 8 4 103 75 8 30)

; 	Text continues

   (proc 1)
       ; Kirara:
           (str "TANCHI, YOU JERK!")
   (proc 15)
   (proc 2)
       ; Tanchi:
           (str "Hey! Kirara...")
   (proc 15)
   (proc 1)
       ; Kirara:
           (str "Tanchi... Tanchi... ") (text "Ｉ" '|34368| "ＨＡＴＥ" '|34368| "ＹＯＵ！")
   (proc 15)
   (proc 2)
       ; Tanchi:
           (str "Kirara...!")
   (proc 15)
   ((cmd 209) 0 2)
   (text-frame 3 324 52 379) (text-reset 15)
   (text-frame 4 16 51 303)  (text-reset 15)
   (exec-mem 10752 "EXIT")
   (exec-mem 2816 "EXIT")
   (sound '|| 2)
   (set-reg 990 #f)
   (mes-jump "b:¥mes¥ns15_08.mes"))
 (seg (? (= T 2) (= O 0))												; Talk
   (proc 18)
   (text-color 7)
   (str "Black Nurse vanished without a trace... And she" 'br)
   (str "took Nursia with her...")
   (proc 15)
   (proc 19))
 (seg (? (= T 3) (= O 0))												; Action
   (proc 18)
   (text-color 7)
   (str "I tightly grip the ring in my hand... A sense of" 'br)
   (str "helplessness is welling up inside me...")
   (proc 15)
   (proc 19)
   (set-reg 42 #t))
 (seg (? (= T 4) (= O 0))												; Move
   (proc 18)
   (text-color 7)
   (str "I turn to the window and look outside. Neither" 'br)
   (str "Black Nurse nor Nursia in sight...")
   (proc 15)
   (proc 19))
 (seg (? (= T 5) (= O 0))												; Save
   (proc 18)
   (mes-load? "mes¥save.mes")
; FMT
;  (branch-reg 750 (</> (/ (nop@)) (/ ((cmd 212)))))

   (proc 19)
   (set-var B 5)
   (set-var C 5)))