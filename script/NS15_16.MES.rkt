; Dengeki Nurse English Translation - NS15_16.MES
; Translated by Geometrizer
; Edited and commented by trentsignia
; --Description:--
; Dungeon main hallway.
; -----Notes:-----
; So, this probably needs some explanation...
;
; This script acts as a hub for all six floors of the following dungeon section.
; - The variable G (1 to 6) determines which floor the player is on, and the rooms/barriers/etc. are loaded accordingly.
;
; On each floor players are presented with five doors, which can lead into one of four room types:
; - NS15_16A: Empty room. This can on occasion house an enemy, whom after defeating will give up an item of varying uses, such as to unlock doors in the hallway.
; - NS15_16B: Elektros Warp Device room, which can be used to teleport to another floor's hallway.
; - NS15_16C: Mysterious Warp Device room. It functions the same as the other warp device, except that it needs coins to operate.
; - NS15_16D: Pipe room. There is only one of these; the pipe leads to NS15_16E, which is where the afore-mentioned coins can be obtained.
;
; The items that can sometimes be collected by going into NS15_16A are:
; - Coins (variable D): Obtained by beating Tomoyo. Collecting them in NS15_16E sets this value to 15, and it is decremented by 1 every time the mysterious warp is used.
; - Controller (register 800): Obtained by beating Asuka. Barriers can be passed through once this is collected.
; - Key (save flag 6): Obtained by beating Ayako. A sixth save file is written when the key is collected, and allows Kirara's Room to be accessed from the Omake Mode in the main menu.
; - Crest (register 805): Obtained by beating Guillotine Nurse. Opens the big door on the third floor, which is what ends the dungeon segment.
;
(mes
 (meta (engine 'ADV) (charset "pc98"))
 (seg*
  (load-mem "dat¥icondat5.dat" 33024)
  (load-mem "cmd¥cappear.tcm" 6656)
  (define-proc 10 (<> (text-color 11) (str "Nursia: ")))
; (define-proc 11 (<> (text-color 11) (str "Momoko: ")))

; 	These appear to be... I dunno:

  (define-proc 12 (<> (exec-mem 19456 2 8 4 103 75 18 49 18 49 0 20)))
  (define-proc 13 (<> (exec-mem 19456 1 48 36 48 36 8 4 103 75 8 20)))

; 	Nursia portrait:

  (define-proc 9  (<> (exec-mem 2816 "GET 1 40 23 10 96") (exec-mem 2816 "SHOW 0,ACCESS 1") (exec-mem 2816 "GET 2 10 288 10 96")))
  (define-proc 11 (<> (exec-mem 2816 "ACCESS 0") (exec-mem 2816 "VIEW 40 23 50 120,PUT 2 40 23,FREE 2")))
  (define-proc 14 (<> (exec-mem 2816 "VIEW 40 23 50 120,PUT 1 40 23,FREE 1")))

; 	Setup continues...

  (set-var S 0)
  (branch-reg 991 (</> (/ (sound '|| 0) (sound '|| "uso¥Nurse14.uso") (sound '|| 1)) (/ (nop@))))
  (text-frame 3 324 52 379)
  (text-reset 15)
  (image-file "b:¥gpc¥Ns1_550.gpc") (image-mem 1 3)

; 	Different door graphics loaded based on the current floor

  (if (</>
       (//
        (? (= G 1)) (nop@))
       (//
        (? (= G 2)) (nop@)
        (image-file "b:¥gpc¥Ns1_551.gpc") (image-mem 1 0)
        (image-file "b:¥gpc¥Ns1_556.gpc") (image-mem 1 0)
        (image-file "b:¥gpc¥Ns1_558.gpc") (image-mem 1 0)
        (image-file "b:¥gpc¥Ns1_559.gpc") (image-mem 1 3))
       (//
        (? (= G 3)) (nop@)
        (image-file "b:¥gpc¥Ns1_552.gpc") (image-mem 1 0)
        (image-file "b:¥gpc¥Ns1_556.gpc") (image-mem 1 0)
        (image-file "b:¥gpc¥Ns1_561.gpc") (image-mem 1 0)
        (image-file "b:¥gpc¥Ns1_559.gpc") (image-mem 1 3))
       (//
        (? (= G 4)) (nop@)
        (image-file "b:¥gpc¥Ns1_553.gpc") (image-mem 1 0)
        (image-file "b:¥gpc¥Ns1_558.gpc") (image-mem 1 3))
       (//
        (? (= G 5)) (nop@)
        (image-file "b:¥gpc¥Ns1_554.gpc") (image-mem 1 0)
        (image-file "b:¥gpc¥Ns1_556.gpc") (image-mem 1 0)
        (image-file "b:¥gpc¥Ns1_558.gpc") (image-mem 1 3))
       (//
        (? (= G 6)) (nop@)
        (image-file "b:¥gpc¥Ns1_555.gpc") (image-mem 1 0)
        (image-file "b:¥gpc¥Ns1_557.gpc") (image-mem 1 0)
        (image-file "b:¥gpc¥Ns1_560.gpc") (image-mem 1 3))))

; 	Face portrait setup (only on first visit)

  (branch-reg 333
   (</>
    (/
     (exec-mem 2816 "INIT,SHOW 0,ACCESS 1")
     (image-file "gpc¥face_w00.gpc")
     (image-mem 0 0)
     (exec-mem 2816 "GET 20 71 320 8 64")
     (exec-mem 2816 "ACCESS 0")
     (set-reg 333 #t))
    (/ (nop@))))

; 	Miscellaneous scripting for first and subsequent visits

  (branch-reg 991
   (</>
    (/ ((cmd 209) 1 2) (set-reg 991 #t))
    (/ (exec-mem 19456 1 48 36 48 36 8 4 103 75 8 20))))
  ((cmd 209) 1 2)

; 	Intro begins here...

  (if (</>

; 		Introduction

       (//
        (? (= 700 #f))
        (nop@)
        (set-reg 700 #t)	; Flag set so intro is not shown again
        (set-reg 666 #t)
        (set-var D 0)		; New addition: Variable set to ensure you don't have coins going into the dungeon, thanks ValleyBell for figuring this out

        (proc 9) (proc 11) (proc 10)
            ; Nursia:
                (str "The castle has six floors, and one of them")
        (str "has a control room.")
        (proc 15)
        (proc 14)
        (proc 2)
            ; Tanchi:
                (str "Control room? What does any of this" 'br)
        (str "mean...!?")
        (proc 15)
        (proc 9) (proc 11) (proc 10)
            ; Nursia:
                (str "Well, you can use the warp device in each" 'br)
        (str "room to move between the floors.")
        (proc 15)
        (proc 14)
        (proc 9) (proc 11) (proc 10)
            ; Nursia:
                (str "If you don't warp correctly, you won't be" 'br)
        (str "able to reach the control room.")
        (proc 15)
        (proc 14)
        (proc 2)
            ; Tanchi:
                (str "So...do you know how to warp correctly?")
        (proc 15)
        (proc 9) (proc 11) (proc 10)
            ; Nursia:
                (str "It was written in the ancient Elektros" 'br)
        (str "scripts, so... I forgot.")
        (proc 15)
        (proc 14))

; 		Entering 2F for first time

       (//
        (? (= G 2) (= 701 #f))
        (nop@)
        (set-reg 666 #t)
        (set-reg 991 #t)
        (sound '|| 0)
        (sound '|| "uso¥Nurse10.uso")
        (sound '|| 1)
        (exec-mem 19456 2 8 4 103 75 8 40 103 40 0 20)
        (image-file "b:¥gpc¥ns1_575.gpc")
        (image-mem 1 3)
        (exec-mem 19456 1 8 40 103 40 8 4 103 75 8 20)
        (text-color 11)
        (str "Momoko: Heh heh heh! You're not getting past me!")
        (proc 15)
        (proc 3)
        (exec-mem 2816 "GET 2 0 0 10 96") ; Smiling
        (proc 4)
        (proc 0)
            ; Dengeki Nurse:
                       (str "Please be a good girl and step" 'br)
        (str "aside!")
        (proc 15)
        (proc 6)
        (text-color 11)
        (str "Momoko: Shut up! You wanna pass, beat me first!")
        (proc 15)
        (proc 3)
        (exec-mem 2816 "GET 2 50 0 10 96") ; Confused
        (proc 4)
        (proc 0)
            ; Dengeki Nurse:
                       (str "So that's how it's gonna be..." 'br)
        (str "You'd be a lot happier living like a normal high" 'br)
        (str "school girl, you know...")
        (proc 15)
        (proc 6)
        (text-color 11)
        (str "Momoko: Don't you judge me! I'm beating the crap" 'br)
        (str "out of you!")
        (proc 15)
        (exec-mem 10752 "EXIT")
        (exec-mem 2816 "EXIT")
        (set-var R 0)
        (set-var U 4)
        (sound '|| 2)
        (mes-load? "mes¥action1.mes")
        (branch-var Q (</> (/ (nop@)) (/ (nop@) (set-reg 701 #t)) (/ (nop@))))
        (exec-mem 2816 "INIT,SHOW 0,ACCESS 1")
        (image-file "gpc¥face_w00.gpc") (image-mem 0 0)
        (exec-mem 2816 "GET 20 71 320 8 64")
        (exec-mem 2816 "ACCESS 0")
        (sound '|| 0)
        (sound '|| "uso¥Nurse14.uso")
        (sound '|| 1)
        (image-file "gpc¥Aflame01.gpc")   (image-mem 1 3)
        (image-file "b:¥gpc¥Ns1_550.gpc") (image-mem 1 0)
        (image-file "b:¥gpc¥Ns1_551.gpc") (image-mem 1 0)
        (image-file "b:¥gpc¥Ns1_556.gpc") (image-mem 1 0)
        (image-file "b:¥gpc¥Ns1_558.gpc") (image-mem 1 0)
        (image-file "b:¥gpc¥Ns1_559.gpc") (image-mem 1 3)
        (exec-mem 17920 0 1)
        (exec-mem 6656 8)
        (proc 3)
        (exec-mem 2816 "GET 2 10 0 10 96") ; Happy
        (proc 4)
        (text-frame 3 324 52 379)
        (text-reset 15)
        (proc 0)
            ; Dengeki Nurse:
                       (str "Okay, so what do we do now?")
        (proc 15)
        (proc 6))))

  (if (</> (// (? (= 666 #t)) (nop@) (set-reg 666 #f)) (// (proc 13))))
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

; The typical
     (/ (nop@) (set-var T 0) (set-var O 0) (seg-call)) ; Think
     (/ (nop@) (set-var T 1) (set-var O 0) (seg-call)) ; Look
     (/ (nop@) (set-var T 2) (set-var O 0) (seg-call)) ; Talk
     (/ (nop@) (set-var T 3) (set-var O 0) (seg-call)) ; Action
     (/ (nop@) (set-var T 4) (set-var O 0) (seg-call)) ; Move
     (/ (nop@) (set-var T 5) (set-var O 0) (seg-call)) ; Save

; Room selection
     (/ (nop@) (set-var T 6)  (set-var O 0) (seg-call))
     (/ (nop@) (set-var T 7)  (set-var O 0) (seg-call))
     (/ (nop@) (set-var T 8)  (set-var O 0) (seg-call))
     (/ (nop@) (set-var T 9)  (set-var O 0) (seg-call))
     (/ (nop@) (set-var T 10) (set-var O 0) (seg-call))

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
   (branch-random
    (</>
     (/ (str "I hate dungeons! They are dark, cramped, and" 'br "scary!"))
     (/ (str "Arrghhh, I HATE dungeons! ...But I can't complain" 'br "too much, not when I've got two cute girls with" 'br "me!"))
     (/ (str "I absolutely positively freakin' HATE dungeons!!" 'br "Especially 3D ones! They SUUUUUUUUUUUUUUUUUUUUUCK!"))))
   (proc 15)
   (proc 19))

 (seg (? (= T 1) (= O 0))												; Look
   (proc 18)
   (text-color 7)
   (str "We're on the ")
   (branch-var F
    (</>
     (/ (nop@))
     (/ (str "first"))
     (/ (str "second"))
     (/ (str "third"))
     (/ (str "fourth"))
     (/ (str "fifth"))
     (/ (str "sixth"))))
   (str " floor of the castle.")
   (proc 15)
   (proc 19))

 (seg (? (= T 2) (= O 0))												; Talk
   (proc 18)
   (branch-random
    (</>
     (/
      (proc 2)
          ; Tanchi:
              (str "Kirara, are you into dungeons?")
      (proc 15)
      (proc 3)
      (exec-mem 2816 "GET 2 10 0 10 96") ; Happy
      (proc 4)
      (proc 0)
          ; Dengeki Nurse:
                     (str "I hate dungeons in games, but real" 'br)
      (str "ones get me kinda excited!")
      (proc 15)
      (proc 6))
     (/
      (proc 2)
          ; Tanchi:
              (str "Nursia, can't you remember anything about" 'br)
      (str "the control room?")
      (proc 15)
      (proc 9) (proc 11) (proc 10)
          ; Nursia:
              (str "I'm sorry... That's the one thing I just" 'br)
      (str "don't know about.")
      (proc 15)
      (proc 14))
     (/
      (proc 2)
          ; Tanchi:
              (str "Nursia, how's your constitution?")
      (proc 15)
      (proc 9) (proc 11) (proc 10)
          ; Nursia:
              (str "I'm feeling a little better. Maybe it's" 'br)
      (str "the fresh Elektros air?")
      (proc 15)
      (proc 14))))
   (proc 19))

 (seg (? (= T 3) (= O 0))												; Action
   (proc 18)
   (branch-random
    (</>
     (/
      (proc 3)
      (exec-mem 2816 "GET 2 30 0 10 96") ; Angry
      (proc 4)
      (proc 0)
          ; Dengeki Nurse:
                     (str "Hey! Don't touch my butt!")
      (proc 15)
      (proc 6)
      (proc 2)
          ; Tanchi:
              (str "Oh, it's just... It's been a while...")
      (proc 15))
     (/
      (proc 9) (proc 11) (proc 10)
          ; Nursia:
              (str "Tanchi... If you dance in a dungeon, it" 'br)
      (str "brings out the ghosts.")
      (proc 15)
      (proc 14))
     (/
      (proc 9) (proc 11) (proc 10)
          ; Nursia:
              (str "Doctor Tanchi...  That hand better not be" 'br)
      (str "doing what I think it is.")
      (proc 15)
      (proc 14)
      (proc 3)
      (exec-mem 2816 "GET 2 30 0 10 96") ; Angry
      (proc 4)
      (proc 0)
          ; Dengeki Nurse:
                     (str "TANCHI!")
      (proc 15)
      (proc 6))))
   (proc 19))

 (seg (? (= T 4) (= O 0))												; Move
   (proc 18)
   (text-color 1)
   (str "Which room do you want to enter? Select a door by" 'br)
   (str "clicking on it.")
   (proc 15)
   (exec-mem 18944 65535 382 286)
   (proc 19))

 (seg (? (= T 5) (= O 0))												; Save
   (proc 18)
   (mes-load? "mes¥save.mes")
; FMT
;  (branch-reg 750 (</> (/ (nop@)) (/ ((cmd 212)))))

;  (define-proc 10 (<> (text-color 11) (str "Nursia: ")))
;  (define-proc 11 (<> (text-color 11) (str "Momoko: ")))
   (proc 19)
   (set-var B 5)
   (set-var C 5))

; 	Complicated dungeon code begins here...


; 	Door 1

 (seg (? (= T 6) (= O 0))
   (nop@)
   (set-var S 1)
   (proc 18)

; Psycho barrier toggle
   (if (</>
        (// (? (= G 1)) (nop@) (set-reg 851 #t))   ; 1F
        (// (? (= G 2)) (nop@) (set-reg 850 #t))   ; 2F
        (// (? (= G 3)) (nop@) (set-reg 850 #t))   ; 3F
        (// (? (= G 4)) (nop@) (set-reg 851 #t))   ; 4F
        (// (? (= G 5)) (nop@) (set-reg 850 #t))   ; 5F
        (// (? (= G 6)) (nop@) (set-reg 851 #t)))) ; 6F

; Display different door text based on above
   (if (</>
        (// (? (= 850 #t)) (nop@) (set-reg 850 #f) (set-var T 11) (set-var O 0) (seg-call))
        (// (? (= 851 #t)) (nop@) (set-reg 851 #f) (set-var T 12) (set-var O 0) (seg-call))))

   (define-proc 12 (<> (exec-mem 19456 2 8 4 103 75 18 49 18 49 0 20)))
   (define-proc 13 (<> (exec-mem 19456 1 48 36 48 36 8 4 103 75 8 20)))

; Define room type
   (branch-var F
    (</>
     (/ (nop@))
     (/                                    (proc 12) (mes-jump "b:¥mes¥Ns15_16B.mes"))    ; 1F
     (/ (branch-reg 804 (</> (/ (nop@)) (/ (proc 12) (mes-jump "b:¥mes¥Ns15_16A.mes"))))) ; 2F
     (/ (branch-reg 804 (</> (/ (nop@)) (/ (proc 12) (mes-jump "b:¥mes¥Ns15_16A.mes"))))) ; 3F
     (/                                    (proc 12) (mes-jump "b:¥mes¥Ns15_16B.mes"))    ; 4F
     (/ (branch-reg 804 (</> (/ (nop@)) (/ (proc 12) (mes-jump "b:¥mes¥Ns15_16A.mes"))))) ; 5F
     (/                                    (proc 12) (mes-jump "b:¥mes¥Ns15_16C.mes"))))  ; 6F
   (proc 19))

; 	Door 2

 (seg (? (= T 7) (= O 0))
   (nop@)
   (set-var S 2)
   (proc 18)

; Psycho barrier toggle
   (if (</>
        (// (? (= G 1)) (nop@) (set-reg 851 #t))
        (// (? (= G 2)) (nop@) (set-reg 851 #t))
        (// (? (= G 3)) (nop@) (set-reg 851 #t))
        (// (? (= G 4)) (nop@) (set-reg 851 #t))
        (// (? (= G 5)) (nop@) (set-reg 851 #t))
        (// (? (= G 6)) (nop@) (set-reg 850 #t))))

; Display different door text based on above
   (if (</>
        (// (? (= 850 #t)) (nop@) (set-reg 850 #f) (set-var T 11) (set-var O 0) (seg-call))
        (// (? (= 851 #t)) (nop@) (set-reg 851 #f) (set-var T 12) (set-var O 0) (seg-call))))

   (define-proc 12 (<> (exec-mem 19456 2 8 4 103 75 34 45 34 45 0 20)))
   (define-proc 13 (<> (exec-mem 19456 1 48 36 48 36 8 4 103 75 8 20)))

; Define room type
   (branch-var F
    (</>
     (/ (nop@))
     (/                                    (proc 12) (mes-jump "b:¥mes¥Ns15_16A.mes"))
     (/                                    (proc 12) (mes-jump "b:¥mes¥Ns15_16B.mes"))
     (/                                    (proc 12) (mes-jump "b:¥mes¥Ns15_16B.mes"))
     (/                                    (proc 12) (mes-jump "b:¥mes¥Ns15_16C.mes"))
     (/                                    (proc 12) (mes-jump "b:¥mes¥Ns15_16B.mes"))
     (/ (branch-reg 804 (</> (/ (nop@)) (/ (proc 12) (mes-jump "b:¥mes¥Ns15_16A.mes")))))))
   (proc 19))

; 	Door 3

 (seg (? (= T 8) (= O 0))
   (nop@)
   (set-var S 3)
   (proc 18)

; Psycho barrier toggle
   (if (</>
        (// (? (= G 1)) (nop@) (set-reg 851 #t))
        (// (? (= G 2)) (nop@) (set-reg 850 #t))
        (// (? (= G 4)) (nop@) (set-reg 850 #t))
        (// (? (= G 5)) (nop@) (set-reg 850 #t))
        (// (? (= G 6)) (nop@) (set-reg 851 #t))))
; ^ Floor 3 doesn't appear here as it is custom, see below

; Display different door text based on above
   (if (</>
        (// (? (= 850 #t)) (nop@) (set-reg 850 #f) (set-var T 11) (set-var O 0) (seg-call))
        (// (? (= 851 #t)) (nop@) (set-reg 851 #f) (set-var T 12) (set-var O 0) (seg-call))))

   (define-proc 12 (<> (exec-mem 19456 2 8 4 103 75 55 45 55 45 0 20)))
   (define-proc 13 (<> (exec-mem 19456 1 48 36 48 36 8 4 103 75 8 20)))

; Define room type
   (branch-var F
    (</>
     (/ (nop@))
     (/                                    (proc 12) (mes-jump "b:¥mes¥Ns15_16C.mes"))
     (/ (branch-reg 804 (</> (/ (nop@)) (/ (proc 12) (mes-jump "b:¥mes¥Ns15_16B.mes")))))

; 	Unique dialogue for Elektros-sealed door
     (/
      (branch-reg 805
       (</>

; 		Without crest
        (/
         (proc 9) (proc 11) (proc 10)
             ; Nursia:
                 (str "That room's been sealed by the power of" 'br)
         (str "Elektros. Without an Elektros Crest, you can't go" 'br)
         (str "inside...")
         (proc 15)
         (proc 14))

; 		With Crest
        (/
         (text-color 7)
         (str "I insert the Elektros Crest into the door!")
         (proc 15)
         (text-color 1)
         (str "WRRRRRRRRRT....")
         (proc 15)
         (text-color 7)
         (str "We enter the room.")
         (proc 15)
         (proc 12)
         (mes-jump "b:¥mes¥Ns15_16A.mes")))))

; 	Regular branching continues
     (/ (branch-reg 804 (</> (/ (nop@)) (/ (proc 12) (mes-jump "b:¥mes¥Ns15_16A.mes")))))
     (/ (branch-reg 804 (</> (/ (nop@)) (/ (proc 12) (mes-jump "b:¥mes¥Ns15_16C.mes")))))
     (/                                    (proc 12) (mes-jump "b:¥mes¥Ns15_16A.mes"))))
   (proc 19))

; 	Door 4

 (seg (? (= T 9) (= O 0))
   (nop@)
   (set-var S 4)
   (proc 18)

; Psycho barrier toggle
   (if (</>
        (// (? (= G 1)) (nop@) (set-reg 851 #t))
        (// (? (= G 2)) (nop@) (set-reg 850 #t))
        (// (? (= G 3)) (nop@) (set-reg 850 #t))
        (// (? (= G 4)) (nop@) (set-reg 851 #t))
        (// (? (= G 5)) (nop@) (set-reg 851 #t))
        (// (? (= G 6)) (nop@) (set-reg 851 #t))))

; Display different door text based on above
   (if (</>
        (// (? (= 850 #t)) (nop@) (set-reg 850 #f) (set-var T 11) (set-var O 0) (seg-call))
        (// (? (= 851 #t)) (nop@) (set-reg 851 #f) (set-var T 12) (set-var O 0) (seg-call))))

   (define-proc 12 (<> (exec-mem 19456 2 8 4 103 75 76 45 76 45 0 20)))
   (define-proc 13 (<> (exec-mem 19456 1 48 36 48 36 8 4 103 75 8 20)))

; Define room type
   (branch-var F
    (</>
     (/ (nop@))
     (/                                    (proc 12) (mes-jump "b:¥mes¥Ns15_16A.mes"))
     (/ (branch-reg 804 (</> (/ (nop@)) (/ (proc 12) (mes-jump "b:¥mes¥Ns15_16C.mes")))))
     (/ (branch-reg 804 (</> (/ (nop@)) (/ (proc 12) (mes-jump "b:¥mes¥Ns15_16B.mes")))))
     (/                                    (proc 12) (mes-jump "b:¥mes¥Ns15_16A.mes"))
     (/                                    (proc 12) (mes-jump "b:¥mes¥Ns15_16A.mes"))
     (/                                    (proc 12) (mes-jump "b:¥mes¥Ns15_16B.mes"))))
   (proc 19))

; 	Door 5

 (seg (? (= T 10) (= O 0))
   (nop@)
   (set-var S 5)
   (proc 18)

; Psycho barrier toggle
   (if (</>
        (// (? (= G 1)) (nop@) (set-reg 851 #t))
        (// (? (= G 2)) (nop@) (set-reg 851 #t))
        (// (? (= G 3)) (nop@) (set-reg 851 #t))
        (// (? (= G 4)) (nop@) (set-reg 851 #t))
        (// (? (= G 5)) (nop@) (set-reg 851 #t))
        (// (? (= G 6)) (nop@) (set-reg 850 #t))))

; Display different door text based on above
   (if (</>
        (// (? (= 850 #t)) (nop@) (set-reg 850 #f) (set-var T 11) (set-var O 0) (seg-call))
        (// (? (= 851 #t)) (nop@) (set-reg 851 #f) (set-var T 12) (set-var O 0) (seg-call))))

   (define-proc 12 (<> (exec-mem 19456 2 8 4 103 75 92 49 92 49 0 20)))
   (define-proc 13 (<> (exec-mem 19456 1 48 36 48 36 8 4 103 75 8 20)))

; Define room type
   (branch-var F
    (</>
     (/ (nop@))
     (/                                    (proc 12) (mes-jump "b:¥mes¥Ns15_16A.mes"))
     (/                                    (proc 12) (mes-jump "b:¥mes¥Ns15_16A.mes"))
     (/                                    (proc 12) (mes-jump "b:¥mes¥Ns15_16A.mes"))
     (/                                    (proc 12) (mes-jump "b:¥mes¥Ns15_16B.mes"))
     (/                                    (proc 12) (mes-jump "b:¥mes¥Ns15_16D.mes"))
     (/ (branch-reg 804 (</> (/ (nop@)) (/ (proc 12) (mes-jump "b:¥mes¥Ns15_16A.mes")))))))
   (proc 19))

; 	Door entry text follows...

 (seg (? (= T 11) (= O 0))											; With psycho barrier
   (nop@)
   (branch-reg 800
    (</>

	; without release controller
     (/
      (proc 9) (proc 11) (proc 10)
          ; Nursia:
              (str "This room has a psycho barrier. We can't" 'br)
      (str "enter without its release controller.")
      (proc 15)
      (proc 14))

	; with release controller
     (/
      (text-color 7)
      (str "I activate the psycho barrier's release" 'br)
      (str "controller.")
      (proc 15)
      (text-color 1)
      (str "WRRRWRRRRWRRRR...")
      (proc 15)
      (repeat 2
       (<>
        (exec-mem 1280 9 10 11 10) (delay 6)
        (exec-mem 1280 9 10 11 11) (delay 6)
        (exec-mem 1280 9 10 10 11) (delay 6)
        (exec-mem 1280 9 11 10 11) (delay 6)
        (exec-mem 1280 9 11 10 10) (delay 6)
        (exec-mem 1280 9 11 11 10) (delay 6)))
      (exec-mem 1280 9 11 10 10)
      (text-color 7)
      (str "We get pulled into the barrier!")
      (proc 15)))))

 (seg (? (= T 12) (= O 0))											; Regular door
   (nop@)
   (branch-random
    (</>
     (/
      (proc 9) (proc 11) (proc 10)
          ; Nursia:
              (str "Doctor Tanchi, please be careful...")
      (proc 15)
      (proc 14))
     (/
      (proc 3)
      (exec-mem 2816 "GET 2 10 0 10 96") ; Happy
      (proc 4)
      (proc 0)
          ; Dengeki Nurse:
                     (str "Wow, this is getting me fired up!")
      (proc 15)
      (proc 6))
     (/
      (proc 3)
      (exec-mem 2816 "GET 2 10 0 10 96") ; Happy
      (proc 4)
      (proc 0)
          ; Dengeki Nurse:
                     (str "Let's go inside already!")
      (proc 15)
      (proc 6))))))