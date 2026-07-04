; Dengeki Nurse English Translation - NS14_10.MES
; Translated by Geometrizer
; Edited and commented by trentsignia
; --Description:--
; F1 has gotten really crazy these days, man...
(mes
 (meta (engine 'ADV) (charset "pc98"))
 (seg*
  (load-mem "cmd¥quakeh.tcm" 6656)
; (define-proc 10 (<> (text-color 3)  (str "Nakajima: "))) <--- Sacrificing this so that the nurse portraits can do some space-saving
  (define-proc 11 (<> (text-color 8)  (proc 9)  (exec-mem 2816 "GET 2 40 192 10 96") (proc 10) (str "Nurse THE MANSELL: ")))
  (define-proc 12 (<> (text-color 11) (proc 13) (exec-mem 2816 "GET 2 30 192 10 96") (proc 14) (str "Nurse THE SENNA: ")))

; 	Missiles:

  (define-proc 1 (<> (exec-mem 2816 "GET 7 4 16 52 166") (exec-mem 2816 "VIEW 4 16 52 166,PUT 6 4 16"))) ; Display
  (define-proc 5 (<> (exec-mem 2816 "VIEW 4 16 52 166,PUT 7 4 16,FREE 7"))) ; Clear

; 	Nurse portraits:
; 	(Yes, it's so bad that I am borrowing an actively-used process to save a bit of space on this)

  (define-proc 7  (<> (exec-mem 2816 "VIEW 5 198 15 294,PUT 1 5 198,FREE 1"))) ; Clear Mansell
  (define-proc 9  (<> (exec-mem 2816 "GET 1 5 198 10 96") (exec-mem 2816 "SHOW 0,ACCESS 1"))) ; Display Mansell pt. 1
  (define-proc 10 (<> (exec-mem 2816 "ACCESS 0") (exec-mem 2816 "VIEW 5 198 15 294,PUT 2 5 198,FREE 2"))) ; Display Mansell pt. 2
  (define-proc 13 (<> (exec-mem 2816 "GET 1 40 198 10 96") (exec-mem 2816 "SHOW 0,ACCESS 1"))) ; Display Senna pt. 1
  (define-proc 14 (<> (exec-mem 2816 "ACCESS 0") (exec-mem 2816 "VIEW 40 198 50 294,PUT 2 40 198,FREE 2"))) ; Display Senna pt. 2

  (exec-mem 2816 "INIT,SHOW 0,ACCESS 1")
  (text-frame 0 0 79 399) (text-reset 0) (image-file "b:¥gpc¥ns1_424.gpc") (image-mem 0 0 0 0)
                                         (image-file "b:¥gpc¥ns1_427.gpc") (image-mem 1 0 0 0) (exec-mem 2816 "GET 6 0 0 48 150")
  (text-frame 0 0 79 399) (text-reset 0) (image-file "b:¥gpc¥ns1_429.gpc") (image-mem 0 0)     (exec-mem 2816 "GET 8 0 0 24 144")
                                         (image-file "gpc¥face_w00.gpc")   (image-mem 0 0)     (exec-mem 2816 "GET 20 71 320 8 64")
  (exec-mem 2816 "ACCESS 0")
  (exec-mem 10752 "INIT")
  (exec-mem 10752 "MODE V0E0M64")
  (exec-mem 10752 "LOAD> b:¥gpc¥ns1_428.gpc,TEMP")
  (sound '|| 0)
  (sound '|| "uso¥Nurse13.uso")
  (sound '|| 1)
  (image-file "gpc¥aflame01.gpc")   (image-mem 1 3)
  (image-file "b:¥gpc¥ns1_419.gpc") (image-mem 1 0)
  (image-file "b:¥gpc¥ns1_424.gpc") (image-mem 1 3)
  ((cmd 204) 117 126)

; 	Intro begins here...

  (text-frame 3 324 52 379)
  (text-reset 15)
  ((cmd 209) 1 2)
  (text-color 7)
  (str "Things are amiss; Senna and Mansell aren't making" 'br)
  (str "their normal moves. They're stuck on my tail...")
  (proc 15)
  (text-color 7)
  (str "Do they think they can blow by me anytime? Or are" 'br)
  (str "they fearful of my technique!?")
  (proc 15)
  (proc 1) ; Display missiles
  (text-color 1)
  (str "VOOOOOOSH!")
  (proc 15)
  (proc 5) ; Clear missiles
  (text-color 7)
  (str "Wha!? Something just flew by...")
  (proc 15)
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
           (// (? (= 120 #t))                                  (nop@) (set-var T 0) (set-var O 4) (seg-call))    ; (set-reg 126 #t)
           (// (? (= 119 #t) (= 120 #f))                       (nop@) (set-var T 0) (set-var O 3) (seg-call))
           (// (? (= 118 #t) (= 119 #f))                       (nop@) (set-var T 0) (set-var O 2) (seg-call))    ; (set-reg 119 #t)
           (// (? (= 117 #t) (= 118 #f))                       (nop@) (set-var T 0) (set-var O 1) (seg-call))    ; (set-reg 124 #t)
           (//                                                 (nop@) (set-var T 0) (set-var O 0) (seg-call))))) ; (set-reg 121 #t)
; Look
     (/
      (if (</>
           (// (? (= 120 #t))                                  (nop@) (set-var T 1) (set-var O 6) (seg-call))
           (// (? (= 119 #t) (= 120 #f))                       (nop@) (set-var T 1) (set-var O 5) (seg-call))    ; (set-reg 120 #t)
           (// (? (= 125 #t) (= 119 #f))                       (nop@) (set-var T 1) (set-var O 4) (seg-call))    ; (set-reg 118 #t)
           (// (? (= 124 #t) (= 125 #f))                       (nop@) (set-var T 1) (set-var O 3) (seg-call))    ; (set-reg 125 #t)
           (// (? (= 117 #t) (= 124 #f))                       (nop@) (set-var T 1) (set-var O 2) (seg-call))
           (// (? (= 121 #t) (= 122 #t) (= 123 #t) (= 117 #f)) (nop@) (set-var T 1) (set-var O 1) (seg-call))    ; (set-reg 117 #t)
           (//                                                 (nop@) (set-var T 1) (set-var O 0) (seg-call))))) ; (set-reg 122 #t)
; Talk
     (/
      (if (</>
           (// (? (= 126 #t))                                  (nop@) (set-var T 2) (set-var O 3) (seg-call))    ; (mes-jump "b:¥mes¥ns14_11.mes")
           (// (? (= 120 #t) (= 126 #f))                       (nop@) (set-var T 2) (set-var O 2) (seg-call))
           (// (? (= 117 #t) (= 120 #f))                       (nop@) (set-var T 2) (set-var O 1) (seg-call))
           (//                                                 (nop@) (set-var T 2) (set-var O 0) (seg-call))))) ; (set-reg 123 #t)
; Action
     (/
      (if (</>
           (// (? (= 120 #t))                                  (nop@) (set-var T 3) (set-var O 1) (seg-call))
           (//                                                 (nop@) (set-var T 3) (set-var O 0) (seg-call)))))
; Move
     (/
      (if (</>
           (// (? (= 120 #t))                                  (nop@) (set-var T 4) (set-var O 1) (seg-call))
           (//                                                 (nop@) (set-var T 4) (set-var O 0) (seg-call)))))
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
   (str "What was that?")
   (proc 15)
   (text-color 7)
   (str "Whatever! Kirara's kiss! Kirara's kiss! Kirara's" 'br)
   (str "kissss!")
   (proc 15)
   (proc 19)
   (set-reg 121 #t))
 (seg (? (= T 0) (= O 1))
   (proc 18)
   (text-color 7)
   (str "Whoa whoa whoa! What the heck are they doing!?" 'br)
   (str "Modern F1 cars can do THAT now? Modern technology" 'br)
   (str "has come leaps and bounds, geez!")
   (proc 15)
   (text-color 7)
   (str "But I'm not losing to some stupid missile! This" 'br)
   (str "race has Kirara's hot lips riding on it!")
   (proc 15)
   (proc 19)
   (set-reg 124 #t))
 (seg (? (= T 0) (= O 2))
   (proc 18)
   (text-color 7)
   (str "This is weird... Maybe it's just me, but... Maybe" 'br)
   (str "I'm focusing too much on winning?")
   (proc 15)
   (proc 1) ; Display missiles
   (text-color 1)
   (str "VOOSH VOOSH VOOOOOSH!")
   (proc 15)
   (text-color 7)
   (str "What the!? Again again again!?")
   (proc 15)
   (proc 5) ; Clear missiles
   (text-color 4)
   (str "Kirara: Tanchi! Here! Over here!")
   (proc 15)
   (proc 19)
   (set-reg 119 #t))
 (seg (? (= T 0) (= O 3))
   (proc 18)
   (text-color 7)
   (str "Hmm, now I'm hallucinating Kirara's voice... I" 'br)
   (str "need to get my brain checked after this race is" 'br)
   (str "over, truth be told...")
   (proc 15)
   (proc 19))
 (seg (? (= T 0) (= O 4))
   (proc 18)
   (text-color 7)
   (str "I can't believe it... I don't care about Senna," 'br)
   (str "but my beloved Mansell selling out to the Black" 'br)
   (str "Cross Society...?")
   (proc 15)
   (proc 19)
   (set-reg 126 #t))
 (seg (? (= T 1) (= O 0))												; Look
   (proc 18)
   (text-color 7)
   (str "Looking away when driving can cause an accident!")
   (proc 15)
   (proc 19)
   (set-reg 122 #t))
 (seg (? (= T 1) (= O 1))
   (proc 18)
   (proc 1) ; Display missiles
   (text-color 1)
   (str "VOOOOOOOSH!")
   (proc 15)
   (text-color 7)
   (str "Wh-What the...")
   (proc 15)
   (text-color 7)
   (str "Flying right next to me, it's...")
   (proc 15)
   (text-color 7)
   (str "Holy shit, it's a missile!")
   (proc 15)
   (proc 5) ; Clear missiles
   (proc 19)
   (set-reg 117 #t))
 (seg (? (= T 1) (= O 2))
   (proc 18)
   (text-color 7)
   (str "No, we're not on a missile flight path... We're on")
   (str "a circuit for crying out loud!")
   (proc 15)
   (proc 19))
 (seg (? (= T 1) (= O 3))
   (proc 18)
   (proc 1) ; Display missiles
   (text-color 1)
   (str "VOOOOOOOSH!")
   (proc 15)
   (text-color 7)
   (str "Crap! It's coming again!")
   (proc 15)
   (proc 5) ; Clear missiles
   (text-color 4)
   (str "Kirara: Tanchi! Tanchiiii!")
   (proc 15)
   (proc 2)
       ; Tanchi:
           (str "Kirara, what's wrong?")
   (proc 15)
   (text-color 3)
   (str "Nakajima: Kirara isn't here! She just ran out of" 'br)
   (str "here in a panic a minute ago!")
   (proc 15)
   (proc 19)
   (set-reg 125 #t))
 (seg (? (= T 1) (= O 4))
   (proc 18)
   (text-color 7)
   (str "I look in the rear view mirror.")
   (proc 15)
   (text-color 7)
   (str "Senna and Mansell continue to be glued to my tail,")
   (str "but I didn't see any trace of Kirara...")
   (proc 15)
   (text-color 7)
   (str "Of course I didn't! This is an F1 circuit! A" 'br)
   (str "blazing battlefield that runs at 300km/h!")
   (proc 15)
   (proc 19)
   (set-reg 118 #t))
 (seg (? (= T 1) (= O 5))
   (proc 18)
   (text-color 7)
   (str "I know you're not supposed to look away from the" 'br)
   (str "road when driving, but I turn towards the voice...")
   (proc 15)

; 	It's Dengeki Nurse!

   (exec-mem 19456 2 8 4 103 75 8 40 103 40 7 30)
   (exec-mem 19456 1 8 39 102 39 8 39 102 74 7 1)
   (exec-mem 10752 "COPY> b:¥gpc¥ns1_428.gpc,GPC")
   (image-mem 1)
   (exec-mem 19456 1 8 40 103 40 8 4 103 75 8 30)

; 	Text continues

   (proc 2)
       ; Tanchi:
           (str "K-Kirara! ...You're really fast...")
   (proc 15)
   (proc 0)
       ; Dengeki Nurse:
                  (str "Look out, Tanchi! That's not Senna" 'br)
   (str "and Mansell!")
   (proc 15)
   (proc 2)
       ; Tanchi:
           (str "Say what!?")
   (proc 15)
   (proc 0)
       ; Dengeki Nurse:
                  (str "They're probably Black Cross" 'br)
   (str "Society commandos!")
   (proc 15)
   (proc 2)
       ; Tanchi:
           (str "Oh, dammit! I'm not giving up on my hot" 'br)
   (str "Kirara smooch!")
   (proc 15)
   (proc 19)
   (set-reg 120 #t))
 (seg (? (= T 1) (= O 6))
   (proc 18)
   (text-color 7)
   (str "That being said, Senna and Mansell are still stuck")
   (str "behind me.")
   (proc 15)
   (proc 19))
 (seg (? (= T 2) (= O 0))												; Talk
   (proc 18)
   (proc 2)
       ; Tanchi:
           (str "Something just whizzed by me...!")
   (proc 15)
   (text-color 3)
   (str "Nakajima: Don't worry about it! Just focus on your")
   (str "driving!")
   (proc 15)
   (proc 19)
   (set-reg 123 #t))
 (seg (? (= T 2) (= O 1))
   (proc 18)
   (proc 2)
       ; Tanchi:
           (str "Nakajima-san! Missiles are literally" 'br)
   (str "flying by me right now!")
   (proc 15)
   (text-color 3)
   (str "Nakajima: Professional racing is all about facing" 'br)
   (str "the unexpected! Stay cool and keep attacking!")
   (proc 15)
   (proc 19))
 (seg (? (= T 2) (= O 2))
   (proc 18)
   (proc 2)
       ; Tanchi:
           (str "Kirara!")
   (proc 15)
   (proc 0)
       ; Dengeki Nurse:
                  (str "What!?")
   (proc 15)
   (proc 2)
       ; Tanchi:
           (str "It's nice to see you again!")
   (proc 15)
   (proc 0)
       ; Dengeki Nurse:
                  (str "Idiot!")
   (proc 15)
   (proc 19))
 (seg (? (= T 2) (= O 3))
   (proc 18)
   (proc 2)
       ; Tanchi:
           (str "Kirara! What you said before, is it true?")
   (proc 15)
   (proc 0)
       ; Dengeki Nurse:
                  (str "You two! It's about time you" 'br)
   (str "revealed your true selves!")
   (proc 15)
   (proc 11)
       ; Nurse THE MANSELL:
                      (str "So you finally show yourself," 'br)
   (str "you traitorous nurse! I am the Berserker Nurse," 'br)
   (str "THE MANSELL!")
   (proc 15)
   (proc 7) ; Clear Mansell portrait
   (proc 2)
       ; Tanchi:
           (str "You...you're Manko-chan!")
   (proc 15)
   (proc 12)
       ; Nurse THE SENNA:
                    (str "Hohoho, we'll both give you your" 'br)
   (str "prescribed treatment! I am the Hypersonic Nurse," 'br)
   (str "THE SENNA!")
   (proc 15)
   (exec-mem 2816 "VIEW 40 198 50 294,PUT 1 40 198,FREE 1") ; Clear Senna portrait
   (proc 2)
       ; Tanchi:
           (str "What!? You're Sena-chan!")
   (proc 15)
   (proc 11)
       ; Nurse THE MANSELL:
                      (str "Prepare yourself!")
   (proc 15)
   (proc 7) ; Clear Mansell portrait
   (proc 2)
       ; Tanchi:
           (str "What...what the hell are you doing!?")
   (proc 15)
   (proc 11)
       ; Nurse THE MANSELL:
                      (str "LION HEAAAAAART!")
   (sound '|| 0) ; SFX originally wedged between the portrait display code and namecard
   (sound '|se | 20)
   (proc 15)
   (proc 7) ; Clear Mansell portrait

; 	Mansell crashes into Tanchi's car.

   (exec-mem 2816 "VIEW 16 96 40 240,PUT 8 16 96,FREE 8")
   (sound '|| 0)
   (sound '|se | 20)
   (exec-mem 6656 1 0 1 3 0)
   (text-color 1)
   (text "Ｓｃｒｅｅｅｅｅｅｅｅｃｈ！")
   (proc 15)
   (sound '|| 0)
   (sound '|se | 24)
   (exec-mem 6656 1 0 1 6 0)
   (text-color 1)
   (text "ＫＡＡＡＢＯＯＯＯＯＯＯＯＯＭ！！！")
   (proc 15)
   (proc 0)
       ; Dengeki Nurse:
                  (str "Eeeeeek!")
   (proc 15)
   (proc 12)
       ; Nurse THE SENNA:
                    (str "Just as I'd expect, Man-chan!" 'br)
   (str "Your blood overflows with adrenaline!")
   (proc 15)
   ((cmd 209) 0 2)
   (text-frame 3 324 52 379) (text-reset 15)
   (text-frame 4 16 51 303)  (text-reset 15)
   (exec-mem 10752 "EXIT")
   (exec-mem 2816 "EXIT")
   (set-reg 990 #f)

; 	Nurse portraits:

   (define-proc 1 (<> (text-color 4) (str "Kirara: ")))
   (define-proc 5 (<> (text-color 8) (str "Dr. Akiba: ")))
   (define-proc 7 (<> (text-color 1) (str "Black Nurse: ")))

   (mes-jump "b:¥mes¥ns14_11.mes"))
 (seg (? (= T 3) (= O 0))												; Action
   (proc 18)
   (text-color 7)
   (str "I'm bummed out that F1 cars don't come equipped" 'br)
   (str "with car stereos!")
   (proc 15)
   (proc 19))
 (seg (? (= T 3) (= O 1))
   (proc 18)
   (text-color 7)
   (str "Hmm... I can't reach Kirara's butt...")
   (proc 15)
   (proc 19))
 (seg (? (= T 4) (= O 0))												; Move
   (proc 18)
   (text-color 7)
   (str "We're rocketing along at 300km/h! I've got the" 'br)
   (str "checkered flag in my sights!")
   (proc 15)
   (proc 19))
 (seg (? (= T 4) (= O 1))
   (proc 18)
   (text-color 7)
   (str "I should dive into Kirara's boobs!")
   (proc 15)
   (text-color 7)
   (str "No, not now...")
   (proc 15)
   (proc 19))
 (seg (? (= T 5) (= O 0))												; Save
   (proc 18)
   (mes-load? "mes¥save.mes")
; FMT
;  (branch-reg 750 (</> (/ (nop@)) (/ ((cmd 212)))))
;  (define-proc 10 (<> (text-color 3)  (str "Nakajima: ")))
;  (define-proc 11 (<> (text-color 8)  (str "Nurse THE MANSELL: ")))
;  (define-proc 12 (<> (text-color 11) (str "Nurse THE SENNA: ")))
   (proc 19)
   (set-var B 4)
   (set-var C 4)))