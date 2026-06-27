; Dengeki Nurse English Translation - NS13_03.MES
; Translated by Geometrizer
; Edited and commented by trentsignia
; --Description:--
; Kirara finds a crab at the beach!
(mes
 (meta (engine 'ADV) (charset "pc98"))
 (seg*

; 	Character portraits:

  (define-proc 10 (<> (proc 3) (exec-mem 2816 "GET 2 10 0 10 96") (proc 4))) ; Happy
  (define-proc 11 (<> (proc 3) (exec-mem 2816 "GET 2 50 0 10 96") (proc 4))) ; Confused

  (exec-mem 2816 "INIT,SHOW 0,ACCESS 1")
  (image-file "gpc¥face_w00.gpc") (image-mem 0 0)
  (exec-mem 2816 "GET 20 71 320 8 64")
  (exec-mem 2816 "ACCESS 0")
  (branch-reg 990
   (</>
    (/ (nop@))
    (/
     (sound '|| 0)
; PC-98
     (sound '|| "uso¥Nurse12.uso")
; FMT
;    (sound '|| "Nurse12.fmt")
     (sound '|| 1)
     (set-reg 990 #f))))
  (image-file "b:¥gpc¥ns1_307.gpc") (image-mem 1 3)
  ((cmd 209) 1 2)
  ((cmd 204) 23 30)

; 	Intro begins here...

  (text-frame 3 324 52 379)
  (text-reset 15)
  (proc 1)
      ; Kirara:
          (str "Taaaanchi! Look look look!")
  (proc 15)
  (proc 2)
      ; Tanchi:
          (str "What is it, why are you yelling?")
  (proc 15)
  (proc 1)
      ; Kirara:
          (str "It's a crab!")
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
           (// (? (= 26 #t))           (nop@) (set-var T 0) (set-var O 4) (seg-call))
           (// (? (= 25 #t) (= 26 #f)) (nop@) (set-var T 0) (set-var O 3) (seg-call))
           (// (? (= 24 #t) (= 25 #f)) (nop@) (set-var T 0) (set-var O 2) (seg-call))
           (// (? (= 23 #t) (= 24 #f)) (nop@) (set-var T 0) (set-var O 1) (seg-call))
           (//                         (nop@) (set-var T 0) (set-var O 0) (seg-call)))))
; Look
     (/
      (if (</>
           (// (? (= 26 #t))           (nop@) (set-var T 1) (set-var O 3) (seg-call))
           (// (? (= 25 #t) (= 26 #f)) (nop@) (set-var T 1) (set-var O 2) (seg-call))
           (// (? (= 27 #t) (= 25 #f)) (nop@) (set-var T 1) (set-var O 1) (seg-call))
           (//                         (nop@) (set-var T 1) (set-var O 0) (seg-call)))))
; Talk
     (/
      (if (</>
           (// (? (= 26 #t))           (nop@) (set-var T 2) (set-var O 5) (seg-call))
           (// (? (= 30 #t) (= 26 #f)) (nop@) (set-var T 2) (set-var O 4) (seg-call))
           (// (? (= 29 #t) (= 30 #f)) (nop@) (set-var T 2) (set-var O 3) (seg-call))
           (// (? (= 24 #t) (= 29 #f)) (nop@) (set-var T 2) (set-var O 2) (seg-call))
           (// (? (= 28 #t) (= 24 #f)) (nop@) (set-var T 2) (set-var O 1) (seg-call))
           (//                         (nop@) (set-var T 2) (set-var O 0) (seg-call)))))
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
   (str "I don't wanna catch crabs!")
   (proc 15)
   (proc 19))
 (seg (? (= T 0) (= O 1))
   (proc 18)
   (text-color 7)
   (str "Me, I can't stand crabs! I hate those things so" 'br)
   (str "much, I can't even bear to look at canned crab!")
   (proc 15)
   (text-color 7)
   (str "You can blame it all on a childhood experience...")
   (proc 15)
   (proc 19)
   (set-reg 28 #t))
 (seg (? (= T 0) (= O 2))
   (proc 18)
   (text-color 7)
   (str "Now that I think about it, I don't see Doc Akiba" 'br)
   (str "or Croco... Where did those two go to slack off?")
   (proc 15)
   (proc 19)
   (set-reg 27 #t))
 (seg (? (= T 0) (= O 3))
   (proc 18)
   (text-color 7)
   (str "Summer at the beach means love! Man, I'd love to" 'br)
   (str "fall in love with Kirara!")
   (proc 15)
   (proc 19))
 (seg (? (= T 0) (= O 4))
   (proc 18)
   (text-color 7)
   (str "I see... Kirara's got the same worries as any" 'br)
   (str "normal girl.")
   (proc 15)
   (text-color 7)
   (str "That's right... Even if she was raised as a Nurse" 'br)
   (str "Commando, she's still just a normal 19-year-old" 'br)
   (str "girl...")
   (proc 15)
   (text-color 7)
   (str "Watching Kirara bouncing around having fun warms" 'br)
   (str "my heart...")
   (proc 15)
   ((cmd 209) 0 2)
   (text-frame 3 324 52 379) (text-reset 15)
   (text-frame 4 16 51 303)  (text-reset 15)
   (exec-mem 2816 "EXIT")
   (sound '|| 2)
   (set-reg 990 #f)
   (mes-jump "b:¥mes¥ns13_04.mes"))
 (seg (? (= T 1) (= O 0))												; Look
   (proc 18)
   (text-color 7)
   (str "Kirara's laughing while holding up that crab she" 'br)
   (str "caught...")
   (proc 15)
   (proc 19))
 (seg (? (= T 1) (= O 1))
   (proc 18)
   (text-color 7)
   (str "I look around...")
   (proc 15)
   (text-color 7)
   (str "There's the doc and Croco, they're blowing up an" 'br)
   (str "inflatable raft!")
   (proc 15)
   (text-color 7)
   (str "And they're doing it by mouth.. Their faces are" 'br)
   (str "red... Those poor guys...")
   (proc 15)
   (proc 19)
   (set-reg 29 #t))
 (seg (? (= T 1) (= O 2))
   (proc 18)
   (text-color 7)
   (str "I look back at Kirara.")
   (proc 15)
   (text-color 7)
   (str "She's wearing a black two-piece suit. Black" 'br)
   (str "doesn't really seem to suit her, though... Maybe" 'br)
   (str "it's in contrast to the white lab coat?")
   (proc 15)
   (text-color 7)
   (str "And the swimsuit's a little big for her, too.")
   (proc 15)
   (proc 19)
   (set-reg 30 #t))
 (seg (? (= T 1) (= O 3))
   (proc 18)
   (text-color 7)
   (str "Kirara's smiling like crazy.")
   (proc 15)
   (proc 19))
 (seg (? (= T 2) (= O 0))												; Talk
   (proc 18)
   (proc 2)
       ; Tanchi:
           (str "Don't get all excited catching something" 'br)
   (str "like that! I've always hated crabs, anyway...")
   (proc 15)
   (proc 11)	; Confused
   (proc 1)
       ; Kirara:
           (str "But why? Aren't crabs cute?")
   (proc 15)
   (proc 6)
   (proc 19)
   (set-reg 23 #t))
 (seg (? (= T 2) (= O 1))
   (proc 18)
   (proc 11)	; Confused
   (proc 1)
       ; Kirara:
           (str "What's with the crab hate?")
   (proc 15)
   (proc 6)
   (proc 2)
       ; Tanchi:
           (str "When I was a kid, a crab got into my swim" 'br)
   (str "trunks!")
   (proc 15)
   (proc 10)	; Happy
   (proc 1)
       ; Kirara:
           (str "Wow, what a dark past!")
   (proc 15)
   (proc 6)
   (proc 2)
       ; Tanchi:
           (str "Hey, shut up!")
   (proc 15)
   (proc 10)	; Happy
   (proc 1)
       ; Kirara:
           (str "I want to show it to Doc Akiba and Croco!")
   (proc 15)
   (proc 6)
   (proc 19)
   (set-reg 24 #t))
 (seg (? (= T 2) (= O 2))
   (proc 18)
   (proc 11)	; Confused
   (proc 1)
       ; Kirara:
           (str "Speaking of which... Where did those two" 'br)
   (str "get to?")
   (proc 15)
   (proc 6)
   (proc 19))
 (seg (? (= T 2) (= O 3))
   (proc 18)
   (proc 2)
       ; Tanchi:
           (str "Those two have their hands full blowing up")
   (str "that inflatable raft.")
   (proc 15)
   (proc 10)	; Happy
   (proc 1)
       ; Kirara:
           (str "Oh boy, a boat! I can't wait! Count me in!")
   (proc 15)
   (proc 6)
   (proc 19)
   (set-reg 25 #t))
 (seg (? (= T 2) (= O 4))
   (proc 18)
   (proc 2)
       ; Tanchi:
           (str "Hey, uh... Doesn't that swimsuit run a" 'br)
   (str "little big?")
   (proc 15)
   (proc 3)
   (exec-mem 2816 "GET 2 70 0 10 96") ; Flushed
   (proc 4)
   (proc 1)
       ; Kirara:
           (str "Y-Yeah... I was busy, so I didn't have" 'br)
   (str "time to go buy one...")
   (proc 15)
   (proc 6)
   (proc 2)
       ; Tanchi:
           (str "Well, it'll probably be just fine once" 'br)
   (str "your chest fills out.")
   (proc 15)
   (proc 3)
   (exec-mem 2816 "GET 2 30 0 10 96") ; Angry
   (proc 4)
   (proc 1)
       ; Kirara:
           (str "Hey, put a sock in it! I'm pretty self-" 'br)
   (str "conscious about my chest size, you know!")
   (proc 15)
   (proc 6)
   (proc 19)
   (set-reg 26 #t))
 (seg (? (= T 2) (= O 5))
   (proc 18)
   (proc 10)	; Happy
   (proc 1)
       ; Kirara:
           (str "I hope Doc Akiba and Croco arrive soon!")
   (proc 15)
   (proc 6)
   (proc 19))
 (seg (? (= T 3) (= O 0))												; Action
   (proc 18)
   (text-color 1) (str "Splash!!")
   (proc 15)
   (text-color 7)
   (str "I splashed water at Kirara.")
   (proc 15)
   (proc 10)	; Happy
   (proc 1)
       ; Kirara:
           (str "Ahhh! You've done it now!")
   (proc 15)
   (proc 6)
   (proc 19))
 (seg (? (= T 4) (= O 0))												; Move
   (proc 18)
   (text-color 7)
   (str "It seems too early to go get ")
   (branch-random
    (</>
     (/ (str "shaved ice"))
     (/ (str "yakisoba"))
     (/ (str "oden"))))
   (str "...")
   (proc 15)
   (proc 19))
 (seg (? (= T 5) (= O 0))												; Save
   (proc 18)
   (mes-load? "mes¥save.mes")
; FMT
;  (branch-reg 750 (</> (/ (nop@)) (/ ((cmd 212)))))

   (proc 19)
   (set-var B 3)
   (set-var C 3)))