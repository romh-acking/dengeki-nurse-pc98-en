; Dengeki Nurse English Translation - NS13_02.MES
; Translated by Geometrizer
; Edited and commented by trentsignia
; --Description:--
; The Dentendo staff make it to the beach. Hooray!
(mes
 (meta (engine 'ADV) (charset "pc98"))
 (seg*
  (load-mem "cmd¥cappear.tcm" 6656)
; (define-proc 10 (<> (text-color 11) (str "Croco: "))) <--- only used once

; 	Character portraits:

  (define-proc 11 (<> (proc 3) (exec-mem 2816 "GET 2 10 0 10 96") (proc 4))) ; Happy

; 	And some other stuff while I'm here:

  (define-proc 9  (<> (exec-mem 2816 "ACCESS 0")))
  (define-proc 12 (<> (exec-mem 2816 "GET 1 5 23 10 96,VIEW 5 23 15 120")))
  (define-proc 13 (<> (exec-mem 10752 "COPY> b:¥gpc¥ns1_304.gpc,GPC")))
  (define-proc 14 (<> (exec-mem 2816 "SHOW 0,ACCESS 1")))

; 	Setup continues...

  (exec-mem 2816 "INIT,SHOW 0,ACCESS 1")
  (image-file "gpc¥face_w00.gpc") (image-mem 0 0)
  (exec-mem 2816 "GET 20 71 320 8 64")
  (exec-mem 2816 "GET 4 10 0 10 96")
  (exec-mem 2816 "GET 6 30 0 10 96")
  (proc 9)
  (sound '|| 0)
; PC-98
  (sound '|| "uso¥Nurse12.uso")
; FMT
; (sound '|| "Nurse12.fmt")
  (sound '|| 1)
  (exec-mem 10752 "INIT")
  (exec-mem 10752 "MODE V0E0M128")
  (exec-mem 10752 "LOAD> b:¥gpc¥ns1_304.gpc,TEMP")
  (exec-mem 10752 "LOAD> b:¥gpc¥ns1_305.gpc,TEMP")
  (exec-mem 10752 "LOAD> b:¥gpc¥ns1_306.gpc,TEMP")
  (exec-mem 10752 "LOAD> gpc¥Face_w00.gpc,TEMP")
  (image-file "gpc¥Aflame01.gpc") (image-mem 1 3)
  (proc 13) (image-mem 1 3)

; 	Intro begins here...

  (text-frame 3 324 52 379)
  (text-reset 15)
  ((cmd 209) 1 2)
  ((cmd 204) 16 22)
  (proc 1)
      ; Kirara:
          (str "Hooray! The beach!")
  (proc 15)
  (text-color 11)
  (str "Croco: Umi-wani! Umi-wanii!!!")
  (proc 15)
  (proc 19)
  (exec-mem 18944 65535 528 23)
  
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
     (/
      (if (</>
           (// (? (= 16 #t))                     (nop@) (set-var T 0) (set-var O 1) (seg-call))    ; (set-reg 20 #t)
           (//                                   (nop@) (set-var T 0) (set-var O 0) (seg-call)))))
; Look
     (/
      (if (</>
           (// (? (= 17 #t))                     (nop@) (set-var T 1) (set-var O 1) (seg-call))    ; (set-reg 21 #t)
           (//                                   (nop@) (set-var T 1) (set-var O 0) (seg-call))))) ; (set-reg 19 #t)
; Talk
     (/
      (if (</>
           (// (? (= 21 #t))                     (nop@) (set-var T 2) (set-var O 3) (seg-call))    ; (set-reg 22 #t)
           (// (? (= 20 #t) (= 21 #f))           (nop@) (set-var T 2) (set-var O 2) (seg-call))    ; (set-reg 17 #t)
           (// (? (= 18 #t) (= 19 #t) (= 20 #f)) (nop@) (set-var T 2) (set-var O 1) (seg-call))    ; (set-reg 16 #t)
           (//                                   (nop@) (set-var T 2) (set-var O 0) (seg-call))))) ; (set-reg 18 #t)
; Action
     (/ (nop@) (set-var T 3) (set-var O 0) (seg-call))
; Move
     (/
      (if (</>
           (// (? (= 22 #t))                     (nop@) (set-var T 4) (set-var O 1) (seg-call))    ; (mes-jump "b:¥mes¥ns13_03.mes")
           (//                                   (nop@) (set-var T 4) (set-var O 0) (seg-call)))))
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
   (str "Look at the smiles on their faces. I'm glad we" 'br)
   (str "came.")
   (proc 15)
   (proc 19))
 (seg (? (= T 0) (= O 1))
   (proc 18)
   (text-color 7)
   (str "That's right, the doctor shouldn't stay cooped up" 'br)
   (str "in his lab. He should check out young ladies in" 'br)
   (str "swimsuits too...")
   (proc 15)
   (text-color 7)
   (str "Anyway, I'm glad we made the outing!")
   (proc 15)
   (proc 19)
   (set-reg 20 #t))
 (seg (? (= T 1) (= O 0))												; Look
   (proc 18)
   (text-color 7)
   (str "Summer fun! The sea! The sun! And lots of hotties" 'br)
   (str "in bikinis!")
   (proc 15)
   (proc 19)
   (set-reg 19 #t))
 (seg (? (= T 1) (= O 1))
   (proc 18)
   (text-color 7)
   (str "I look at Kirara.")
   (proc 15)
   (text-color 7)
   (str "What kind of swimsuit would she wear...?")
   (proc 15)

; Tanchi fantasises...
   (text-color 7)
   (proc 14)
   (proc 13)
   (image-mem 1 3)
   (exec-mem 10752 "COPY> b:¥gpc¥ns1_305.gpc,GPC")
   (image-mem 1 3)
   (proc 9)
   (exec-mem 6656 4 28 51 303)
   (str "Wahaha... Maybe a high-leg one like this!")
   (proc 15)

; Kirara reacts...
   (proc 12) (exec-mem 2816 "PUT 4 5 23")
   (proc 1)
       ; Kirara:
           (str "What's wrong? Why are you staring at me" 'br)
   (str "like that?")
   (proc 15)

; Tanchi fantasises again...
   (proc 6) ; Clear portrait
   (proc 14)
   (proc 13)
   (image-mem 1 3)
   (exec-mem 10752 "COPY> b:¥gpc¥ns1_306.gpc,GPC")
   (image-mem 1 3)
   (proc 9)
   (exec-mem 6656 4 28 51 303)
   (text-color 7)
   (str "Or maybe... a T-back instead!")
   (proc 15)

; Kirara reacts...
   (proc 12) (exec-mem 2816 "PUT 6 5 23")
   (proc 1)
       ; Kirara:
           (str "Tanchi!!! You've got naughty thoughts" 'br)
   (str "going through your head!")
   (proc 15)

; Okay, get that out of here
   (proc 6) ; Clear portrait
   (proc 19)
   (proc 14)
   (proc 13)
   (image-mem 0 0)
   (proc 9)
   (exec-mem 6656 4 16 51 303)
   (proc 14)
   (exec-mem 10752 "COPY> gpc¥Face_w00.gpc,GPC")
   (image-mem 0 0)
   (proc 9)
   (set-reg 21 #t))
 (seg (? (= T 2) (= O 0))												; Talk
   (proc 18)
   (proc 2)
       ; Tanchi:
           (str "Honestly, those two are acting like little")
   (str "kids...")
   (proc 15)
   (proc 5)
       ; Dr. Akiba:
              (str "Ha ha ha! The two of them are like" 'br)
   (str "daughters to me.")
   (proc 15)
   (proc 19)
   (set-reg 18 #t))
 (seg (? (= T 2) (= O 1))
   (proc 18)
   (proc 5)
       ; Dr. Akiba:
              (str "But tell me...are young ladies really" 'br)
   (str "into fundoshi these days?")
   (proc 15)
   (proc 2)
       ; Tanchi:
           (str "Ah, those are actually called high-leg" 'br)
   (str "swimsuits and thongs.")
   (proc 15)
   (proc 19)
   (set-reg 16 #t))
 (seg (? (= T 2) (= O 2))
   (proc 18)
   (proc 2)
       ; Tanchi:
           (str "Anyway, I'm glad both of them are having" 'br)
   (str "fun.")
   (proc 15)
   (proc 5)
       ; Dr. Akiba:
              (str "Hmm. I wonder if Kirara would wear" 'br)
   (str "something like that...")
   (proc 15)
   (proc 2)
       ; Tanchi:
           (str "Hey, didn't you just say that she's like a")
   (str "daughter to you? What's going through that head of")
   (str "yours!?")
   (proc 15)
   (proc 19)
   (set-reg 17 #t))
 (seg (? (= T 2) (= O 3))
   (proc 18)
   (proc 11) ; Portrait (Happy)
   (proc 1)
       ; Kirara:
           (str "Hurry up and change so we can hit the" 'br)
   (str "beach!")
   (proc 15)
   (proc 6) ; Clear portrait
   (proc 2)
       ; Tanchi:
           (str "Right, right, on it.")
   (proc 15)
   (proc 19)
   (set-reg 22 #t))
 (seg (? (= T 3) (= O 0))												; Action
   (proc 18)
   (proc 11) ; Portrait (Happy)
   (proc 1)
       ; Kirara:
           (str "Tanchi, what are you doing?")
   (proc 15)
   (proc 6) ; Clear portrait
   (proc 2)
       ; Tanchi:
           (str "Um... Warmup exercises, obviously.")
   (proc 15)
   (proc 3) (exec-mem 2816 "GET 2 50 0 10 96") (proc 4) ; Portrait (Confused)
   (proc 1)
       ; Kirara:
           (str "Shouldn't you change into your swimsuit" 'br)
   (str "first?")
   (proc 15)
   (proc 6) ; Clear portrait
   (proc 19))
 (seg (? (= T 4) (= O 0))												; Move
   (proc 18)
   (text-color 7)
   (str "Warm-ups are a must before swimming! That's just" 'br)
   (str "medical common sense.")
   (proc 15)
   (proc 19))
 (seg (? (= T 4) (= O 1))
   (proc 18)
   (proc 2)
       ; Tanchi:
           (str "Doctor, should we head out?")
   (proc 15)
   (proc 5)
       ; Dr. Akiba:
              (str "Yes, let's go.")
   (proc 15)
   (text-color 7)
   (str "Mmm, I'm getting all fired up!")
   (proc 15)
   ((cmd 209) 0 2)
   (text-frame 3 324 52 379) (text-reset 15)
   (text-frame 4 16 51 303)  (text-reset 15)
   (exec-mem 10752 "EXIT")
   (exec-mem 2816 "EXIT")
   (set-reg 990 #f)
   (mes-jump "b:¥mes¥ns13_03.mes"))
 (seg (? (= T 5) (= O 0))												; Save
   (proc 18)
   (mes-load? "mes¥save.mes")
; FMT
;  (branch-reg 750 (</> (/ (nop@)) (/ ((cmd 212)))))
;  (define-proc 10 (<> (text-color 11) (str "Croco: ")))
   (proc 19)
   (set-var B 3)
   (set-var C 3)))