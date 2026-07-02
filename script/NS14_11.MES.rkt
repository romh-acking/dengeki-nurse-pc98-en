; Dengeki Nurse English Translation - NS14_11.MES
; Translated by Geometrizer
; Edited and commented by trentsignia
; --Description:--
; 
(mes
 (meta (engine 'ADV) (charset "pc98"))
 (seg*
  (load-mem "cmd¥cappear.tcm" 6656)
; (define-proc 10 (<> (text-color 1)  (str "Announcer: "))) <--- Sacrificing this so that the nurse portraits can do some space-saving
  (define-proc 11 (<> (text-color 8)  (proc 2) (exec-mem 2816 "GET 2 40 192 10 96") (proc 5) (str "Nurse THE MANSELL: ")))
  (define-proc 12 (<> (text-color 11) (proc 7) (exec-mem 2816 "GET 2 30 192 10 96") (proc 9) (str "Nurse THE SENNA: ")))

; 	Kirara portraits:

  (define-proc 10 (<> (proc 3) (exec-mem 2816 "GET 2 60 0 10 96") (proc 4))) ; Shouting

; 	Nurse portraits:
; 	(Yes, it's so bad that I am borrowing an actively-used process to save a bit of space on this)

  (define-proc 2  (<> (exec-mem 2816 "GET 1 5 198 10 96") (exec-mem 2816 "SHOW 0,ACCESS 1"))) ; Display Mansell pt. 1
  (define-proc 5  (<> (exec-mem 2816 "ACCESS 0") (exec-mem 2816 "VIEW 5 198 15 294,PUT 2 5 198,FREE 2"))) ; Display Mansell pt. 2
  (define-proc 7  (<> (exec-mem 2816 "GET 1 40 198 10 96") (exec-mem 2816 "SHOW 0,ACCESS 1"))) ; Display Senna pt. 1
  (define-proc 9  (<> (exec-mem 2816 "ACCESS 0") (exec-mem 2816 "VIEW 40 198 50 294,PUT 2 40 198,FREE 2"))) ; Display Senna pt. 2
  (define-proc 13 (<> (exec-mem 2816 "VIEW 5 198 15 294,PUT 1 5 198,FREE 1"))) ; Clear Mansell
  (define-proc 14 (<> (exec-mem 2816 "VIEW 40 198 50 294,PUT 1 40 198,FREE 1"))) ; Clear Senna

; 	Setup continues...

  (exec-mem 2816 "INIT,SHOW 0,ACCESS 1")
  (text-frame 0 0 79 399) (text-reset 0) (image-file "b:¥gpc¥ns1_432.gpc") (image-mem 0 0) (exec-mem 2816 "GET 18 0 0 24 144")
                                         (image-file "gpc¥face_w00.gpc")   (image-mem 0 0) (exec-mem 2816 "GET 20 71 320 8 64")
  (exec-mem 2816 "ACCESS 0")
  (exec-mem 10752 "INIT")
  (exec-mem 10752 "MODE V0E0M96")
  (exec-mem 10752 "LOAD> gpc¥face_w00.gpc,TEMP")
  (exec-mem 10752 "LOAD> b:¥gpc¥ns1_430.gpc,TEMP")
  (exec-mem 10752 "COPY> b:¥gpc¥ns1_430.gpc,GPC")
  (image-mem 1 3)
  (image-file "b:¥gpc¥ns1_431.gpc")
  (image-mem 1 3)
  ((cmd 204) 127 136)

; 	Intro begins here...

  (text-frame 3 324 52 379)
  (text-reset 15)
  ((cmd 209) 1 2)
  (text-color 1)
  (str "Announcer: Th-This has become a complete disaster!")
  (str "There's been a collision between the top three" 'br)
  (str "contenders!")
  (proc 15)
  (text-color 1)
  (str "Announcer: The smoke is so thick, the officials" 'br)
  (str "can't approach the wreck! What's going on inside" 'br)
  (str "that cloud of destruction?")
  (proc 15)
  (sound '|| 0)
  (sound '|| "uso¥Nurse10.uso")
  (sound '|| 1)
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
; Think
     (/
      (if (</>
           (// (? (= 130 #t))                       (nop@) (set-var T 0) (set-var O 4) (seg-call))    ; (set-reg 136 #t)
           (// (? (= 129 #t) (= 130 #f))            (nop@) (set-var T 0) (set-var O 3) (seg-call))    ; (set-reg 134 #t)
           (// (? (= 128 #t) (= 129 #f))            (nop@) (set-var T 0) (set-var O 2) (seg-call))    ; (set-reg 133 #t)
           (// (? (= 127 #t) (= 128 #f))            (nop@) (set-var T 0) (set-var O 1) (seg-call))    ; (set-reg 132 #t)
           (//                                      (nop@) (set-var T 0) (set-var O 0) (seg-call)))))
; Look
     (/
      (if (</>
           (// (? (= 130 #t))                       (nop@) (set-var T 1) (set-var O 3) (seg-call))
           (// (? (= 129 #t) (= 130 #f))            (nop@) (set-var T 1) (set-var O 2) (seg-call))    ; (set-reg 135 #t)
           (// (? (= 131 #t) (= 129 #f))            (nop@) (set-var T 1) (set-var O 1) (seg-call))    ; (set-reg 127 #t)
           (//                                      (nop@) (set-var T 1) (set-var O 0) (seg-call))))) ; (set-reg 131 #t)
; Talk
     (/
      (if (</>
           (// (? (= 136 #t))                       (nop@) (set-var T 2) (set-var O 6) (seg-call))    ; (mes-jump "b:¥mes¥ns14_12.mes")
           (// (? (= 130 #t) (= 136 #f))            (nop@) (set-var T 2) (set-var O 5) (seg-call))
           (// (? (= 134 #t) (= 135 #t) (= 130 #f)) (nop@) (set-var T 2) (set-var O 4) (seg-call))    ; (set-reg 130 #t)
           (// (? (= 129 #t))                       (nop@) (set-var T 2) (set-var O 3) (seg-call))
           (// (? (= 133 #t) (= 129 #f))            (nop@) (set-var T 2) (set-var O 2) (seg-call))    ; (set-reg 129 #t)
           (// (? (= 132 #t) (= 133 #f))            (nop@) (set-var T 2) (set-var O 1) (seg-call))    ; (set-reg 128 #t)
           (//                                      (nop@) (set-var T 2) (set-var O 0) (seg-call)))))
; Action
     (/ (nop@) (set-var T 3) (set-var O 0) (seg-call))
; Move
     (/
      (if (</>
           (// (? (= 130 #t))                       (nop@) (set-var T 4) (set-var O 1) (seg-call))
           (//                                      (nop@) (set-var T 4) (set-var O 0) (seg-call)))))
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
   (str "Dammit, those reckless morons!")
   (proc 15)
   (proc 19))
 (seg (? (= T 0) (= O 1))
   (proc 18)
   (text-color 7)
   (str "What the hell, seriously!? This means I'm gonna" 'br)
   (str "retire from the race! Now I'm never getting a kiss")
   (str "from Kirara!")
   (proc 15)
   (text-color 7)
   (str "From the depths of my duodenum, rage builds within")
   (str "me!")
   (proc 15)
   (proc 19)
   (set-reg 132 #t))
 (seg (? (= T 0) (= O 2))
   (proc 18)
   (text-color 7)
   (str "My kiss, stolen! My anger...thermonuclear! These" 'br)
   (str "Black Cross commandos, or whoever... I'm going to" 'br)
   (str "beat the hell outta them before Dengeki Nurse can!")
   (proc 15)
   (proc 19)
   (set-reg 133 #t))
 (seg (? (= T 0) (= O 3))
   (proc 18)
   (text-color 7)
   (str "Who are those two, anyway? And their target should")
   (str "be Kirara... So why does Sena need to go back to" 'br)
   (str "the race?")
   (proc 15)
   (text-color 7)
   (str "As always, I can't understand anything the Black" 'br)
   (str "Cross does!")
   (proc 15)
   (proc 19)
   (set-reg 134 #t))
 (seg (? (= T 0) (= O 4))
   (proc 18)
   (text-color 7)
   (str "They're pulling the strings and getting away with it!")
   (proc 15)
   (text-color 7)
   (str "At this point, unless we gang up on Mansell and" 'br)
   (str "beat her up, my stomach will never recover!")
   (proc 15)
   (proc 19)
   (set-reg 136 #t))
 (seg (? (= T 1) (= O 0))												; Look
   (proc 18)
   (text-color 7)
   (str "It looks like all four of us walked away without a")
   (str "scratch. Insane safety tolerances, as expected of" 'br)
   (str "F1 cars!")
   (proc 15)
   (text-color 7)
   (str "...But this is no time to be impressed!")
   (proc 15)
   (proc 19)
   (set-reg 131 #t))
 (seg (? (= T 1) (= O 1))
   (proc 18)
   (text-color 7)
   (str "Mansell's car is a smoking wreck... The right of" 'br)
   (str "my car's front wing is history...")
   (proc 15)
   (proc 19)
   (set-reg 127 #t))
 (seg (? (= T 1) (= O 2))
   (proc 18)
   (text-color 7)
   (str "I look at Sena's machine.")
   (proc 15)
   (text-color 7)
   (str "It's totally pristine! It's in perfect shape to" 'br)
   (str "rejoin the race! But why does she need to rejoin" 'br)
   (str "the race!?")
   (proc 15)
   (proc 19)
   (set-reg 135 #t))
 (seg (? (= T 1) (= O 3))
   (proc 18)
   (text-color 7)
   (str "Senna's gone...so now it's me, Kirara, and Mansell")
   (str "in a stare-down.")
   (proc 15)
   (proc 19))
 (seg (? (= T 2) (= O 0))												; Talk
   (proc 18)
   (proc 2)
       ; Tanchi:
           (str "Kirara! Are you okay?")
   (proc 15)
   (proc 10) ; Portrait (Shouting)
   (proc 0)
       ; Dengeki Nurse:
                  (str "I'm fine! No injuries for you?")
   (proc 15)
   (proc 6) ; Clear Kirara portrait
   (proc 19))
 (seg (? (= T 2) (= O 1))
   (proc 18)
   (proc 2)
       ; Tanchi:
           (str "Dammit, how dare you pull that on us!")
   (proc 15)
   (proc 11)
       ; Nurse THE MANSELL:
                      (str "Oh goodness, you're still" 'br)
   (str "breathing? You two are tougher than I thought!")
   (proc 15)
   (proc 13) ; Clear Mansell portrait
   (proc 10) ; Portrait (Shouting)
   (proc 0)
       ; Dengeki Nurse:
                  (str "It'll take more than that to kill" 'br)
   (str "us!")
   (proc 15)
   (proc 6) ; Clear Kirara portrait
   (proc 19)
   (set-reg 128 #t))
 (seg (? (= T 2) (= O 2))
   (proc 18)
   (proc 2)
       ; Tanchi:
           (str "Come at me, woman! I'll give you a" 'br)
   (str "patented Tanchi Punch!")
   (proc 15)
   (proc 12)
       ; Nurse THE SENNA:
                    (str "Oh, what a bore you people are!" 'br)
   (str "Mansell, I'm leaving the rest to you!")
   (proc 15)
   (proc 14) ; Clear Senna portrait
   (proc 11)
       ; Nurse THE MANSELL:
                      (str "Hey, hold up, you! You're gonna")
   (str "make me fight all alone?")
   (proc 15)
   (proc 13) ; Clear Mansell portrait
   (proc 12)
       ; Nurse THE SENNA:
                    (str "Well, SOMEONE has to get back to" 'br)
   (str "the race!")
   (proc 15)
   (proc 14) ; Clear Senna portrait
   (proc 11)
       ; Nurse THE MANSELL:
                      (str "That's sooooo unfair!")
   (proc 15)
   (proc 13) ; Clear Mansell portrait
   (proc 2)
       ; Tanchi:
           (str "You idiots can't even stop squabbling with")
   (str "each other!")
   (proc 15)
   (proc 19)
   (set-reg 129 #t))
 (seg (? (= T 2) (= O 3))
   (proc 18)
   (proc 2)
       ; Tanchi:
           (str "What's wrong with you two?")
   (proc 15)
   (proc 11)
       ; Nurse THE MANSELL:
                      (str "Shut up, you weren't invited to")
   (str "the conversation!")
   (proc 15)
   (proc 13) ; Clear Mansell portrait
   (proc 19))
 (seg (? (= T 2) (= O 4))
   (proc 18)
   (proc 2)
       ; Tanchi:
           (str "Enough already! Put up your dukes and" 'br)
   (str "fight!")
   (proc 15)
   (proc 10) ; Portrait (Shouting)
   (proc 0)
       ; Dengeki Nurse:
                  (str "That's right! I'm not losing!")
   (proc 15)
   (proc 6) ; Clear Kirara portrait
   (proc 12)
       ; Nurse THE SENNA:
                    (str "Whatever! Don't let me down!")
   (proc 15)
   (proc 14) ; Clear Senna portrait
   (proc 11)
       ; Nurse THE MANSELL:
                      (str "Whaaa? Why me!?!?!")
   (proc 15)
   (proc 13) ; Clear Mansell portrait
   (proc 12)
       ; Nurse THE SENNA:
                    (str "Did you forget the mission? We" 'br)
   (str "need to stop Moguri from winning and ensure" 'br)
   (str "Senna's victory!")
   (proc 15)
   (proc 14) ; Clear Senna portrait
   (proc 11)
       ; Nurse THE MANSELL:
                      (str "Was... Was that it?")
   (proc 15)
   (proc 13) ; Clear Mansell portrait
   (proc 12)
       ; Nurse THE SENNA:
                    (str "And likewise, we take out the" 'br)
   (str "traitor Dengeki Nurse! Two birds, one extra-lethal")
   (str "stone!")
   (proc 15)
   (proc 14) ; Clear Senna portrait
   (proc 2)
       ; Tanchi:
           (str "Oh, so THAT'S what you're trying to do!")
   (proc 15)
   (proc 12)
       ; Nurse THE SENNA:
                    (str "I'm leaving it to you! Go get" 'br)
   (str "'em!")
   (proc 15)
   (proc 14) ; Clear Senna portrait

; 	Senna drives off...

   (exec-mem 2816 "SHOW 0,ACCESS 1")
   (exec-mem 10752 "COPY> b:¥gpc¥ns1_430.gpc,GPC") (image-mem 0 0)
   (exec-mem 2816 "ACCESS 0")
   (exec-mem 6656 25 30 46 303)
   (exec-mem 2816 "SHOW 0,ACCESS 1")
   (exec-mem 10752 "COPY> gpc¥face_w00.gpc,GPC") (image-mem 0 0)
   (exec-mem 2816 "ACCESS 0")

; 	Text continues.

   (text-color 1)
   (str "Announcer: Good heavens, Senna has emerged from" 'br)
   (str "the smoke cloud! Truly, a Brazilian national" 'br)
   (str "treasure...there goes the sorcerer of speed!")
   (proc 15)
   (proc 19)
   (set-reg 130 #t))
 (seg (? (= T 2) (= O 5))
   (proc 18)
   (proc 11)
       ; Nurse THE MANSELL:
                      (str "It's not faaaaair!")
   (proc 15)
   (proc 13) ; Clear Mansell portrait
   (proc 19))
 (seg (? (= T 2) (= O 6))
   (proc 18)
   (proc 2)
       ; Tanchi:
           (str "Kirara! Let's team up and beat this one" 'br)
   (str "down together!")
   (proc 15)
   (proc 11)
       ; Nurse THE MANSELL:
                      (str "Wait, could...could you two do" 'br)
   (str "it one at a time instead?")
   (proc 15)
   (proc 13) ; Clear Mansell portrait
   (proc 10) ; Portrait (Shouting)
   (proc 0)
       ; Dengeki Nurse:
                  (str "Tanchi! You need to get back in the")
   (str "race!")
   (proc 15)
   (proc 6) ; Clear Kirara portrait
   (proc 2)
       ; Tanchi:
           (str "Wha!?")
   (proc 15)
   (proc 10) ; Portrait (Shouting)
   (proc 0)
       ; Dengeki Nurse:
                  (str "Don't let them determine what goes" 'br)
   (str "down!")
   (proc 15)
   (proc 6) ; Clear Kirara portrait
   (proc 2)
       ; Tanchi:
           (str "B-But... My car's wing is...")
   (proc 15)
   (proc 10) ; Portrait (Shouting)
   (proc 0)
       ; Dengeki Nurse:
                  (str "Show some guts and you'll power" 'br)
   (str "through!")
   (proc 15)
   (proc 6) ; Clear Kirara portrait
   (proc 2)
       ; Tanchi:
           (str "O-Okay! If I win, you'll keep your" 'br)
   (str "promise, right?")
   (proc 15)
   (proc 3) (exec-mem 2816 "GET 2 30 0 10 96") (proc 4) ; Portrait (Angry)
   (proc 0)
       ; Dengeki Nurse:
                  (str "Count on it!")
   (proc 15)
   (proc 6) ; Clear Kirara portrait
   (proc 2)
       ; Tanchi:
           (str "Kirara! Give Mansell a punishment she" 'br)
   (str "won't forget!")
   (proc 15)
   (proc 3) (exec-mem 2816 "GET 2 10 0 10 96") (proc 4) ; Portrait (Happy)
   (proc 0)
       ; Dengeki Nurse:
                  (str "You bet!")
   (proc 15)
   (proc 6) ; Clear Kirara portrait

   (exec-mem 2816 "VIEW 16 93 40 237,PUT 18 16 93,FREE 18")
; ^ Tanchi drives off.

   (text-color 1)
   (str "Announcer: Ohhhhh! Moguri is back on the track!" 'br)
   (str "Truly the Neo-Japanesque man of his word!")
   (proc 15)
   (proc 10) ; Portrait (Shouting)
   (proc 0)
       ; Dengeki Nurse:
                  (str "Come on, let's fight!")
   (proc 15)
   (proc 6) ; Clear Kirara portrait

   (define-proc 1 (<> (text-color 4) (str "Kirara: ")))
   (define-proc 5 (<> (text-color 8) (str "Dr. Akiba: ")))
   (define-proc 7 (<> (text-color 1) (str "Black Nurse: ")))
; ^ reinstate default names

; 	Battle, go!

   (exec-mem 10752 "EXIT")
   (exec-mem 2816 "EXIT")
   (set-var U 12)
   (sound '|| 2)
   (mes-load? "mes¥action1.mes")
   (text-frame 3 324 52 379) (text-reset 15)
   (text-frame 4 16 51 303)  (text-reset 15)
   (set-reg 760 #t)
   (set-reg 990 #f)
   (mes-jump "b:¥mes¥ns14_12.mes"))
 (seg (? (= T 3) (= O 0))												; Action
   (proc 18)
   (text-color 7)
   (str "I check the status of my car.")
   (proc 15)
   (text-color 7)
   (str "The engine is still running... It's technically" 'br)
   (str "still driveable, but... I can't imagine winning in")
   (str "such a state...")
   (proc 15)
   (proc 19))
 (seg (? (= T 4) (= O 0))												; Move
   (proc 18)
   (proc 12)
       ; Nurse THE SENNA:
                    (str "Stop right there! This is the" 'br)
   (str "part where you retire!")
   (proc 15)
   (proc 14) ; Clear Senna portrait
   (proc 19))
 (seg (? (= T 4) (= O 1))
   (proc 18)
   (text-color 7)
   (str "Just one minute! Not until I smack Mansell's butt!")
   (proc 15)
   (proc 19))
 (seg (? (= T 5) (= O 0))												; Save
   (proc 18)
   (mes-load? "mes¥save.mes")
; FMT
;  (branch-reg 750 (</> (/ (nop@)) (/ ((cmd 212)))))

;  (define-proc 10 (<> (text-color 1)  (str "Announcer: ")))
;  (define-proc 11 (<> (text-color 8)  (str "Nurse THE MANSELL: ")))
;  (define-proc 12 (<> (text-color 11) (str "Nurse THE SENNA: ")))
   (proc 19)
   (set-var B 4)
   (set-var C 4)))