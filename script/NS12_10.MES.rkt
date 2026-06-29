; Dengeki Nurse English Translation - NS12_10.MES
; Translated by Geometrizer
; Edited and commented by trentsignia
; --Description:--
; Kirara crawls into the air vent, with Tanchi close behind. Oh, he's real close behind all right...
; -----Notes:-----
; There are two additional hotspots in this scene that can be triggered by poking at Kirara's poophole and cooch. Yes.
(mes
 (meta (engine 'ADV) (charset "pc98"))
 (seg*

; 	Character portraits:

  (define-proc 10 (<> (proc 3) (exec-mem 2816 "GET 2 30 0 10 96") (proc 4))) ; Angry
  (define-proc 11 (<> (proc 3) (exec-mem 2816 "GET 2 70 0 10 96") (proc 4))) ; Flushed

; 	Setup continues...

  (load-mem "dat¥icondat1.dat" 33024)
  (exec-mem 2816 "INIT,SHOW 0,ACCESS 1")
  (image-file "gpc¥face_w00.gpc") (image-mem 0 0)
  (exec-mem 2816 "GET 20 71 320 8 64")
  (exec-mem 2816 "ACCESS 0")
  (sound '|| 0)
; PC-98
  (sound '|| "uso¥Nurse14.uso")
; FMT
; (sound '|| "Nurse14.fmt")
  (sound '|| 1)
  (image-file "b:¥gpc¥ns1_220.gpc") (image-mem 1 3)

; 	Intro begins here...

  (text-frame 3 324 52 379)
  (text-reset 15)
  ((cmd 209) 1 2)
  ((cmd 204) 74 80)
  (proc 2)
      ; Tanchi:
          (str "Ohh... This is a fine view...")
  (proc 15)
  (proc 1)
      ; Kirara:
          (str "Stop looking at me!")
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
     (/
      (if (</>
           (// (? (= 74 #t))                     (nop@) (set-var T 0) (set-var O 1) (seg-call))    ; (set-reg 77 #t)
           (//                                   (nop@) (set-var T 0) (set-var O 0) (seg-call)))))
; Look
     (/
      (if (</>
           (// (? (= 76 #t) (= 77 #t))           (nop@) (set-var T 1) (set-var O 2) (seg-call))    ; (set-reg 80 #t)
           (// (? (= 75 #t) (= 74 #t))           (nop@) (set-var T 1) (set-var O 1) (seg-call))    ; (set-reg 76 #t)
           (//                                   (nop@) (set-var T 1) (set-var O 0) (seg-call))))) ; (set-reg 75 #t)
; Talk
     (/
      (if (</>
           (// (? (= 80 #t))                     (nop@) (set-var T 2) (set-var O 2) (seg-call))    ; (mes-jump "b:¥mes¥ns12_11.mes")
           (// (? (= 78 #t) (= 79 #t) (= 80 #f)) (nop@) (set-var T 2) (set-var O 1) (seg-call))    ; (set-reg 74 #t)
           (//                                   (nop@) (set-var T 2) (set-var O 0) (seg-call))))) ; (set-reg 78 #t)
; Action
     (/
      (if (</>
           (// (? (= 74 #t))                     (nop@) (set-var T 3) (set-var O 1) (seg-call))
           (//                                   (nop@) (set-var T 3) (set-var O 0) (seg-call))))) ; (set-reg 79 #t)
; Move
     (/ (nop@) (set-var T 4) (set-var O 0) (seg-call))
; Save
     (/ (nop@) (set-var T 5) (set-var O 0) (seg-call))
; Unused
     (/ (nop@))
; Poophole
     (/ (nop@) (set-var T 7) (set-var O 0) (seg-call))
; Cooch
     (/ (nop@) (set-var T 8) (set-var O 0) (seg-call))
; Unused
     (/ (nop@))
     (/ (nop@))
     (/ (nop@))
     (/ (nop@))
     (/ (nop@))))))

; 	Text continues here...

 (seg (? (= T 0) (= O 0))												; Think
   (proc 18)
   (text-color 7)
   (str "This is a narrow passage, but it's oddly cozy.")
   (proc 15)
   (proc 19))
 (seg (? (= T 0) (= O 1))
   (proc 18)
   (text-color 7)
   (str "We should get out of here...but part of me wants" 'br)
   (str "to stay a little longer... I feel torn...like" 'br)
   (str "Hamlet!")
   (proc 15)
   (proc 19)
   (set-reg 77 #t))
 (seg (? (= T 1) (= O 0))												; Look
   (proc 18)
   (proc 2)
       ; Tanchi:
           (str "Hmm, it's all cobwebbed in there...")
   (proc 15)
   (proc 10) ; Portrait (Angry)
   (proc 1)
       ; Kirara:
           (str "What did you just say!?")
   (proc 15)
   (proc 6) ; Clear Portrait
   (proc 2)
       ; Tanchi:
           (str "I mean, in the passage...")
   (proc 15)
   (proc 19)
   (set-reg 75 #t))
 (seg (? (= T 1) (= O 1))
   (proc 18)
   (proc 2)
       ; Tanchi:
           (str "Oh, a yellow stain...")
   (proc 15)
   (proc 11) ; Portrait (Flushed)
   (proc 1)
       ; Kirara:
           (str "No way! Gross!")
   (proc 15)
   (proc 6) ; Clear Portrait
   (proc 2)
       ; Tanchi:
           (str "Yeah, it's right there on the wall...")
   (proc 15)
   (proc 10) ; Portrait (Angry)
   (proc 1)
       ; Kirara:
           (str "Tanchi!")
   (proc 15)
   (proc 6) ; Clear Portrait
   (proc 19)
   (set-reg 76 #t))
 (seg (? (= T 1) (= O 2))
   (proc 18)
   (proc 2)
       ; Tanchi:
           (str "Ah!")
   (proc 15)
   (proc 11) ; Portrait (Flushed)
   (proc 1)
       ; Kirara:
           (str "Wh-What now...?")
   (proc 15)
   (proc 6) ; Clear Portrait
   (proc 2)
       ; Tanchi:
           (str "There's an air vent over here! Try looking")
   (str "through it!")
   (proc 15)
   (proc 10) ; Portrait (Angry)
   (proc 1)
       ; Kirara:
           (str "Fine...")
   (proc 15)
   (proc 6) ; Clear Portrait
   (proc 2)
       ; Tanchi:
           (str "Why are you so mad all the time?")
   (proc 15)
   (proc 11) ; Portrait (Flushed)
   (proc 1)
       ; Kirara:
           (str "Sorry, you just get me worked up...")
   (proc 15)
   (proc 6) ; Clear Portrait
   (proc 19)
   (set-reg 80 #t))
 (seg (? (= T 2) (= O 0))												; Talk
   (proc 18)
   (proc 1)
       ; Kirara:
           (str "Stop looking at me!")
   (proc 15)
   (proc 2)
       ; Tanchi:
           (str "I can't help it, you're right up to my" 'br)
   (str "face!")
   (proc 15)
   (proc 19)
   (set-reg 78 #t))
 (seg (? (= T 2) (= O 1))
   (proc 18)
   (proc 2)
       ; Tanchi:
           (str "If you're gonna complain, why don't we" 'br)
   (str "switch places? It's super tight in here, though.")
   (proc 15)
   (proc 10) ; Portrait (Angry)
   (proc 1)
       ; Kirara:
           (str "Fine, whatever! How can you be so carefree")
  (str "in an emergency like this!?")
   (proc 15)
   (proc 6) ; Clear Portrait
   (proc 19)
   (set-reg 74 #t))
 (seg (? (= T 2) (= O 2))
   (proc 18)
   (proc 3) (exec-mem 2816 "GET 2 40 0 10 96") (proc 4) ; Portrait (Shocked)
   (sound '|| 0)
; PC-98
   (sound '|se | 26)
; FMT
;  (sound '|se | 5)
   (proc 1)
       ; Kirara:
           (str "Ah!")
   (proc 15)
   (proc 6) ; Clear Portrait
   (proc 2)
       ; Tanchi:
           (str "What is it? What do you see?")
   (proc 15)
   (proc 1)
       ; Kirara:
           (str "Shh... I can see the Special Morals" 'br)
   (str "Committee room!")
   (proc 15)
   ((cmd 209) 0 2)
   (text-frame 3 324 52 379) (text-reset 15)
   (text-frame 4 16 51 303)  (text-reset 15)
   (exec-mem 2816 "EXIT")
   (set-reg 990 #f)
   (mes-jump "b:¥mes¥ns12_11.mes"))
 (seg (? (= T 3) (= O 0))												; Action
   (proc 18)
   (text-color 7)
   (str "Haaaaaa...")
   (proc 15)
   (proc 10) ; Portrait (Angry)
   (proc 1)
       ; Kirara:
           (str "Don't breathe on me!")
   (proc 15)
   (proc 6) ; Clear Portrait
   (proc 2)
       ; Tanchi:
           (str "I wasn't doing it on purpose! Jeez! Am I" 'br)
   (str "supposed to hold my breath and die?")
   (proc 15)
   (proc 19)
   (set-reg 79 #t))
 (seg (? (= T 3) (= O 1))
   (proc 18)
   (text-color 1)
   (str "Poke poke poke...")
   (proc 15)
   (proc 11) ; Portrait (Flushed)
   (proc 1)
       ; Kirara:
           (str "Heyyyy... No... Don't do that!")
   (proc 15)
   (proc 6) ; Clear Portrait
   (proc 2)
       ; Tanchi:
           (str "Heh heh heh heh...")
   (proc 15)
   (proc 19))
 (seg (? (= T 4) (= O 0))												; Move
   (proc 18)
   (proc 11) ; Portrait (Flushed)
   (proc 1)
       ; Kirara:
           (str "Stop wiggling around, this place is" 'br)
   (str "cramped enough!")
   (proc 15)
   (proc 6) ; Clear Portrait
   (proc 19))
 (seg (? (= T 5) (= O 0))												; Save
   (proc 18)
   (mes-load? "mes¥save.mes")
; FMT
;  (branch-reg 750 (</> (/ (nop@)) (/ ((cmd 212)))))

   (proc 19)
   (set-var B 2)
   (set-var C 2))
 (seg (? (= T 7) (= O 0))												; Poophole (336, 96)
   (proc 18)
   (proc 11) ; Portrait (Flushed)
   (proc 1)
       ; Kirara:
           (str "Ah! Don't touch me there!")
   (proc 15)
   (proc 6) ; Clear Portrait
   (proc 19))
 (seg (? (= T 8) (= O 0))												; Cooch (300, 140)
   (proc 18)
   (proc 11) ; Portrait (Flushed)
   (proc 1)
       ; Kirara:
           (str "Ahhh... S-Stop it... Stop, it's making me" 'br)
   (str "feel...")
   (proc 15)
   (proc 6) ; Clear Portrait
   (proc 19)))