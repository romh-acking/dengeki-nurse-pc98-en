; Dengeki Nurse English Translation - NS15_14.MES
; Translated by Geometrizer
; Edited and commented by trentsignia
; --Description:--
; 
(mes
 (meta (engine 'ADV) (charset "pc98"))
 (seg*
  (define-proc 10 (<> (text-color 5)  (str "Mitsuko: ")))
; (define-proc 11 (<> (text-color 11) (str "Nursia: "))) <--- only used once

; 	Character portraits:

  (define-proc 9 (<> (proc 3) (exec-mem 2816 "GET 2 60 0 10 96") (proc 4))) ; Shouting

; 	Black Nurse portrait:

  (define-proc 12 (<> (exec-mem 2816 "GET 1 41 23 10 96") (exec-mem 2816 "SHOW 0,ACCESS 1") (exec-mem 2816 "GET 2 0 288 10 96")))
  (define-proc 13 (<> (exec-mem 2816 "ACCESS 0") (exec-mem 2816 "VIEW 41 23 51 120,PUT 2 41 23,FREE 2")))
  (define-proc 14 (<> (exec-mem 2816 "VIEW 41 23 51 120,PUT 1 41 23,FREE 1")))

; 	Setup continues...

  (exec-mem 2816 "INIT,SHOW 0,ACCESS 1")
  (text-frame 0 0 79 399)
  (text-reset 0)
  (image-file "b:¥gpc¥ns1_523.gpc") (image-mem 0 0) (exec-mem 2816 "GET 10 0 0 24 144")
  (image-file "gpc¥face_w00.gpc")   (image-mem 0 0) (exec-mem 2816 "GET 20 71 320 8 64")
  (exec-mem 2816 "ACCESS 0")
  (exec-mem 10752 "INIT")
  (exec-mem 10752 "MODE V0E0M96")
  (exec-mem 10752 "LOAD> b:¥gpc¥ns1_523.gpc,TEMP")
  (exec-mem 10752 "LOAD> b:¥gpc¥ns1_524.gpc,TEMP")
  (exec-mem 10752 "LOAD> b:¥gpc¥ns1_525.gpc,TEMP")
  (sound '|| 0)
  (sound '|| "uso¥Nurse10.uso")
  (sound '|| 1)
  (image-file "b:¥gpc¥ns1_522.gpc")
  (image-mem 1 3)

; 	Intro begins here...

  (text-frame 3 324 52 379)
  (text-reset 15)
  ((cmd 204) 78 81)
  ((cmd 209) 1 2)
  (proc 9) ; Portrait (Shouting)
  (proc 1)
      ; Kirara:
          (str "Mother!")
  (proc 15)
  (proc 6) ; Clear Kirara portrait
  (proc 10)
           (str "Kirara! You shouldn't have come...")
  (proc 15)
  (proc 12) (proc 13) (proc 7)
      ; Black Nurse:
               (str "Ho ho ho! What a touching reunion!")
  (proc 15)
  (proc 14) ; Clear Black Nurse portrait
  (proc 2)
      ; Tanchi:
          (str "Nursia!")
  (proc 15)
  (text-color 11)
  (str "Nursia: Doctor Tanchi...")
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
           (// (? (= 80 #t))           (nop@) (set-var T 0) (set-var O 3) (seg-call))
           (// (? (= 79 #t) (= 80 #f)) (nop@) (set-var T 0) (set-var O 2) (seg-call))    ; (set-reg 80 #t)
           (// (? (= 78 #t) (= 79 #f)) (nop@) (set-var T 0) (set-var O 1) (seg-call))
           (//                         (nop@) (set-var T 0) (set-var O 0) (seg-call)))))
; Look
     (/
      (if (</>
           (// (? (= 79 #t))           (nop@) (set-var T 1) (set-var O 2) (seg-call))
           (// (? (= 78 #t) (= 79 #f)) (nop@) (set-var T 1) (set-var O 1) (seg-call))    ; (set-reg 79 #t)
           (//                         (nop@) (set-var T 1) (set-var O 0) (seg-call)))))
; Talk
     (/
      (if (</>
           (// (? (= 80 #t))           (nop@) (set-var T 2) (set-var O 3) (seg-call))    ; (mes-jump "b:¥mes¥ns15_15.mes")
           (// (? (= 78 #t) (= 80 #f)) (nop@) (set-var T 2) (set-var O 2) (seg-call))
           (// (? (= 81 #t) (= 78 #f)) (nop@) (set-var T 2) (set-var O 1) (seg-call))    ; (set-reg 78 #t)
           (//                         (nop@) (set-var T 2) (set-var O 0) (seg-call)))))
; Action
     (/
      (if (</>
           (// (? (= 78 #t))           (nop@) (set-var T 3) (set-var O 1) (seg-call))
           (//                         (nop@) (set-var T 3) (set-var O 0) (seg-call))))) ; (set-reg 81 #t)
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
   (str "Damn, talk about a late arrival...")
   (proc 15)
   (proc 19))
 (seg (? (= T 0) (= O 1))
   (proc 18)
   (text-color 7)
   (str "What... What's going on here!?")
   (proc 15)
   (proc 19))
 (seg (? (= T 0) (= O 2))
   (proc 18)
   (text-color 7)
   (str "That's it! The mist there, it's draining the" 'br)
   (str "static electricity from Kirara!")
   (proc 15)
   (text-color 7)
   (str "No static... That means without plasma waves in" 'br)
   (str "the air, Kirara can't transform!")
   (proc 15)
   (text-color 7)
   (str "And if it's draining the static electricity inside")
   (str "her, she can't become Dengeki Nurse...")
   (proc 15)
   (text-color 7)
   (str "No! Her life's in danger!")
   (proc 15)
   (text-color 7)
   (str "Dammit! So this is how it is?")
   (proc 15)
   (proc 19)
   (set-reg 80 #t))
 (seg (? (= T 0) (= O 3))
   (proc 18)
   (text-color 7)
   (str "That settles it! If this is where we are, then I" 'br)
   (str "will defeat Black Nurse! A man must stand up and" 'br)
   (str "fight, even when the odds are impossible!")
   (proc 15)
   (proc 19))
 (seg (? (= T 1) (= O 0))												; Look
   (proc 18)
   (text-color 7)
   (str "Mitsuko, dressed as Dengeki Nurse, lies in a heap.")
   (str "Nursia is wrapped in the trunk of a giant and" 'br)
   (str "Black Nurse has an evil grin.")
   (proc 15)
   (proc 19))
 (seg (? (= T 1) (= O 1))
   (proc 18)
   (text-color 7)
   (str "Kirara is taking it hard, covered in the strange" 'br)
   (str "mist from Black Nurse's container. It looks like" 'br)
   (str "she's in pain!")
   (proc 15)
   (text-color 7)
   (str "It looks like the mist is making something snap" 'br)
   (str "and crackle in the air...")
   (proc 15)
   (proc 12) (proc 13) (proc 7)
       ; Black Nurse:
                (str "Ho ho ho, I'll drain all of that" 'br)
   (str "meddlesome plasma power from your body!")
   (proc 15)
   (proc 14) ; Clear Black Nurse portrait
   (proc 1)
       ; Kirara:
           (str "Ahhhhhh.....")
   (proc 15)
   (proc 19)
   (set-reg 79 #t))
 (seg (? (= T 1) (= O 2))
   (proc 18)
   (text-color 7)
   (str "Kirara looks like she's in agony!")
   (proc 15)
   (proc 19))
 (seg (? (= T 2) (= O 0))												; Talk
   (proc 18)
   (proc 2)
       ; Tanchi:
           (str "Black Nurse! You're committing a crime" 'br)
   (str "against humanity!")
   (proc 15)
   (proc 12) (proc 13) (proc 7)
       ; Black Nurse:
                (str "Ho ho ho! Don't be such a drama" 'br)
   (str "queen! We were just having a nice little" 'br)
   (str "conversation!")
   (proc 15)
   (proc 14) ; Clear Black Nurse portrait
   (proc 19))
 (seg (? (= T 2) (= O 1))
   (proc 18)
   (proc 2)
       ; Tanchi:
           (str "Kirara, your mom's in big trouble! She" 'br)
   (str "needs treatment, stat!")
   (proc 15)
   (proc 9) ; Portrait (Shouting)
   (proc 1)
       ; Kirara:
           (str "Unforgivable... I will never forgive you," 'br)
   (str "Black Nurse!")
   (proc 15)
   (proc 6) ; Clear Kirara portrait
   (proc 12) (proc 13) (proc 7)
       ; Black Nurse:
                (str "Oh, heavens, and what will you do" 'br)
   (str "about that?")
   (proc 15)
   (proc 14) ; Clear Black Nurse portrait
   (proc 9) ; Portrait (Shouting)
   (proc 1)
       ; Kirara:
           (str "I'll beat your ass! I'll show you the" 'br)
   (str "power of Dengeki Nurse!")
   (proc 15)
   (proc 6) ; Clear Kirara portrait
   (proc 9) ; Portrait (Shouting)
   (proc 1)
       ; Kirara:
           (str "CHARGE ON!")
   (proc 15)
   (proc 6) ; Clear Kirara portrait
   (proc 12) (proc 13) (proc 7)
       ; Black Nurse:
                (str "Hmph! Take this, you traitor!" 'br)
   (str "ELEGUARD SPECIAL!!!")
   (proc 15)

; 	She pulls out the Eleguard Special!

   (proc 14) ; Clear Black Nurse portrait
   (exec-mem 2816 "GET 9 16 93 40 237")
   (exec-mem 2816 "VIEW 16 93 40 237,PUT 10 16 93,FREE 10")
   (sound '|| 0)
   (sound '|se | 20)
   (text-color 1)
   (text "ＰＦＷＯＯＯＯＳＨ！")
   (proc 15)

; 	And Kirara is stripped! Of her clothes!

   (exec-mem 19456 2 8 4 103 75 8 40 103 40 7 30)
   (exec-mem 10752 "COPY> b:¥gpc¥ns1_524.gpc,GPC")
   (image-mem 1 3)
   (exec-mem 19456 1 8 40 103 40 8 4 103 75 8 30)
   (delay 10)

; 	Palette flash!!

   (exec-mem 1280 14 15 8 8)  (delay 1)
   (exec-mem 1280 14 15 8 10) (delay 1)
   (exec-mem 1280 14 15 8 12) (delay 2)
   (exec-mem 1280 14 15 8 13) (delay 1)
   (exec-mem 1280 14 13 8 15) (delay 1)
   (exec-mem 1280 14 8 10 15) (delay 2)
   (exec-mem 1280 14 8 13 15) (delay 1)
   (exec-mem 1280 14 8 15 13) (delay 1)
   (exec-mem 1280 14 8 13 15) (delay 2)
   (exec-mem 1280 14 8 10 15) (delay 1)
   (exec-mem 1280 14 13 8 15) (delay 1)
   (exec-mem 1280 14 15 8 13) (delay 2)
   (exec-mem 1280 14 15 8 12) (delay 1)
   (exec-mem 1280 14 15 8 10) (delay 1)
   (exec-mem 1280 14 15 8 8)  (delay 2)
   (exec-mem 1280 14 15 11 8) (delay 1)
   (exec-mem 1280 14 15 15 8) (delay 1)
   (exec-mem 1280 14 12 15 8) (delay 2)
   (exec-mem 1280 14 8 15 8)  (delay 1)
   (exec-mem 1280 14 12 15 8) (delay 1)
   (exec-mem 1280 14 15 15 8) (delay 2)
   (exec-mem 1280 14 15 11 8) (delay 1)
   (exec-mem 1280 14 15 8 8)

; 	Text continues.

   (proc 1)
       ; Kirara:
           (str "Ah... My plasma waves are dissipating...")
   (proc 15)
   (proc 12) (proc 13)	; Black Nurse
   (sound '|| 0)
   (sound '|| "uso¥Nurse10.uso")
   (sound '|| 1)
   (proc 7)
       ; Black Nurse:
                (str "Ho ho ho! Kirara Inazuma, it looks" 'br)
   (str "like this is the final curtain! If you can't" 'br)
   (str "transform, you're just an ordinary nurse!")
   (proc 15)
   (proc 14) ; Clear Black Nurse portrait
   (proc 19)
   (set-reg 78 #t))
 (seg (? (= T 2) (= O 2))
   (proc 18)
   (proc 2)
       ; Tanchi:
           (str "Kirara!!!")
   (proc 15)
   (proc 1)
       ; Kirara:
           (str "Ahh... Ahhhhhh!")
   (proc 15)
   (proc 19))
 (seg (? (= T 2) (= O 3))
   (proc 18)
   (proc 2)
       ; Tanchi:
           (str "Stop this, Black Nurse! Fight me instead!" 'br)
   (str "Be a man!")
   (proc 15)
   (sound '|| 0)
   (proc 10)
       ; Mitsuko:
            (str "Tanchi... You can't...")
   (proc 15)
   (proc 2)
       ; Tanchi:
           (str "Mitsuko!!!")
   (proc 15)

; Mitsuko reaches out to Kirara...
   (exec-mem 19456 2 8 4 103 75 8 40 103 40 7 30)
   (exec-mem 10752 "COPY> b:¥gpc¥ns1_525.gpc,GPC")
   (image-mem 1 3)
   (exec-mem 19456 1 8 40 103 40 8 4 103 75 8 30)

   (proc 10)
       ; Mitsuko:
            (str "Kirara... Take my hand...")
   (proc 15)
   (proc 1)
       ; Kirara:
           (str "Mother...!")
   (proc 15)
   (proc 10)
       ; Mitsuko:
            (str "Come on... Hold on tight...")
   (proc 15)
   (proc 1)
       ; Kirara:
           (str "Okay...")
   (proc 15)
   (proc 10)
       ; Mitsuko:
            (str "Now take my electric power...!")
   (proc 15)
   (sound '|| 0)
   (sound '|se | 20)

; 	Flash!!!

   (repeat 5
    (<>
     (exec-mem 1280 13 0 0 0)    (delay 1)
     (exec-mem 1280 13 1 1 1)    (delay 1)
     (exec-mem 1280 13 2 2 2)    (delay 1)
     (exec-mem 1280 13 3 3 3)    (delay 1)
     (exec-mem 1280 13 4 4 4)    (delay 1)
     (exec-mem 1280 13 5 5 5)    (delay 1)
     (exec-mem 1280 13 6 6 6)    (delay 1)
     (exec-mem 1280 13 7 7 7)    (delay 1)
     (exec-mem 1280 13 8 8 8)    (delay 1)
     (exec-mem 1280 13 9 9 9)    (delay 1)
     (exec-mem 1280 13 10 10 10) (delay 1)
     (exec-mem 1280 13 11 11 11) (delay 1)
     (exec-mem 1280 13 12 12 12) (delay 1)
     (exec-mem 1280 13 13 13 13) (delay 1)
     (exec-mem 1280 13 14 14 14) (delay 1)
     (exec-mem 1280 13 15 15 15) (delay 1)
     (exec-mem 1280 13 14 14 14) (delay 1)
     (exec-mem 1280 13 13 13 13) (delay 1)
     (exec-mem 1280 13 12 12 12) (delay 1)
     (exec-mem 1280 13 11 11 11) (delay 1)
     (exec-mem 1280 13 10 10 10) (delay 1)
     (exec-mem 1280 13 9 9 9)    (delay 1)
     (exec-mem 1280 13 8 8 8)    (delay 1)
     (exec-mem 1280 13 7 7 7)    (delay 1)
     (exec-mem 1280 13 6 6 6)    (delay 1)
     (exec-mem 1280 13 5 5 5)    (delay 1)
     (exec-mem 1280 13 4 4 4)    (delay 1)
     (exec-mem 1280 13 3 3 3)    (delay 1)
     (exec-mem 1280 13 2 2 2)    (delay 1)
     (exec-mem 1280 13 1 1 1)    (delay 1)))
   (exec-mem 1280 13 0 0 0)
   (text-color 1)
   (str "ZZZOZOOOOORP!!! ZAZAZAZAZAZARRRRCHHHHHH!")
   (proc 15)

; 	And the Eleguard Special loses its hold!

   (exec-mem 1280 14 15 8 8 1)
   (exec-mem 1280 14 14 8 8 1)
   (exec-mem 1280 14 13 8 8 1)
   (exec-mem 1280 14 12 8 8 1)
   (exec-mem 1280 14 11 8 7 1)
   (exec-mem 1280 14 10 8 6 1)
   (exec-mem 1280 14 9 8 5 1)
   (exec-mem 1280 14 8 7 4 1)
   (exec-mem 1280 14 7 6 3 1)
   (exec-mem 1280 14 6 5 2 1)
   (proc 7)
       ; Black Nurse:
                (str "!!!!!!!!")
   (proc 15)

; 	Text continues.

   (sound '|| 0)
   (sound '|| "uso¥Nurse11.uso")
   (sound '|| 1)
   (proc 10)
       ; Mitsuko:
            (str "Goodbye, Kirara... Become...a good and" 'br)
   (str "kind girl...")
   (proc 15)
   (proc 1)
       ; Kirara:
           (str "Mother!!!")
   (proc 15)
   (proc 2)
       ; Tanchi:
           (str "Mitsuko!!!")
   (proc 15)
   (proc 12) (proc 13) (proc 7)
       ; Black Nurse:
                (str "Tsk! Melodramatic fools!")
   (proc 15)
   (proc 14) ; Clear Black Nurse portrait
   (proc 3) (exec-mem 2816 "GET 2 20 0 10 96") (proc 4) ; Portrait (Sad)
   (proc 1)
       ; Kirara:
           (str "Mother, I'm sorry... I don't think I can" 'br)
   (str "ever become a Florence Nightingale...")
   (proc 15)
   (proc 6) ; Clear Kirara portrait

; 	Quick! Transform!

   (exec-mem 10752 "EXIT")
   (exec-mem 2816 "EXIT")
   ((cmd 209) 0 2)
   (mes-load? "mes¥chang0.mes")
   (exec-mem 2816 "INIT,SHOW 0,ACCESS 1")
   (image-file "gpc¥face_w00.gpc")
   (image-mem 0 0)
   (exec-mem 2816 "ACCESS 0")
   (sound '|| 0)
   (sound '|| "uso¥Nurse10.uso")
   (sound '|| 1)
   (image-file "gpc¥Aflame01.gpc")   (image-mem 1 1)
   (image-file "b:¥gpc¥ns1_522.gpc") (image-mem 1 0)
   (text-frame 3 324 52 379)
   (text-reset 15)
   ((cmd 209) 1 2)

; 	Text continues.

   (proc 9) ; Portrait (Shouting)
   (proc 1)
       ; Kirara:
           (str "I'll avenge you, Mom! Black Nurse, I'll" 'br)
   (str "never forgive you!")
   (proc 15)
   (proc 6) ; Clear Kirara portrait
   (proc 12) (proc 13) (proc 7)
       ; Black Nurse:
                (str "Hmph! A family of total idiots!")
   (proc 15)
   (proc 14) ; Clear Black Nurse portrait
   (proc 9) ; Portrait (Shouting)
   (proc 1)
       ; Kirara:
           (str "You shut it! Take this...my mother's final")
   (str "DENGEKI SHOCK!")
   (proc 15)
   (proc 6) ; Clear Kirara portrait
   (proc 12) (proc 13) (proc 7)
       ; Black Nurse:
                (str "Pfwah! Like I'd waste my time" 'br)
   (str "fighting you! Pepe, FINISH HER!")
   (proc 15)
   (proc 14) ; Clear Black Nurse portrait
   (text-color 8)
   (str "Pepe: ") (text "ＰＦＷＯＯＯＯＯＯＯＯＯＯＯＯＯＯ！")
   (proc 15)
   (exec-mem 2816 "EXIT")
   (set-var U 14)
   (sound '|| 2)
   (mes-load? "mes¥action1.mes")
   ((cmd 209) 0 2)
   (text-frame 3 324 52 379) (text-reset 15)
   (text-frame 4 16 51 303)  (text-reset 15)
   (set-reg 777 #t)
   (set-reg 990 #f)
   (mes-jump "b:¥mes¥ns15_15.mes"))
 (seg (? (= T 3) (= O 0))												; Action
   (proc 18)
   (text-color 7)
   (str "I check Mitsuko's pulse.")
   (proc 15)
   (text-color 7)
   (str "Her heartbeat is extremely weak... If she's not" 'br)
   (str "given treatment immediately, she'll be in danger!")
   (proc 15)
   (text-color 7)
   (str "But there's nothing here...")
   (proc 15)
   (proc 19)
   (set-reg 81 #t))
 (seg (? (= T 3) (= O 1))
   (proc 18)
   (text-color 7)
   (str "This isn't the time to hesitate!")
   (proc 15)
   (proc 19))
 (seg (? (= T 4) (= O 0))												; Move
   (proc 18)
   (text-color 7)
   (str "We came here to beat up Black Nurse! We can't just")
   (str "run away now!")
   (proc 15)
   (proc 19))
 (seg (? (= T 5) (= O 0))												; Save
   (proc 18)
   (mes-load? "mes¥save.mes")
; FMT
;  (branch-reg 750 (</> (/ (nop@)) (/ ((cmd 212)))))

;  (define-proc 10 (<> (text-color 5)  (str "Mitsuko: ")))
;  (define-proc 11 (<> (text-color 11) (str "Nursia: ")))
   (proc 19)
   (set-var B 5)
   (set-var C 5)))