; Dengeki Nurse English Translation - NS15_16A.MES
; Translated by Geometrizer
; Edited and commented by trentsignia
; --Description:--
; Dungeon room.
(mes
 (meta (engine 'ADV) (charset "pc98"))
 (seg*
  (load-mem "dat¥icondat.dat" 33024)
; (define-proc 10 (<> (text-color 11) (str "Nursia: ")))
  (image-file "b:¥gpc¥Ns1_562.gpc") (image-mem 1 3)
  (branch-var F
   (</>
    (/ (nop@))
    (/ (nop@))
    (/ (nop@))
    (/
     (branch-var R
      (</>
       (/ (nop@))
       (/ (nop@))
       (/ (nop@))

; 		3F Sealed Door

       (/
        (branch-reg 500
         (</>
          (/
           (image-file "b:¥gpc¥Ns1_562.gpc") (image-mem 1 3)
           (image-file "b:¥gpc¥Ns1_565.gpc") (image-mem 1 3)
           (proc 13)
           (proc 3)
           (exec-mem 2816 "GET 2 50 0 10 96") ; Confused
           (proc 4)
           (text-frame 3 324 52 379)
           (text-reset 15)
           (sound '|| 0)
           (proc 0)
                          (str "What is this...?")
           (proc 15)
           (proc 6)
           (proc 2)
                   (str "Some sort of a huge hole?")
           (proc 15)
           (proc 10)
                   (str "Eeeeeek!")
           (proc 15)
           (proc 2)
                   (str "Nursia!")
           (proc 15)
           (text-color 7)
           (str "Nursia is pulled by a mysterious force straight" 'br)
           (str "into the hole!")
           (proc 15)
           (proc 2)
                   (str "Kirara... What do we do?")
           (proc 15)
           (proc 3)
           (exec-mem 2816 "GET 2 60 0 10 96") ; Shouting
           (proc 4)
           (proc 0)
                          (str "We chase after her!")
           (proc 15)
           (proc 6)
           (set-reg 500 #t))
          (/ (nop@))))
        (text-color 7)
        (str "Kirara and I jump down into the hole.")
        (proc 15)
        ((cmd 209) 0 2)
        (exec-mem 2816 "EXIT")
        ((cmd 206) 1 3)
        (set-reg 990 #f)
        (mes-jump "b:¥mes¥Ns15_17.mes"))
       (/ (nop@))
       (/
        (branch-reg 501
         (</>

; 		3F Rematch

          (/
           (sound '|| 0)
           (sound '|| "uso¥Nurse10.uso")
           (sound '|| 1)
           (image-file "b:¥gpc¥Ns1_562.gpc") (image-mem 1 3)
           (image-file "b:¥gpc¥Ns1_576.gpc") (image-mem 1 3)
           (proc 13)
           (text-frame 3 324 52 379)
           (text-reset 15)
           (text-color 5)
           (str "Asuka: We meet again, Dengeki Nurse!")
           (proc 15)
           (proc 3)
           (exec-mem 2816 "GET 2 60 0 10 96") ; Shouting
           (proc 4)
           (proc 0)
                          (str "Hey, that's my line!")
           (proc 15)
           (proc 6)
           (text-color 5)
           (str "Asuka: Heh heh! This time, I'll make sure you" 'br)
           (str "don't deliver any more lines...EVER!")
           (proc 15)
           (proc 3)
           (exec-mem 2816 "GET 2 60 0 10 96") ; Shouting
           (proc 4)
           (proc 0)
                          (str "Still carrying around that little" 'br)
           (str "kid's yo-yo, are you?")
           (proc 15)
           (proc 6)
           (text-color 5)
           (str "Asuka: I'll show you the pain of a tear-soaked yo-")
           (str "yo!")
           (proc 15)
           (proc 3)
           (exec-mem 2816 "GET 2 60 0 10 96") ; Shouting
           (proc 4)
           (proc 0)
                          (str "Oh, please! Let's just get on with" 'br)
           (str "it!")
           (proc 15)
           (proc 6)
           (exec-mem 2816 "EXIT")
           (set-var R 0)
           (set-var U 5)
           (sound '|| 2)
           (mes-load? "mes¥action1.mes")
           (branch-var Q
            (</>
             (/ (nop@))
             (/
              (exec-mem 10752 "INIT")
              (exec-mem 10752 "MODE V0E0M96")
              (exec-mem 10752 "LOAD> b:¥gpc¥ns1_562.gpc,TEMP")
              (exec-mem 10752 "LOAD> gpc¥Face_w00.gpc,TEMP")
              (sound '|| 0)
              (sound '|| "uso¥Nurse14.uso")
              (sound '|| 1)
              (image-file "gpc¥Aflame01.gpc")                 (image-mem 1 3)
              (exec-mem 10752 "COPY> b:¥gpc¥ns1_562.gpc,GPC") (image-mem 1 3)
              (image-file "b:¥gpc¥Ns1_566.gpc")               (image-mem 1 0)
              (image-file "b:¥gpc¥Ns1_567.gpc")               (image-mem 1 0)
              (exec-mem 2816 "INIT,SHOW 0,ACCESS 1")
              (exec-mem 10752 "COPY> gpc¥Face_w00.gpc,GPC")
              (image-mem 0 0)
              (exec-mem 2816 "GET 20 71 320 8 64")
              (exec-mem 2816 "ACCESS 0")
              (exec-mem 17920 0 1)
              (exec-mem 1280 14 7 6 6)
              (exec-mem 6656 8)
              (load-mem "cmd¥cappear.tcm" 6656)
              (proc 3)
              (exec-mem 2816 "GET 2 50 0 10 96") ; Confused
              (proc 4)
              (text-frame 3 324 52 379)
              (text-reset 15)
              (proc 0)
                             (str "What is this? Some sort of TV" 'br)
              (str "remote?")
              (proc 15)
              (proc 6)
              (proc 2)
                      (str "No... Maybe for a VCR?")
              (proc 15)
              (proc 9) (proc 11)	; Nursia
              (proc 10)
                      (str "Oh, that's the controller that disables" 'br)
              (str "the Psycho Barrier!")
              (proc 15)
              (proc 14)
              (text-color 7)
              (str "I pick up the controller.")
              (proc 15)
              (exec-mem 2816 "SHOW 0,ACCESS 1")
              (exec-mem 10752 "COPY> b:¥gpc¥ns1_562.gpc,GPC")
              (image-mem 0 0)
              (exec-mem 2816 "ACCESS 0")
              (exec-mem 6656 10 23 45 295)
              (exec-mem 2816 "SHOW 0,ACCESS 1")
              (exec-mem 10752 "COPY> gpc¥Face_w00.gpc,GPC")
              (image-mem 0 0)
              (exec-mem 2816 "ACCESS 0")
              (set-reg 804 #t)
              (set-reg 501 #t)
              (set-reg 674 #t)
              (set-reg 666 #t)
              (set-reg 800 #t))
             (/ (nop@)))))
          (/ (nop@))))))))
    (/
     (branch-var R
      (</>
       (/ (nop@))
       (/ (nop@))
       (/ (nop@))
       (/
        (branch-reg 502
         (</>

; 		4F Rematch

          (/
           (sound '|| 0)
           (sound '|| "uso¥Nurse10.uso")
           (sound '|| 1)
           (image-file "b:¥gpc¥Ns1_562.gpc") (image-mem 1 3)
           (image-file "b:¥gpc¥Ns1_574.gpc") (image-mem 1 3)
           (proc 13)
           (text-frame 3 324 52 379)
           (text-reset 15)
           (text-color 5)
           (str "Guillotine Nurse: Ho ho ho! I've been waiting for" 'br)
           (str "you, Dengeki Nurse!")
           (proc 15)
           (proc 2)
                   (str "Oh damn, it's Guillotine Nurse!")
           (proc 15)
           (text-color 5)
           (str "Guillotine Nurse: This time, I'll get your head" 'br)
           (str "with my guillotine and float it down the river" 'br)
           (str "Seine!!!")
           (proc 15)
           (proc 3)
           (exec-mem 2816 "GET 2 60 0 10 96") ; Shouting
           (proc 4)
           (proc 0)
                          (str "You shut your mouth! All you can" 'br)
           (str "ever do is guillotine, guillotine, guillotine!")
           (proc 15)
           (proc 6)
           (text-color 5)
           (str "Guillotine Nurse: Hohoho, of course it is, idiot!!")
           (proc 15)
           (exec-mem 2816 "EXIT")
           (set-var R 0)
           (set-var U 3)
           (sound '|| 2)
           (mes-load? "mes¥action1.mes")
           (branch-var Q
            (</>
             (/ (nop@))
             (/
              (exec-mem 10752 "INIT")
              (exec-mem 10752 "MODE V0E0M96")
              (exec-mem 10752 "LOAD> b:¥gpc¥ns1_562.gpc,TEMP")
              (exec-mem 10752 "LOAD> gpc¥Face_w00.gpc,TEMP")
              (sound '|| 0)
              (sound '|| "uso¥Nurse14.uso")
              (sound '|| 1)
              (image-file "gpc¥Aflame01.gpc")                 (image-mem 1 3)
              (exec-mem 10752 "COPY> b:¥gpc¥ns1_562.gpc,GPC") (image-mem 1 3)
              (image-file "b:¥gpc¥Ns1_566.gpc")               (image-mem 1 0)
              (image-file "b:¥gpc¥Ns1_568.gpc")               (image-mem 1 0)
              (exec-mem 2816 "INIT,SHOW 0,ACCESS 1")
              (exec-mem 10752 "COPY> gpc¥Face_w00.gpc,GPC")   (image-mem 0 0)
              (exec-mem 2816 "GET 20 71 320 8 64")
              (exec-mem 2816 "ACCESS 0")
              (exec-mem 17920 0 1)
              (exec-mem 1280 14 7 6 6)
              (exec-mem 6656 8)
              (load-mem "cmd¥cappear.tcm" 6656)
              (proc 2)
                      (str "Wh-what's this?")
              (proc 15)
              (proc 9) (proc 11)	; Nursia
              (text-frame 3 324 52 379)
              (text-reset 15)
              (proc 10)
                      (str "It's the Elektros Crest!")
              (proc 15)
              (proc 14)
              (proc 2)
                      (str "Okay, sounds good! Grabbing it!")
              (proc 15)
              (text-color 7)
              (str "I pick up the Elektros Crest.")
              (proc 15)
              (exec-mem 2816 "SHOW 0,ACCESS 1")
              (exec-mem 10752 "COPY> b:¥gpc¥ns1_562.gpc,GPC")
              (image-mem 0 0)
              (exec-mem 2816 "ACCESS 0")
              (exec-mem 6656 10 23 45 295)
              (exec-mem 2816 "SHOW 0,ACCESS 1")
              (exec-mem 10752 "COPY> gpc¥Face_w00.gpc,GPC")
              (image-mem 0 0)
              (exec-mem 2816 "ACCESS 0")
              (set-reg 805 #t)
              (set-reg 502 #t)
              (set-reg 674 #t)
              (set-reg 666 #t))
             (/ (nop@)))))
          (/ (nop@)))))
       (/ (nop@))
       (/ (nop@)))))
    (/ (nop@))
    (/
     (branch-var R
      (</>
       (/ (nop@))
       (/ (nop@))
       (/ (nop@))
       (/ (nop@))
       (/ (nop@))
       (/
        (branch-reg 503
         (</>

; 		6F Rematch

          (/
           (sound '|| 0)
           (sound '|| "uso¥Nurse10.uso")
           (sound '|| 1)
           (image-file "b:¥gpc¥Ns1_562.gpc") (image-mem 1 3)
           (image-file "b:¥gpc¥Ns1_573.gpc") (image-mem 1 3)
           (proc 13)
           (text-frame 3 324 52 379)
           (text-reset 15)
           (text-color 11)
           (str "Ayako: Well well well, look who it is! Welcome," 'br)
           (str "sweetcheeks... In the name of the stars, I will" 'br)
           (str "punish you!")
           (proc 15)
           (proc 3)
           (exec-mem 2816 "GET 2 10 0 10 96") ; Happy
           (proc 4)
           (proc 0)
                          (str "Hahahahhah!")
           (proc 15)
           (proc 6)
           (text-color 11)
           (str "Ayako: Hi, what's so funny? Been nibbling some" 'br)
           (str "magic mushrooms?")
           (proc 15)
           (proc 3)
           (exec-mem 2816 "GET 2 10 0 10 96") ; Happy
           (proc 4)
           (proc 0)
                          (str "That silly pose! You seriously" 'br)
           (str "think you can beat me, putting that kind of foot" 'br)
           (str "forward?")
           (proc 15)
           (proc 6)
           (text-color 11)
           (str "Ayako: Moon, moon, moon! Moon Prism Power, Make" 'br)
           (str "Up!")
           (proc 15)
           (exec-mem 2816 "EXIT")
           (set-var R 0)
           (set-var U 2)
           (sound '|| 2)
           (mes-load? "mes¥action1.mes")
           (branch-var Q
            (</>
             (/ (nop@))
             (/
              (exec-mem 10752 "INIT")
              (exec-mem 10752 "MODE V0E0M96")
              (exec-mem 10752 "LOAD> b:¥gpc¥ns1_562.gpc,TEMP")
              (exec-mem 10752 "LOAD> gpc¥Face_w00.gpc,TEMP")
              (sound '|| 0)
              (sound '|| "uso¥Nurse14.uso")
              (sound '|| 1)
              (image-file "gpc¥Aflame01.gpc") (image-mem 1 3)
              (exec-mem 10752 "COPY> b:¥gpc¥ns1_562.gpc,GPC") (image-mem 1 3) (exec-mem 2816 "GET 17 10 23 35 273")
              (image-file "b:¥gpc¥Ns1_566.gpc")               (image-mem 1 0)
              (image-file "b:¥gpc¥Ns1_569.gpc")               (image-mem 1 0) (exec-mem 2816 "INIT,SHOW 0,ACCESS 1")
              (exec-mem 10752 "COPY> gpc¥Face_w00.gpc,GPC")   (image-mem 0 0) (exec-mem 2816 "GET 20 71 320 8 64")
              (exec-mem 2816 "ACCESS 0")
              (exec-mem 17920 0 1)
              (exec-mem 1280 14 7 6 6)
              (exec-mem 6656 8)
              (load-mem "cmd¥cappear.tcm" 6656)
              (text-frame 3 324 52 379)
              (text-reset 15)
              (proc 2)
                      (str "Hey, what's this random object?")
              (proc 15)
              (proc 9) (proc 11)	; Nursia
              (proc 10)
                      (str "Looks like a key...")
              (proc 15)
              (proc 14)
              (proc 0)
                             (str "I've seen a key like this before...")
              (str "Hey! This looks like the key to my room!")
              (proc 15)
              (proc 2)
                      (str "Okay, whatever, it might come in handy." 'br)
              (str "Let's take it.")
              (proc 15)
              (text-color 7)
              (str "I take the key that looks like the one to Kirara's")
              (str "room.")
              (proc 15)
              (exec-mem 2816 "SHOW 0,ACCESS 1")
              (exec-mem 10752 "COPY> b:¥gpc¥ns1_562.gpc,GPC") (image-mem 0 0)
              (exec-mem 2816 "ACCESS 0")
              (exec-mem 6656 10 23 45 295)
              (exec-mem 2816 "SHOW 0,ACCESS 1")
              (exec-mem 10752 "COPY> gpc¥Face_w00.gpc,GPC")   (image-mem 0 0)
              (exec-mem 2816 "ACCESS 0")
              (set-reg 803 #t)
              (set-reg 674 #t)
              (set-reg 503 #t)
              (set-reg 666 #t)
              (flag-save 6)))))
          (/ (nop@)))))
       (/ (nop@)))))))

  (if (</> (// (? (= 666 #t)) (nop@) (set-reg 666 #f)) (// (proc 13))))

; 	Intro begins here...

  (text-frame 3 324 52 379)
  (text-reset 15)
  (branch-reg 674 (</> (/ (nop@)) (/ (proc 13) (set-reg 674 #f))))
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
     (/ (nop@) (set-var T 0) (set-var O 0) (seg-call)) ; Think
     (/ (nop@) (set-var T 1) (set-var O 0) (seg-call)) ; Look
     (/ (nop@) (set-var T 2) (set-var O 0) (seg-call)) ; Talk
     (/ (nop@) (set-var T 3) (set-var O 0) (seg-call)) ; Action
     (/ (nop@) (set-var T 4) (set-var O 0) (seg-call)) ; Move
     (/ (nop@) (set-var T 5) (set-var O 0) (seg-call)) ; Save
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
   (nop@)
   (proc 18)
   (text-color 7)
   (str "Every room in here looks the same! This is exactly")
   (str "why I hate dungeons!")
   (proc 15)
   (proc 19))
 (seg (? (= T 1) (= O 0))												; Look
   (nop@)
   (proc 18)
   (text-color 7)
   (str "This room contains nothing.")
   (proc 15)
   (proc 19))
 (seg (? (= T 2) (= O 0))												; Talk
   (nop@)
   (proc 18)
   (proc 3)
   (exec-mem 2816 "GET 2 50 0 10 96") ; Confused
   (proc 4)
   (proc 0)
                  (str "Looks like there's nothing here.")
   (proc 15)
   (proc 6)
   (proc 19))
 (seg (? (= T 3) (= O 0))												; Action
   (nop@)
   (proc 18)
   (proc 3)
   (exec-mem 2816 "GET 2 30 0 10 96") ; Angry
   (proc 4)
   (proc 0)
                  (str "Stop touching my butt!!!")
   (proc 15)
   (proc 6)
   (proc 2)
           (str "But, but come on... It's not like it's" 'br)
   (str "going to wear out or anything...")
   (proc 15)
   (proc 3)
   (exec-mem 2816 "GET 2 30 0 10 96") ; Angry
   (proc 4)
   (proc 0)
                  (str "But it totally will!")
   (proc 15)
   (proc 6)
   (proc 19))
 (seg (? (= T 4) (= O 0))												; Move
   (nop@)
   (proc 18)
   (text-frame 3 324 52 379)
   (text-reset 15)
   (text-color 1)
   (str "Do you want to leave the room?")
   (set-var T 0)
   ((cmd 211) 1 2)
   (menu1 10 348 24 348
    (</>
     (/ (text-color 4) (text '|34368| "　Ｙｅｓ　" '|34368|))
     (/ (text-color 4) (text "　　Ｎｏ　　"))))
   (branch-var S
    (</>

; 	YES

     (/
      (set-var S 0)
      (exec-mem 19456 2 8 4 103 75 55 45 55 45 0 20)
      (text-frame 3 324 52 379)
      (text-reset 15)
      (exec-mem 18944 65535 528 33)
      (set-reg 990 #f)
      (mes-jump "b:¥mes¥Ns15_16.mes"))

; 	NO

     (/
      (text-frame 3 324 52 379)
      (text-reset 15)
      (exec-mem 18944 65535 528 33))))
   (proc 19))
 (seg (? (= T 5) (= O 0))												; Save
   (proc 18)
   (proc 9) (proc 11)	; Nursia
   (proc 10)
           (str "Sorry, but we'll have to head out to the" 'br)
   (str "hallway to save...")
   (proc 15)
   (proc 14)
   (proc 19)))