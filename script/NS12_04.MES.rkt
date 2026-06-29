; Dengeki Nurse English Translation - NS12_04.MES
; Translated by Geometrizer
; Edited and commented by trentsignia
; --Description:--
; Tanchi and Kirara make it to begin their physical examinations, although for Tanchi he might as well have made it to heaven.
(mes
 (meta (engine 'ADV) (charset "pc98"))
 (seg*
  (load-mem "cmd¥quakeh.tcm" 6656)
  (define-proc 10 (<> (text-color 3) (str "Schoolgirl: ")))

; 	Character portraits:

  (define-proc 11 (<> (exec-mem 2816 "GET 2 30 0 10 96"))) ; Angry
  (define-proc 12 (<> (exec-mem 2816 "GET 2 70 0 10 96"))) ; Flushed

; 	Setup continues...

  (exec-mem 2816 "INIT,SHOW 0,ACCESS 1")
  (image-file "gpc¥face_w00.gpc") (image-mem 0 0)
  (exec-mem 2816 "GET 20 71 320 8 64")
  (exec-mem 2816 "ACCESS 0")
  (text-frame 4 16 51 303)
  (text-reset 15)

; 	Intro begins here...

  (text-frame 3 324 52 379)
  (text-reset 15)
  (branch-reg 990
   (</>
    (/ (nop@))
    (/
     (sound '|| 0)
; PC-98
     (sound '|| "uso¥Nurse09.uso")
; FMT
;    (sound '|| "Nurse09.fmt")
     (sound '|| 1)
     (set-reg 990 #f))))
  (image-file "b:¥gpc¥ns1_207.gpc") (image-mem 1 3)
  ((cmd 209) 1 2)
  ((cmd 204) 33 37)
  (text #:col 1 'br)
  (text "　　−") (str "Cybernetic Girls' School Nurse's Office") (text "−")
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
           (// (? (= 34 #t))           (nop@) (set-var T 0) (set-var O 2) (seg-call))    ; (set-reg 37 #t)
           (// (? (= 33 #t) (= 34 #f)) (nop@) (set-var T 0) (set-var O 1) (seg-call))    ; (set-reg 35 #t)
           (//                         (nop@) (set-var T 0) (set-var O 0) (seg-call))))) ; (set-reg 33 #t)
; Look
     (/
      (if (</>
           (// (? (= 35 #t))           (nop@) (set-var T 1) (set-var O 1) (seg-call))    ; (set-reg 34 #t)
           (//                         (nop@) (set-var T 1) (set-var O 0) (seg-call)))))
; Talk
     (/
      (if (</>
           (// (? (= 37 #t))           (nop@) (set-var T 2) (set-var O 2) (seg-call))    ; (mes-jump "b:¥mes¥ns12_05.mes")
           (// (? (= 36 #t) (= 37 #f)) (nop@) (set-var T 2) (set-var O 1) (seg-call))
           (//                         (nop@) (set-var T 2) (set-var O 0) (seg-call))))) ; (set-reg 36 #t)
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
   (str "I've been waiting for this moment all year...thank")
   (str "god I became a doctor! All those arduous studies" 'br)
   (str "and exams paid off!")
   (proc 15)
   (proc 19)
   (set-reg 33 #t))
 (seg (? (= T 0) (= O 1))
   (proc 18)
   (text-color 7)
   (str "Sailor suits and lab coats, the two most popular" 'br)
   (str "outfits... Am I not the luckiest guy in the world?")
   (proc 15)
   (text-color 7)
   (str "Which is number one, I wonder...?")
   (proc 15)
   (text-color 7)
   (str "Hmmm...")
   (proc 15)
   (proc 19)
   (set-reg 35 #t))
 (seg (? (= T 0) (= O 2))
   (proc 18)
   (text-color 7)
   (str "Yes, that's it!")
   (proc 15)
   (text-color 7)
   (str "I'll give Kirara a physical later! She's so naive,")
   (str "I'm sure she'll be easy to trick!")
   (proc 15)
   (text-color 7)
   (str "Ah, I'm kind of being a degenerate... No! It's the")
   (str "power of passionate love!")
   (proc 15)
   (proc 19)
   (set-reg 37 #t))
 (seg (? (= T 1) (= O 0))												; Look
   (proc 18)
   (text-color 7)
   (str "She looks so embarrassed...")
   (proc 15)
   (text-color 7)
   (str "And that just makes it even better!")
   (proc 15)
   (text-color 7)
   (str "It's so enticing!")
   (proc 15)
   (text-color 7)
   (proc 3) (exec-mem 2816 "GET 2 0 0 10 96") (proc 4) ; Portrait (Smiling)
   (proc 1)
       ; Kirara:
           (str "Why do you have that big grin on your" 'br)
   (str "face?")
   (proc 15)
   (proc 6) ; Clear Portrait
   (proc 2)
       ; Tanchi:
           (str "Uh, it's nothing...")
   (proc 15)
   (proc 19))
 (seg (? (= T 1) (= O 1))
   (proc 18)
   (text-color 7)
   (str "It's a sea of girls in sailor uniforms.")
   (proc 15)
   (text-color 7)
   (str "Sailor uniforms are where a man's heart belongs!" 'br)
   (str "Sailor uniforms are the spark of youth!")
   (proc 15)
   (text-color 7)
   (str "I look at Kirara.")
   (proc 15)
   (text-color 7)
   (str "She's so cute... Be it in a sailor uniform or a" 'br)
   (str "lab coat, her cuteness transcends all dimensions!")
   (proc 15)
   (proc 3) (proc 11) (proc 4) ; Portrait (Angry)
   (proc 1)
       ; Kirara:
           (str "Why are you staring at me like that?")
   (proc 15)
   (proc 6) ; Clear Portrait
   (proc 19)
   (set-reg 34 #t))
 (seg (? (= T 2) (= O 0))												; Talk
   (proc 18)
   (proc 2)
       ; Tanchi:
           (str "Yes, no abnormalities. Your development is")
   (str "coming along nicely.")
   (proc 15)
   (proc 3) (exec-mem 2816 "GET 2 50 0 10 96") (proc 4) ; Portrait (Confused)
   (proc 1)
       ; Kirara:
           (str "Hey hey, are you actually enjoying this?")
   (proc 15)
   (proc 6) ; Clear Portrait
   (proc 2)
       ; Tanchi:
           (str "Shh, just record the data.")
   (proc 15)
   (proc 19)
   (set-reg 36 #t))
 (seg (? (= T 2) (= O 1))
   (proc 18)
   (proc 2)
       ; Tanchi:
           (str "Underbust, 70cm... Top, 83cm... That would")
   (str "make it a B-cup, I guess...")
   (proc 15)
   (proc 3) (proc 12) (proc 4) ; Portrait (Flushed)
   (proc 1)
       ; Kirara:
           (str "There's nowhere to write that down here.")
   (proc 15)
   (proc 6) ; Clear Portrait
   (proc 2)
       ; Tanchi:
           (str "Just jot it in the margins.")
   (proc 15)
   (proc 19))
 (seg (? (= T 2) (= O 2))
   (proc 18)
   (proc 2)
       ; Tanchi:
           (str "Kirara, you're getting a physical later" 'br)
   (str "too.")
   (proc 15)
   (proc 3) (exec-mem 2816 "GET 2 40 0 10 96") (proc 4) ; Portrait (Shocked)
   (proc 1)
       ; Kirara:
           (str "Huh? Me?")
   (proc 15)
   (proc 6) ; Clear Portrait
   (proc 2)
       ; Tanchi:
           (str "You can't manage someone's health without" 'br)
   (str "being aware of your own. Any medical professional" 'br)
   (str "knows that.")
   (proc 15)
   (proc 3) (proc 12) (proc 4) ; Portrait (Flushed)
   (proc 1)
       ; Kirara:
           (str "This sounds kind of...embarrassing.")
   (proc 15)
   (proc 6) ; Clear Portrait
   (proc 2)
       ; Tanchi:
           (str "That's fine, it'll just be the two of" 'br)
   (str "us...")
   (proc 15)
   (proc 3) (proc 11) (proc 4) ; Portrait (Angry)
   (proc 1)
       ; Kirara:
           (str "......")
   (proc 15)
   ((cmd 209) 0 2)
   (proc 6) ; Clear Portrait
   (text-frame 3 324 52 379) (text-reset 15)
   (text-frame 4 16 51 303)  (text-reset 15)
   (exec-mem 2816 "EXIT")
   (sound '|| 2)
   (set-reg 990 #f)
   (mes-jump "b:¥mes¥ns12_05.mes"))
 (seg (? (= T 3) (= O 0))												; Action
   (proc 18)
   (proc 10)
       ; Schoolgirl:
               (str "Ahhhh! Cold!")
   (proc 15)
   (proc 2)
       ; Tanchi:
           (str "Huh, me? Am I cold?")
   (proc 15)
   (proc 10)
       ; Schoolgirl:
               (str "No... The stethoscope is!")
   (proc 15)
   (proc 19))
 (seg (? (= T 4) (= O 0))												; Move
   (proc 18)
   (text-color 7)
   (str "We're in the middle of work right now. Let's focus")
   (str "on the physical exams.")
   (proc 15)
   (proc 19))
 (seg (? (= T 5) (= O 0))												; Save
   (proc 18)
   (mes-load? "mes¥save.mes")
; FMT
;  (branch-reg 750 (</> (/ (nop@)) (/ ((cmd 212)))))

;  (define-proc 10 (<> (text-color 3) (str "Schoolgirl: ")))
   (proc 19)
   (set-var B 2)
   (set-var C 2)))