; Dengeki Nurse English Translation - NS15_01.MES
; Translated by Geometrizer
; Edited and commented by trentsignia
; --Description:--
; There's a call for Tanchi... But nothing gets between him and his lunch!
(mes
 (meta (engine 'ADV) (charset "pc98"))
 (seg*
  (define-proc 10 (<> (proc 3) (exec-mem 2816 "GET 2 0 192 10 96") (proc 4) (text-color 11) (str "Croco: ")))

; 	Character portraits:

  (define-proc 0  (<> (proc 3) (exec-mem 2816 "GET 2 10 0 10 96") (proc 4))) ; Happy
  (define-proc 7  (<> (proc 3) (exec-mem 2816 "GET 2 40 0 10 96") (proc 4))) ; Shocked
  (define-proc 9  (<> (proc 3) (exec-mem 2816 "GET 2 50 0 10 96") (proc 4))) ; Confused
  (define-proc 11 (<> (proc 3) (exec-mem 2816 "GET 2 0 96 10 96") (proc 4))) ; Aloof

; 	Dr. Akiba portrait:

  (define-proc 12 (<> (exec-mem 2816 "GET 1 40 23 10 96") (exec-mem 2816 "SHOW 0,ACCESS 1") (exec-mem 2816 "GET 2 10 192 10 96")))
  (define-proc 13 (<> (exec-mem 2816 "ACCESS 0") (exec-mem 2816 "VIEW 40 23 50 120,PUT 2 40 23,FREE 2")))
  (define-proc 14 (<> (exec-mem 2816 "VIEW 40 23 50 120,PUT 1 40 23,FREE 1")))

; 	Setup continues...

  (exec-mem 2816 "INIT,SHOW 0,ACCESS 1")
  (image-file "gpc¥face_w00.gpc")
  (image-mem 0 0)
  (exec-mem 2816 "GET 20 71 320 8 64")
  (exec-mem 2816 "ACCESS 0")
  (sound '|| 0)
  (sound '|| "uso¥Nurse08.uso")
  (sound '|| 1)
  (image-file "gpc¥Aflame01.gpc")   (image-mem 1 3)
  (image-file "gpc¥ns1_K10.gpc")    (image-mem 1 0)
  (image-file "b:¥gpc¥ns1_504.gpc") (image-mem 1 3)

; 	Intro begins here...

  (text-frame 3 324 52 379)
  (text-reset 15)
  ((cmd 209) 1 2)
  ((cmd 204) 10 15)
  (text #:col 1 'br)
  (text "　　　−") (str "Dentendo Hospital Staff Cafeteria") (text "−")
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
           (// (? (= 13 #t))           (nop@) (set-var T 0) (set-var O 4) (seg-call))
           (// (? (= 12 #t) (= 13 #f)) (nop@) (set-var T 0) (set-var O 3) (seg-call))
           (// (? (= 11 #t) (= 12 #f)) (nop@) (set-var T 0) (set-var O 2) (seg-call))
           (// (? (= 10 #t) (= 11 #f)) (nop@) (set-var T 0) (set-var O 1) (seg-call))
           (//                         (nop@) (set-var T 0) (set-var O 0) (seg-call)))))
; Look
     (/ (nop@) (set-var T 1) (set-var O 0) (seg-call))
; Talk
     (/
      (if (</>
           (// (? (= 15 #t))           (nop@) (set-var T 2) (set-var O 5) (seg-call))
           (// (? (= 13 #t) (= 15 #f)) (nop@) (set-var T 2) (set-var O 4) (seg-call))
           (// (? (= 12 #t) (= 13 #f)) (nop@) (set-var T 2) (set-var O 3) (seg-call))
           (// (? (= 11 #t) (= 12 #f)) (nop@) (set-var T 2) (set-var O 2) (seg-call))
           (// (? (= 14 #t) (= 11 #f)) (nop@) (set-var T 2) (set-var O 1) (seg-call))
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
   (str "The A Lunch is good, but it's starting to wear" 'br)
   (str "thin. I wish someone would make me a homemade" 'br)
   (str "bento box...")
   (proc 15)
   (proc 19))
 (seg (? (= T 0) (= O 1))
   (proc 18)
   (text-color 7)
   (str "Even if someone DID ask me to take them out...")
   (proc 15)
   (text-color 7)
   (str "The combination of doctor and nurse would make" 'br)
   (str "people cry") (text "“") (str "scandal") (text "”") (str "at the first opportunity..." 'br)
   (str "That's discrimination, isn't it!?")
   (proc 15)
   (text-color 7)
   (str "Wait a sec... It's because I'm not married, right?")
   (proc 15)
   (proc 19)
   (set-reg 14 #t))
 (seg (? (= T 0) (= O 2))
   (proc 18)
   (text-color 7)
   (str "Uh...the two of us are a") (text "“") (str "fresh couple") (text "”") (str "now, are" 'br)
   (str "we?")
   (proc 15)
   (text-color 7)
   (str "That's just like Doc Akiba... Even out-of-date" 'br)
   (str "slang is his thing...")
   (proc 15)
   (text-color 1)
   (str "Bing bong!")
   (proc 15)
   (text-color 1)
   (str "Announcement: Phone call for Dr. Tanchi Denpa from")
   (str "Internal Med, Please come to the doctor's office" 'br)
   (str "immediately.")
   (proc 15)
   (proc 2)
       ; Tanchi:
           (str "A phone call? What's this all about?")
   (proc 15)
   (proc 19)
   (set-reg 12 #t))
 (seg (? (= T 0) (= O 3))
   (proc 18)
   (text-color 7)
   (str "Seriously... Who calls someone while they're" 'br)
   (str "eating? Nobody decent, I'll tell you that much.")
   (proc 15)
   (proc 19))
 (seg (? (= T 0) (= O 4))
   (proc 18)
   (text-color 7)
   (str "...From a woman? Hmmm... It's probably just my mom")
   (str "or landlady.")
   (proc 15)
   (proc 19)
   (set-reg 15 #t))
 (seg (? (= T 1) (= O 0))												; Look
   (proc 18)
   (text-color 7)
   (str "This is the Dentendo Hospital staff cafeteria. I'm")
   (str "doing the A lunch, Kirara's doing the B lunch, Doc")
   (str "Akiba's eating katsudon...")
   (proc 15)
   (text-color 7)
   (str "And") (text "−") (str " The hell!? Croco's on a diet! That's no" 'br)
   (str "good, dieting isn't a great thing for young girls" 'br)
   (str "to do...")
   (proc 15)
   (proc 19))
 (seg (? (= T 2) (= O 0))												; Talk
   (proc 18)
   (proc 0)	; Happy
   (proc 1)
       ; Kirara:
           (str "F1 was a blast, wasn't it? I wanna go" 'br)
   (str "again!")
   (proc 15)
   (proc 6)
   (proc 2)
       ; Tanchi:
           (str "Next year, I suppose.")
   (proc 15)
   (proc 7)	; Shocked
   (proc 1)
       ; Kirara:
           (str "Wha? That's basically an eternity!")
   (proc 15)
   (proc 6)
   (proc 2)
       ; Tanchi:
           (str "F1 travels all around the world, you know.")
   (proc 15)
   (proc 9)	; Confused
   (proc 1)
       ; Kirara:
           (str "I wanna see F1 everywhere and anywhere!" 'br)
   (str "Come on, take me to see it somewhere else!")
   (proc 15)
   (proc 6)
   (proc 19)
   (set-reg 10 #t))
 (seg (? (= T 2) (= O 1))
   (proc 18)
   (proc 2)
       ; Tanchi:
           (str "Well, maybe we could do that if you marry" 'br)
   (str "me.")
   (proc 15)
   (proc 7)	; Shocked
   (proc 1)
       ; Kirara:
           (str "Marry you? For real?")
   (proc 15)
   (proc 6)
   (proc 2)
       ; Tanchi:
           (str "Hey hey, don't take that seriously.")
   (proc 15)
   (proc 9)	; Confused
   (proc 1)
       ; Kirara:
           (str "But all those F1 drivers... They're all so")
   (str "cool...")
   (proc 15)
   (proc 6)
   (proc 0)	; Happy
   (proc 1)
       ; Kirara:
           (str "I want to meet all of them...")
   (proc 15)
   (proc 6)
   (proc 2)
       ; Tanchi:
           (str "......")
   (proc 15)
   (proc 12) (proc 13)	; Dr. Akiba
   (proc 5)
       ; Dr. Akiba:
              (str "Ho ho ho! The two of you are a fresh" 'br)
   (str "couple indeed!")
   (proc 15)
   (proc 14)
   (proc 10)	; Croco
   (str "Waniiii!")
   (proc 15)
   (proc 6)
   (proc 19)
   (set-reg 11 #t))
 (seg (? (= T 2) (= O 2))
   (proc 18)
   (proc 9)	; Confused
   (proc 1)
       ; Kirara:
           (str "Oh, if only SOMEBODY would take me...")
   (proc 15)
   (proc 6)
   (proc 19))
 (seg (? (= T 2) (= O 3))
   (proc 18)
   (proc 12) (proc 13)	; Dr. Akiba
   (proc 5)
       ; Dr. Akiba:
              (str "Who could that phone call be from? A" 'br)
   (str "lady, perchance?")
   (proc 15)
   (proc 14)
   (proc 2)
       ; Tanchi:
           (str "Ha ha ha... No way!")
   (proc 15)
   (text-color 1)
   (str "Ping pong!")
   (proc 15)
   (text-color 1)
   (str "Announcement: Repeating the page to Dr. Tanchi," 'br)
   (str "you have a call. From a woman.")
   (proc 15)
   (proc 11)	; Aloof
   (proc 1)
       ; Kirara:
           (str ".........Stop messing around and take that")
   (str "call already!")
   (proc 15)
   (proc 6)
   (proc 2)
       ; Tanchi:
           (str "Why are YOU getting mad at me?")
   (proc 15)
   (proc 12) (proc 13)	; Dr. Akiba
   (proc 5)
       ; Dr. Akiba:
              (str "Ha ha ha, hopeless...this new item is" 'br)
   (str "hopeless!")
   (proc 15)
   (proc 14)
   (proc 10)	; Croco
   (str "Waninini.....")
   (proc 15)
   (proc 6)
   (proc 19)
   (set-reg 13 #t))
 (seg (? (= T 2) (= O 4))
   (proc 18)
   (proc 12) (proc 13)	; Dr. Akiba
   (proc 5)
       ; Dr. Akiba:
              (str "Hurry up then, it's rude to keep them" 'br)
   (str "waiting... Get moving already!")
   (proc 15)
   (proc 14)
   (proc 19))
 (seg (? (= T 2) (= O 5))
   (proc 18)
   (proc 2)
       ; Tanchi:
           (str "It's probably just the landlady, or my" 'br)
   (str "mom. I can call back later...")
   (proc 15)
   (text-color 1)
   (str "Bing bong!")
   (proc 15)
   (text-color 1)
   (str "Announcement: Dr. Tanchi, you have a call from a" 'br)
   (str "woman. A YOUNG woman.")
   (proc 15)
   (proc 2)
       ; Tanchi:
           (str "Good grief.")
   (proc 15)
   (proc 11)	; Aloof
   (proc 1)
       ; Kirara:
           (str "You cheater!")
   (proc 15)
   (proc 6)
   (proc 2)
       ; Tanchi:
           (str "What are you talking about?") (text "“") (str "Cheating") (text "”" 'br)
   (str "only applies if you're dating or married in the" 'br)
   (str "first place!")
   (proc 15)
   (proc 12) (proc 13)	; Dr. Akiba
   (proc 5)
       ; Dr. Akiba:
              (str "Enough talk! Hurry up and get the phone")
   (str "already!")
   (proc 15)
   (proc 14)
   (proc 2)
       ; Tanchi:
           (str "Yeah, yeah...")
   (proc 15)
   ((cmd 209) 0 2)
   (text-frame 3 324 52 379) (text-reset 15)
   (text-frame 4 16 51 303)  (text-reset 15)
   (exec-mem 10752 "EXIT")
   (exec-mem 2816 "EXIT")
   (sound '|| 2)
   (set-reg 990 #f)

; Reinstate default processes
   (define-proc 0 (<> (text-color 4) (str "Dengeki Nurse: ")))
   (define-proc 7 (<> (text-color 1) (str "Black Nurse: ")))

   (mes-jump "b:¥mes¥ns15_02.mes"))
 (seg (? (= T 3) (= O 0))												; Action
   (proc 18)
   (text-color 1)
   (str "Munch munch munch...")
   (proc 15)
   (proc 2)
       ; Tanchi:
           (str "Yeah, this food is great!")
   (proc 15)
   (text-color 7)
   (str "I'm making sure to eat it in front of Croco.")
   (proc 15)
   (text-color 7)
   (str "It's not like I'm bullying her or anything, it's a")
   (str "parental instinct to make her think twice about" 'br)
   (str "dieting!")
   (proc 15)
   (proc 19))
 (seg (? (= T 4) (= O 0))												; Move
   (proc 18)
   (text-color 7)
   (str "I hate having to get up halfway through lunch," 'br)
   (str "even if there's an emergency or if one of my" 'br)
   (str "patients die! A proper diet is critical!")
   (proc 15)
   (proc 19))
 (seg (? (= T 5) (= O 0))												; Save
   (proc 18)
   (mes-load? "mes¥save.mes")
; FMT
;  (branch-reg 750 (</> (/ (nop@)) (/ ((cmd 212)))))

;  (define-proc 10 (<> (text-color 11) (str "Croco: ")))
   (proc 19)
   (set-var B 5)
   (set-var C 5)))