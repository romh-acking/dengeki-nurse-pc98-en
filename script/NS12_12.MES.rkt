; Dengeki Nurse English Translation - NS12_12.MES
; Translated by Geometrizer
; Edited and commented by trentsignia
; --Description:--
; It's a race to find Kirara's pendant before something bad happens!
; --To change for FMT:--
; Battle stuff...
(mes
 (meta (engine 'ADV) (charset "pc98"))
 (seg*
  (define-proc 10 (<> (text-color 11) (str "Momoko: ")))
  (define-proc 11 (<> (text-color 5)  (str "Cleaning Lady: ")))

; 	Character portraits:

  (define-proc 9  (<> (proc 3) (exec-mem 2816 "GET 2 0 0 10 96")  (proc 4))) ; Smiling
  (define-proc 12 (<> (proc 3) (exec-mem 2816 "GET 2 30 0 10 96") (proc 4))) ; Angry
  (define-proc 13 (<> (proc 3) (exec-mem 2816 "GET 2 50 0 10 96") (proc 4))) ; Confused
  (define-proc 14 (<> (proc 3) (exec-mem 2816 "GET 2 60 0 10 96") (proc 4))) ; Shouting

; 	Setup continues...

; FMT
; (if (</> (// (? (= 940 #t)) (nop@)) (// (? (= 941 #t)) (nop@)) (//
  (sound '|| 0)
  (exec-mem 2816 "INIT,SHOW 0,ACCESS 1")
  (text-frame 0 0 79 399) (text-reset 0) (image-file "b:¥gpc¥ns1_222.gpc") (image-mem 0 0)     (exec-mem 2816 "GET 8 24 16 50 303")
  (text-frame 0 0 79 399) (text-reset 0) (image-file "b:¥gpc¥ns1_215.gpc") (image-mem 0 0 0 0) (exec-mem 2816 "GET 4 0 0 10 303")
  (text-frame 0 0 79 399) (text-reset 0) (image-file "gpc¥face_w00.gpc")   (image-mem 0 0)     (exec-mem 2816 "GET 20 71 320 8 64")
  (exec-mem 2816 "ACCESS 0")
  (image-file "b:¥gpc¥ns1_213.gpc") (image-mem 1 3)

; 	Intro begins here...

  (text-frame 3 324 52 379)
  (text-reset 15)
  ((cmd 209) 1 2)
  ((cmd 204) 89 93)
  (proc 13) ; Portrait (Confused)
  (proc 1)
      ; Kirara:
          (str "We changed clothes in this bathroom," 'br)
   (str "didn't we?")
  (proc 15)
  (proc 6) ; Clear portrait
  (proc 2)
      ; Tanchi:
          (str "Yeah, but all the bathrooms look the same,")
   (str "so I'm not sure...")
  (proc 15)

; 	Momoko appears!

  (exec-mem 1280 13 14 15 11)
  (exec-mem 2816 "VIEW 25 16 50 303,OVER 1,PUT 8 25 16,FREE 8")
  (sound '|| 0)
; PC-98
  (sound '|| "uso¥Nurse10.uso")
; FMT
; (sound '|| "Nurse10.fmt")
  (sound '|| 1)

; 	Text continues

  (proc 10)
          (str "Ah! You two... You two escaped from the" 'br)
   (str "Reflection Cell!?")
  (proc 15)
  (proc 14) ; Portrait (Shouting)
  (proc 1)
      ; Kirara:
          (str "Of course! Like we'd stick around in a" 'br)
   (str "place like that!")
  (proc 15)
  (proc 6) ; Clear portrait
  (proc 10)
          (str "The cheek! I'll make you regret that!")
  (proc 15)
  (proc 19)
  (exec-mem 18944 65535 528 33)
  
; 	Dialogue trees defined here...

  (loop
; FMT
;  (branch-reg 940 (</> (/ (nop@)) (/ (set-var T 2) (set-var O 4) (seg-call)))) (branch-reg 941 (</> (/ (nop@)) (/ (set-var T 2) (set-var O 5) (seg-call))))
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
           (// (? (= 90 #t))                     (nop@) (set-var T 0) (set-var O 2) (seg-call))
           (// (? (= 89 #t) (= 90 #f))           (nop@) (set-var T 0) (set-var O 1) (seg-call))    ; (set-reg 93 #t)
           (//                                   (nop@) (set-var T 0) (set-var O 0) (seg-call)))))
; Look
     (/
      (if (</>
           (// (? (= 90 #t))                     (nop@) (set-var T 1) (set-var O 2) (seg-call))
           (// (? (= 91 #t) (= 92 #t) (= 90 #f)) (nop@) (set-var T 1) (set-var O 1) (seg-call))    ; (set-reg 90 #t)
           (//                                   (nop@) (set-var T 1) (set-var O 0) (seg-call))))) ; (set-reg 91 #t)
; Talk
     (/
      (if (</>
           (// (? (= 90 #t))                     (nop@) (set-var T 2) (set-var O 3) (seg-call))    ; (mes-jump "b:¥mes¥ns12_13.mes")
           (// (? (= 92 #t) (= 90 #f))           (nop@) (set-var T 2) (set-var O 2) (seg-call))
           (// (? (= 93 #t) (= 92 #f))           (nop@) (set-var T 2) (set-var O 1) (seg-call))    ; (set-reg 92 #t)
           (//                                   (nop@) (set-var T 2) (set-var O 0) (seg-call))))) ; (set-reg 89 #t)
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
   (str "Dammit, the pendant's so close I can touch it!")
   (proc 15)
   (proc 19))
 (seg (? (= T 0) (= O 1))
   (proc 18)
   (text-color 7)
   (str "This is bad. If we get tossed back into the" 'br)
   (str "Reflection Cell, we won't get out...")
   (proc 15)
   (text-color 7)
   (str "We've got to defeat her and snatch the pendant...")
   (proc 15)
   (proc 19)
   (set-reg 93 #t))
 (seg (? (= T 0) (= O 2))
   (proc 18)
   (text-color 7)
   (str "Okay... With the pendant we've got the upper hand!")
   (proc 15)
   (proc 19))
 (seg (? (= T 1) (= O 0))												; Look
   (proc 18)
   (text-color 7)
   (str "That's Momoko from the Sailor Nurse Squad. She's" 'br)
   (str "got a cute face, but unfortunately she's a Black" 'br)
   (str "Cross Nurse Commando.")
   (proc 15)
   (proc 19)
   (set-reg 91 #t))
 (seg (? (= T 1) (= O 1))
   (proc 18)
   (text-color 7)
   (str "Aw, man... The pendant has to be somewhere in this")
   (str "bathroom...")
   (proc 15)

   (exec-mem 2816 "GET 5 5 99 11 205")
   (exec-mem 2816 "VIEW 5 99 15 303,PUT 4 5 99,FREE 4")
; ^ Cleaning Lady appears

   (proc 11)
       ; Cleaning Lady:
                  (str "Seriously, who leaves their clothes")
   (str "lying around in the bathroom like this?")
   (proc 15)
   (proc 2)
       ; Tanchi:
           (str "!!!")
   (proc 15)
   (proc 1)
       ; Kirara:
           (str "Oh, ha ha, sorry! That's my bad!")
   (proc 15)
   (proc 11)
       ; Cleaning Lady:
                  (str "A lab coat as well, how nostalgic." 'br)
   (str "Here you go, but don't just leave things lying" 'br)
   (str "around next time!")
   (proc 15)
   (text-color 7)
   (str "Kirara and I got the clothes back. And now we have")
   (str "the pendant back as well!")
   (proc 15)

   (exec-mem 2816 "VIEW 5 99 15 303,PUT 5 5 99,FREE 5")
; ^ Cleaning Lady leaves

   (proc 19)
   (set-reg 90 #t))
 (seg (? (= T 1) (= O 2))
   (proc 18)
   (proc 2)
       ; Tanchi:
           (str "Heh heh heh heh...")
   (proc 15)
   (proc 10)
       ; Momoko:
           (str "Hey, stop grinning at me like that!")
   (proc 15)
   (proc 19))
 (seg (? (= T 2) (= O 0))												; Talk
   (proc 18)
   (proc 2)
       ; Tanchi:
           (str "So what are we supposed to do?")
   (proc 15)
   (proc 13) ; Portrait (Confused)
   (proc 1)
       ; Kirara:
           (str "This isn't good. She's not that tough, but")
   (str "not someone we could beat barehanded...")
   (proc 15)
   (proc 6) ; Clear portrait
   (proc 19)
   (set-reg 89 #t))
 (seg (? (= T 2) (= O 1))
   (proc 18)
   (proc 2)
       ; Tanchi:
           (str "Then I've got no choice. I don't make a" 'br)
   (str "habit of hitting girls, but I'll take her on!")
   (proc 15)
   (proc 14) ; Portrait (Shouting)
   (proc 1)
       ; Kirara:
           (str "Don't, you're making a terrible mistake!")
   (proc 15)
   (proc 6) ; Clear portrait
   (proc 10)
       ; Momoko:
           (str "Bring it on, either one of you!")
   (proc 15)
   (proc 19)
   (set-reg 92 #t))
 (seg (? (= T 2) (= O 2))
   (proc 18)
   (proc 10)
       ; Momoko:
           (str "So which one of you are gonna take me on?")
   (proc 15)
   (proc 19))
 (seg (? (= T 2) (= O 3))
   (proc 18)
   (proc 10)
       ; Momoko:
           (str "What are you mumbling about? If you're not")
   (str "gonna try to fight me, then go back to the" 'br)
   (str "Reflection Cell!")
   (proc 15)
   (proc 9) ; Portrait (Smiling)
   (proc 1)
       ; Kirara:
           (str "The Reflection Cell's days are numbered" 'br)
   (str "since Akiko's fate's already been decided!")
   (proc 15)
   (proc 6) ; Clear portrait
   (proc 10)
       ; Momoko:
           (str "W-What are you on about...?")
   (proc 15)
   (proc 9) ; Portrait (Smiling)
   (proc 1)
       ; Kirara:
           (str "Don't play dumb with me, you're Momoko of" 'br)
   (str "the Sailor Nurse Squad!")
   (proc 15)
   (proc 6) ; Clear portrait
   (proc 10)
       ; Momoko:
           (str "Eek! Who the heck are you!?")
   (proc 15)
   (proc 9) ; Portrait (Smiling)
   (proc 1)
       ; Kirara:
           (str "Hehehe...")
   (proc 15)

; 	Transition into battle scene...
; 	As usual, the FM Towns version implements this a bit differently

; FMT
;  (sound '|| 2)
   ((cmd 209) 0 2)
   (proc 6) ; Clear portrait
   (exec-mem 2816 "EXIT")
; FMT
;  (set-var K 2) (sound '|| 0)
   (mes-load? "mes¥chang0.mes")
;  FMT:
;(seg (? (= T 2) (= O 4)) (nop@) (set-reg 940 #f)

   (exec-mem 2816 "INIT,SHOW 0,ACCESS 1")
   (text-frame 0 0 79 399)
   (text-reset 0)
   (image-file "gpc¥face_w00.gpc")   (image-mem 0) (exec-mem 2816 "ACCESS 0")
   (image-file "gpc¥aflame01.gpc")   (image-mem 1 3)
   (image-file "b:¥gpc¥ns1_213.gpc") (image-mem 1 0)
   (image-file "b:¥gpc¥ns1_222.gpc") (image-mem 1 3)
   (sound '|| 0)
; PC-98
   (sound '|| "uso¥Nurse10.uso")
; FMT
;  (sound '|| "Nurse10.fmt")
   (sound '|| 1)
   ((cmd 209) 1 2)

; 	Text continues here

   (text-frame 3 324 52 379)
   (text-reset 15)
   (proc 10)
       ; Momoko:
           (str "Oh, what the BEEP!?")
   (proc 15)
   (proc 14) ; Portrait (Shouting)
   (proc 0)
       ; Dengeki Nurse:
                  (str "Now's your chance to apologize to" 'br)
   (str "me!")
   (proc 15)
   (proc 6) ; Clear portrait
   (proc 2)
       ; Tanchi:
           (str "That's right! This lady's totally crazy!" 'br)
   (str "Apologize if you know what's good for you!")
   (proc 15)
   (proc 14) ; Portrait (Shouting)
   (proc 0)
       ; Dengeki Nurse:
                  (str "You can shut your smug trap!")
   (proc 15)
   (proc 6) ; Clear portrait
   (proc 2)
       ; Tanchi:
           (str "Ahh! Yes, ma'am...")
   (proc 15)
   (proc 10)
       ; Momoko:
           (str "Hm-hm-hmmm! Like an insect flying straight")
   (str "into the fire! Prepare yourself!")
   (proc 15)
   (exec-mem 2816 "EXIT")
   (set-var U 4)
; FMT
;  (set-reg 988 #f)
   (sound '|| 2)
; PC-98
   (mes-load? "mes¥action1.mes")
; FMT
;  (mes-jump "mes¥action04.mes")) (seg (? (= T 2) (= O 5)) (nop@) (set-reg 941 #f) (set-reg 311 #f)

   (exec-mem 2816 "INIT,SHOW 0,ACCESS 1")
   (text-frame 0 0 79 399)
   (text-reset 0)
   (image-file "gpc¥face_w00.gpc")
; PC-98
   (image-mem 0)
; FMT
;  (image-mem 0 0)
   (exec-mem 2816 "ACCESS 0")
   (image-file "gpc¥aflame01.gpc")
; PC-98
   (image-mem 1 3)
; FMT
;  (image-mem 0 0)
   (image-file "b:¥gpc¥ns1_213.gpc")
   (image-mem 1 0)
   (image-file "b:¥gpc¥ns1_223.gpc")
; PC-98
   (image-mem 1 3)
; FMT
;  (image-mem 1 0)
   (exec-mem 6656 8)
   (text-frame 3 324 52 379)
   (text-reset 15)
   (sound '|| 0)
; PC-98
   (sound '|| "uso¥Nurse10.uso")
; FMT
;  (sound '|| "Nurse10.fmt") (sound '|| 100)
   (sound '|| 1)
   (proc 14) ; Portrait (Shouting)
   (proc 0)
       ; Dengeki Nurse:
                  (str "Now where's Akiko? And where's your")
   (str "captain Asuka?")
   (proc 15)
   (proc 6) ; Clear portrait
   (proc 10)
       ; Momoko:
           (str "If I told the likes of you, I'd face the" 'br)
   (str "captain's punishment!")
   (proc 15)
   (proc 14) ; Portrait (Shouting)
   (proc 0)
       ; Dengeki Nurse:
                  (str "Girl, if you don't spill you're" 'br)
   (str "gonna face MINE!")
   (proc 15)
   (proc 6) ; Clear portrait
   (proc 2)
       ; Tanchi:
           (str "Hmm, I wonder if I could punish her too...")
   (proc 15)
   (proc 10)
       ; Momoko:
           (str "Akiko is in the staff dorm, but it's too" 'br)
   (str "late... By now, the captain is...")
   (proc 15)
   (proc 14) ; Portrait (Shouting)
   (proc 0)
       ; Dengeki Nurse:
                  (str "Good enough! Let's move!")
   (proc 15)
   (proc 6) ; Clear portrait
   (proc 2)
       ; Tanchi:
           (str "Hold on, I still wanna punish Momoko!")
   (proc 15)
   (proc 12) ; Portrait (Angry)
   (proc 0)
       ; Dengeki Nurse:
                  (str "You're coming with me!")
   (proc 15)
   ((cmd 209) 0 2)
   (text-frame 3 324 52 379) (text-reset 15)
   (text-frame 4 16 51 303)  (text-reset 15)
   (exec-mem 2816 "EXIT")
   (sound '|| 2)
   (set-reg 990 #f)
   (mes-jump "b:¥mes¥ns12_13.mes"))
 (seg (? (= T 3) (= O 0))												; Action
   (proc 18)
   (proc 2)
       ; Tanchi:
           (str "Dwaaaaaaaaa!!!!!!!")
   (proc 15)
   (proc 3) (exec-mem 2816 "GET 2 70 0 10 96") (proc 4) ; Portrait (Flushed)
   (proc 1)
       ; Kirara:
           (str "What are you doing???")
   (proc 15)
   (proc 6) ; Clear portrait
   (proc 2)
       ; Tanchi:
           (str "Uh, I was just thinking I'd beat her with" 'br)
   (str "magic...")
   (proc 15)
   (proc 12) ; Portrait (Angry)
   (proc 1)
       ; Kirara:
           (str "...")
   (proc 15)
   (proc 6) ; Clear portrait
   (proc 19))
 (seg (? (= T 4) (= O 0))												; Move
   (proc 18)
   (proc 10)
       ; Momoko:
           (str "Where are you going? Get back to the" 'br)
   (str "Reflection Cell!")
   (proc 15)
   (proc 19))
 (seg (? (= T 5) (= O 0))												; Save
   (proc 18)
   (mes-load? "mes¥save.mes")
; FMT
;  (branch-reg 750 (</> (/ (nop@)) (/ ((cmd 212)))))
;  (define-proc 10 (<> (text-color 11) (str "Momoko: ")))
;  (define-proc 11 (<> (text-color 5)  (str "Cleaning Lady: ")))
   (proc 19)
   (set-var B 2)
   (set-var C 2)))