; Dengeki Nurse English Translation - NS12_03.MES
; Translated by Geometrizer
; Edited and commented by trentsignia
; --Description:--
; Kirara confront two discipliners on their skirt-flipping. Tanchi reluctantly takes her side.
(mes
 (meta (engine 'ADV) (charset "pc98"))
 (seg*
  (load-mem "cmd¥cappear.tcm" 6656)
  (define-proc 10 (<> (text-color 11) (str "Momoko: ")))
  (define-proc 11 (<> (text-color 5)  (str "Asuka: ")))
  (define-proc 12 (<> (text-color 3)  (str "Yunako: ")))
  (define-proc 13 (<> (text-color 1)  (str "Mohiko: ")))

; 	The portrait display code is different here for some reason, with only 2 processes free let's see what we can do...
; 	It was originally arranged like this:
; 	(exec-mem 2816 "GET 1 5 23 10 96") (exec-mem 2816 "VIEW 5 23 15 120,PUT x 5 23")

  (define-proc 9  (<> (exec-mem 2816 "GET 1 5 23 10 96,VIEW 5 23 15 120"))) ; Display code
  (define-proc 14 (<> (exec-mem 2816 "PUT 8 5 23")))                        ; Shouting

; 	Setup continues...

  (exec-mem 2816 "INIT,SHOW 0,ACCESS 1")
  (image-file "b:¥gpc¥ns1_213.gpc") (image-mem 0 0) (exec-mem 2816 "GET 10 4 16 52 304")
  (image-file "b:¥gpc¥ns1_206.gpc") (image-mem 0 0) (exec-mem 2816 "GET 4 0 0 24 144")
  (image-file "gpc¥face_w00.gpc")   (image-mem 0 0) (exec-mem 2816 "GET 20 71 320 8 64")
  (exec-mem 2816 "GET 2 30 0 10 96")
  (exec-mem 2816 "GET 6 50 0 10 96")
  (exec-mem 2816 "GET 8 60 0 10 96")
  (exec-mem 2816 "ACCESS 0")
  (exec-mem 10752 "INIT")
  (exec-mem 10752 "MODE V128E0M0")
  (exec-mem 10752 "LOAD> b:¥gpc¥ns1_213.gpc,TEMP")
  (exec-mem 10752 "LOAD> b:¥gpc¥ns1_214.gpc,TEMP")
  (sound '|| 0)
; PC-98
  (sound '|| "uso¥Nurse14.uso")
; FMT
; (sound '|| "Nurse14.fmt")
  (sound '|| 1)
  (image-file "b:¥gpc¥ns1_205.gpc") (image-mem 1 3)
  ((cmd 209) 1 2)
  ((cmd 204) 22 32)

; 	Intro begins here...

  (text-frame 3 324 52 379)
  (text-reset 15)
  (text-color 7)
  (str "I followed Kirara behind the school building.")
  (proc 15)
  (text-color 7)
  (str "The two girls' skirts are getting lifted by those" 'br)
  (str "delinquents!")
  (proc 15)
  (text-color 7)
  (str "I catch up to Kirara and grab her arm.")
  (proc 15)
  (proc 9) (proc 14) ; Portrait (Shouting)
  (proc 1)
      ; Kirara:
          (str "What the!? Let go!")
  (proc 15)
  (proc 6) ; Clear Portrait
  (proc 2)
      ; Tanchi:
          (str "Hold on! We should see how things pan out.")
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
           (// (? (= 26 #t))                     (nop@) (set-var T 0) (set-var O 5) (seg-call))    ; (set-reg 32 #t)
           (// (? (= 24 #t) (= 26 #f))           (nop@) (set-var T 0) (set-var O 4) (seg-call))    ; (set-reg 31 #t)
           (// (? (= 30 #t) (= 24 #f))           (nop@) (set-var T 0) (set-var O 3) (seg-call))
           (// (? (= 23 #t) (= 30 #f))           (nop@) (set-var T 0) (set-var O 2) (seg-call))    ; (set-reg 30 #t)
           (// (? (= 22 #t) (= 23 #f))           (nop@) (set-var T 0) (set-var O 1) (seg-call))    ; (set-reg 29 #t)
           (//                                   (nop@) (set-var T 0) (set-var O 0) (seg-call)))))
; Look
     (/
      (if (</>
           (// (? (= 30 #t))                     (nop@) (set-var T 1) (set-var O 5) (seg-call))
           (// (? (= 23 #t) (= 30 #f))           (nop@) (set-var T 1) (set-var O 4) (seg-call))
           (// (? (= 29 #t) (= 23 #f))           (nop@) (set-var T 1) (set-var O 3) (seg-call))    ; (set-reg 23 #t)
           (// (? (= 22 #t) (= 29 #f))           (nop@) (set-var T 1) (set-var O 2) (seg-call))
           (// (? (= 27 #t) (= 28 #t) (= 22 #f)) (nop@) (set-var T 1) (set-var O 1) (seg-call))    ; (set-reg 22 #t)
           (//                                   (nop@) (set-var T 1) (set-var O 0) (seg-call))))) ; (set-reg 27 #t)
; Talk
     (/
      (if (</>
           (// (? (= 32 #t))                     (nop@) (set-var T 2) (set-var O 5) (seg-call))    ; (mes-jump "b:¥mes¥ns12_04.mes")
           (// (? (= 26 #t) (= 32 #f))           (nop@) (set-var T 2) (set-var O 4) (seg-call))
           (// (? (= 31 #t) (= 26 #f))           (nop@) (set-var T 2) (set-var O 3) (seg-call))    ; (set-reg 26 #t)
           (// (? (= 24 #t) (= 31 #f))           (nop@) (set-var T 2) (set-var O 2) (seg-call))
           (// (? (= 30 #t) (= 24 #f))           (nop@) (set-var T 2) (set-var O 1) (seg-call))    ; (set-reg 24 #t)
           (//                                   (nop@) (set-var T 2) (set-var O 0) (seg-call))))) ; (set-reg 28 #t)
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
   (str "These school rules are causing problems... But" 'br)
   (str "those panties are indeed too risque!")
   (proc 15)
   (text-color 7)
   (str "The fact that I wanna see pure white panties on" 'br)
   (str "these schoolgirls... Does this mean I've joined" 'br)
   (str "the ranks of old men!?")
   (proc 15)
   (proc 19))
 (seg (? (= T 0) (= O 1))
   (proc 18)
   (text-color 7)
   (str "This has turned into quite the development!")
   (proc 15)
   (proc 9) (exec-mem 2816 "PUT 2 5 23") ; Portrait (Angry)
   (proc 1)
       ; Kirara:
           (str "Hey, Tanchi! Aren't you gonna do something")
   (str "about this?")
   (proc 15)
   (proc 6) ; Clear Portrait
   (proc 2)
       ; Tanchi:
           (str "Not yet.")
   (proc 15)
   (proc 19)
   (set-reg 29 #t))
 (seg (? (= T 0) (= O 2))
   (proc 18)
   (text-color 7)
   (str "Ohh, man! Why am I getting so excited? Maybe I'm a")
   (str "dangerous guy...")
   (proc 15)
   (proc 9) (exec-mem 2816 "PUT 2 5 23") ; Portrait (Angry)
   (proc 1)
       ; Kirara:
           (str "This is unforgivable! I have to give them")
   (str "a piece of my mind!")
   (proc 15)
   (proc 6) ; Clear Portrait
   (proc 2)
       ; Tanchi:
           (str "W-Wait! Kirara! Just when things were" 'br)
   (str "getting exciting...")
   (proc 15)
   (proc 9) (proc 14) ; Portrait (Shouting)
   (proc 1)
       ; Kirara:
           (str "Hey, you two stop messing around!")
   (proc 15)
   (proc 6) ; Clear Portrait
   (proc 10)
       ; Momoko:
           (str "Hmph, what do you want?")
   (proc 15)
   (proc 19)
   (set-reg 30 #t))
 (seg (? (= T 0) (= O 3))
   (proc 18)
   (text-color 7)
   (str "Why, oh why... Why must Kirara take away these" 'br)
   (str "little pleasures of mine?")
   (proc 15)
   (proc 19))
 (seg (? (= T 0) (= O 4))
   (proc 18)
   (text-color 7)
   (str "...")
   (proc 15)
   (text-color 7)
   (str "Ah, well... it's not worth getting on Kirara's bad")
   (str "side for just one bit of fun.")
   (proc 15)
   (proc 19)
   (set-reg 31 #t))
 (seg (? (= T 0) (= O 5))
   (proc 18)
   (text-color 7)
   (str "Oh, this is bad! If Kirara goes all-out against" 'br)
   (str "high schoolers, it'll be a total debacle!")
   (proc 15)
   (proc 19)
   (set-reg 32 #t))
 (seg (? (= T 1) (= O 0))												; Look
   (proc 18)
   (text-color 7)
   (str "Those two girls just had their skirts flipped" 'br)
   (str "up... Striped string and sheer lace panties," 'br)
   (str "huh...")
   (proc 15)
   (text-color 7)
   (str "I'd better keep an eye on them!")
   (proc 15)
   (proc 19)
   (set-reg 27 #t))
 (seg (? (= T 1) (= O 1))
   (proc 18)
   (proc 10)
       ; Momoko:
           (str "What the hell is with these panties!?")
   (proc 15)
   (proc 11)
       ; Asuka:
          (str "State your class and name!")
   (proc 15)
   (text-color 3)
   (str "Right Girl: Class 2-1... Yunako Haneda...")
   (proc 15)
   (text-color 1)
   (str "Left Girl: Sniff, sniff... Mohiko Kamura from the" 'br)
   (str "same class...")
   (proc 15)
   (proc 11)
       ; Asuka:
          (str "You two are total degenerates!")
   (proc 15)
   (proc 13)
       ; Mohiko:
           (str "That's not true! It's not like that at" 'br)
   (str "all!")
   (proc 15)
   (proc 11)
       ; Asuka:
          (str "Don't act like you don't know what you're" 'br)
   (str "doing! Those panties are intended for the eyes of" 'br)
   (str "men!")
   (proc 15)
   (proc 12)
       ; Yunako:
           (str "But...All my panties were in the wash..." 'br)
   (str "So I had to take my sister's...")
   (proc 15)
   (proc 10)
       ; Momoko:
           (str "Such lies won't work on us!")
   (proc 15)
   (proc 11)
       ; Asuka:
          (str "Right then, strip off your panties! I'll" 'br)
   (str "give you an examination to check for your purity!")
   (proc 15)
   (proc 13)
       ; Mohiko:
           (str "But...but...!")
   (proc 15)
   (proc 19)
   (set-reg 22 #t))
 (seg (? (= T 1) (= O 2))
   (proc 18)
   (text-color 7)
   (str "Those girls in the string and sheer panties look" 'br)
   (str "like they're about to cry.")
   (proc 15)
   (proc 19))
 (seg (? (= T 1) (= O 3))
   (proc 18)
   (proc 11)
       ; Asuka:
          (str "Come on! Hurry up!")
   (proc 15)
   (text-color 1)
   (str "Poke, poke...")
   (proc 15)
   (proc 12)
       ; Yunako:
           (str "Ahh...ahhh...")
   (proc 15)
   (proc 11)
       ; Asuka:
          (str "That's all it takes? You're tough for" 'br) ; flagging this
   (str "having such a cute face!")
   (proc 15)
   (proc 10)
       ; Momoko:
           (str "Hurry up! Take them off, spread your legs" 'br)
   (str "and let's see!")
   (proc 15)
   (text-color 1)
   (str "Poke poke poke!")
   (proc 15)
   (proc 13)
       ; Mohiko:
           (str "Aaaah...")
   (proc 15)
   (proc 19)
   (set-reg 23 #t))
 (seg (? (= T 1) (= O 4))
   (proc 18)
   (proc 11)
       ; Asuka:
          (str "Ora Ora Ora!")
   (proc 15)
   (proc 12)
       ; Yunako:
           (str "Sob, sob... Please, forgive me...")
   (proc 15)
   (proc 19))
 (seg (? (= T 1) (= O 5))
   (proc 18)
   (text-color 7)
   (str "The two delinquent girls are looking at me and" 'br)
   (str "Kirara!")
   (proc 15)
   (proc 19))
 (seg (? (= T 2) (= O 0))												; Talk
   (proc 18)
   (proc 9) (proc 14) ; Portrait (Shouting)
   (proc 1)
       ; Kirara:
           (str "Those two are acting like monsters! Why" 'br)
   (str "can't we stop them!?")
   (proc 15)
   (proc 6) ; Clear Portrait
   (proc 2)
       ; Tanchi:
           (str "I never said we couldn't, just that we" 'br)
   (str "should wait and see how things pan out.")
   (proc 15)
   (proc 19)
   (set-reg 28 #t))
 (seg (? (= T 2) (= O 1))
   (proc 18)
   (proc 11)
       ; Asuka:
          (str "Get lost, outsiders!")
   (proc 15)
   (proc 9) (proc 14) ; Portrait (Shouting)
   (proc 1)
       ; Kirara:
           (str "That won't work on us!")
   (proc 15)
   (proc 1)
       ; Kirara:
           (str "As a nurse, I cannot approve of removing" 'br)
   (str "panties in such an unhygienic environment!")
   (proc 15)
   (proc 6) ; Clear Portrait
   (proc 10)
       ; Momoko:
           (str "Well, you sure look the sort to only sleep")
   (str "with people in hospital beds!")
   (proc 15)
   (proc 9) (proc 14) ; Portrait (Shouting)
   (proc 1)
       ; Kirara:
           (str "Wha!? How dare you! Tanchi, say something!")
   (proc 15)
   (proc 6) ; Clear Portrait
   (proc 2)
       ; Tanchi:
           (str "...")
   (proc 15)
   (proc 19)
   (set-reg 24 #t))
 (seg (? (= T 2) (= O 2))
   (proc 18)
   (proc 9) (proc 14) ; Portrait (Shouting)
   (proc 1)
       ; Kirara:
           (str "Come on, Tanchi! Help me out here!")
   (proc 15)
   (proc 6) ; Clear Portrait
   (proc 2)
       ; Tanchi:
           (str "......")
   (proc 15)
   (proc 19))
 (seg (? (= T 2) (= O 3))
   (proc 18)
   (proc 2)
       ; Tanchi:
           (str "Uh... Uh, yes... It is rather difficult" 'br)
   (str "to assess one's virginity, medically speaking...")
   (proc 15)
   (proc 2)
       ; Tanchi:
           (str "You see, the hymen can tear through the" 'br)
   (str "continued use of tampons or playing of sports...")
   (proc 15)
   (proc 2)
       ; Tanchi:
           (str "In addition, some people are just born" 'br)
   (str "with darker skin pigmentation in that area...")
   (proc 15)
   (proc 2)
       ; Tanchi:
           (str "Therefore, sight alone is not sufficient" 'br)
   (str "to determine one's tendency towards perversion...")
   (proc 15)
   (proc 2)
       ; Tanchi:
           (str "...And it would be pre-emptive to make" 'br)
   (str "such a...crass...judgement.")
   (proc 15)
   (proc 11)
       ; Asuka:
          (str "What are you talking about!? I don't care" 'br)
   (str "about that, breaking school rules is unforgivable!")
   (proc 15)
   (proc 9) (proc 14) ; Portrait (Shouting)
   (proc 1)
       ; Kirara:
           (str "I don't care about your precious rules!" 'br)
   (str "This is where I draw the line!")
   (proc 15)
   (proc 6) ; Clear Portrait
   (proc 2)
       ; Tanchi:
           (str "Um yes, I, agree... Actually, does the" 'br)
   (str "principal even approve of this?")
   (proc 15)
   (proc 11)
       ; Asuka:
          (str "The principal and chairman don't matter" 'br)
   (str "here! No one interferes with the Special Morals" 'br)
   (str "Committee!")
   (proc 15)
   (proc 2)
       ; Tanchi:
           (str "Special Morals!? What even is that?")
   (proc 15)
   (proc 11)
       ; Asuka:
          (str "I don't need to explain anything to you" 'br)
   (str "outsiders!")
   (proc 15)
   (proc 10)
       ; Momoko:
           (str "Captain! What do we do with them?")
   (proc 15)
   (proc 11)
       ; Asuka:
          (str "According to Article 23 of the Cybernetic" 'br)
   (str "Girls' School code, Special Morals Clause 4...")
   (proc 15)
   (proc 10)
       ; Momoko:
           (str "We have the authority to deal with those" 'br)
   (str "who disrupt school order!")
   (proc 15)
   (proc 11)
       ; Asuka:
          (str "Students, staff, or otherwise, we can take" 'br)
   (str "needed disciplinary action without interference!")
   (proc 15)
   (proc 2)
       ; Tanchi:
           (str "Uh, really now?")
   (proc 15)
   (proc 11)
       ; Asuka:
          (str "Prepare yourself!")
   (proc 15)
   (proc 9) (proc 14) ; Portrait (Shouting)
   (proc 1)
       ; Kirara:
           (str "If you're serious, then bring it on!")
   (proc 15)
   (proc 6) ; Clear Portrait
   (proc 19)
   (set-reg 26 #t))
 (seg (? (= T 2) (= O 4))
   (proc 18)
   (proc 10)
       ; Momoko:
           (str "Hmph! Feisty old lady, aren't you?")
   (proc 15)
   (proc 9) (proc 14) ; Portrait (Shouting)
   (proc 1)
       ; Kirara:
           (str "You shut up! I'm only 19!")
   (proc 15)
   (proc 6) ; Clear Portrait
   (proc 19))
 (seg (? (= T 2) (= O 5))
   (proc 18)
   (proc 2)
       ; Tanchi:
           (str "Kirara, you can't!")
   (proc 15)
   (proc 9) (proc 14) ; Portrait (Shouting)
   (proc 1)
       ; Kirara:
           (str "Don't try to stop me!")
   (proc 15)
   (sound '|| 0)
   (proc 6) ; Clear Portrait

   (exec-mem 2816 "GET 5 5 23 28 166")
   (exec-mem 2816 "VIEW 5 23 28 166,PUT 4 5 23,FREE 4")
;  ^ Cleaning Lady appears

   (text-color 5)
   (str "Cleaning Lady: Oi, what are you kids up to? Aren't")
   (str "your classes starting now?")
   (proc 15)
   (proc 11)
       ; Asuka:
          (str "Tsk, you lucky punks!")
   (proc 15)
   (proc 10)
       ; Momoko:
           (str "You better remember us!")
   (proc 15)
   (sound '|| 0)
; PC-98
   (sound '|| "uso¥Nurse09.uso")
; FMT
;  (sound '|| "Nurse09.fmt")
   (sound '|| 1)

;	Cut to the two rescued girls in school...

   (exec-mem 19456 2 8 4 103 75 8 40 103 40 7 30)
   (exec-mem 19456 1 8 39 102 39 8 39 102 74 7 1)
   (exec-mem 2816 "FREE 2,FREE 6,FREE 8")
   (exec-mem 2816 "VIEW 5 23 28 166,PUT 5 5 23,FREE 5")
   (exec-mem 10752 "COPY> b:¥gpc¥ns1_213.gpc,GPC") (image-mem 1)
   (exec-mem 10752 "COPY> b:¥gpc¥ns1_214.gpc,GPC") (image-mem 1)
   (exec-mem 2816 "SHOW 0,ACCESS 1")
   (exec-mem 2816 "VIEW 4 16 52 303,PUT 10 4 16,FREE 10")
   (exec-mem 2816 "ACCESS 0")
   (exec-mem 19456 1 8 40 103 40 8 4 103 75 8 30)

; 	Text continues.

   (proc 13)
       ; Mohiko:
           (str "Thank you so much.")
   (proc 15)
   (proc 12)
       ; Yunako:
           (str "We've got class too, so we need to go.")
   (proc 15)

; 	The two girls leave. The regular portrait display is restored...

   (exec-mem 6656 4 16 51 304)
   (exec-mem 2816 "SHOW 0,ACCESS 1")
   (image-file "gpc¥face_w00.gpc") (image-mem 0 0)
   (exec-mem 2816 "ACCESS 0")
   (text-frame 3 324 52 379)

; 	Text continues

   (proc 2)
       ; Tanchi:
           (str "Well then, time for us to get back to" 'br)
   (str "work.")
   (proc 15)
   (proc 3)
   (exec-mem 2816 "GET 2 50 0 10 96") ; 
   (proc 4)
   (proc 1)
       ; Kirara:
           (str "Aww... I really wanted to take those cocky")
   (str "girls down...")
   (proc 15)
   (proc 6) ; Clear Portrait
   (proc 2)
       ; Tanchi:
           (str "Hey, you shouldn't be using your Dengeki" 'br)
   (str "Nurse powers on civilians!")
   (proc 15)
   ((cmd 209) 0 2)
   (text-frame 3 324 52 379) (text-reset 15)
   (text-frame 4 16 51 303)  (text-reset 15)
   (exec-mem 2816 "EXIT")
   (exec-mem 10752 "EXIT")
   (set-reg 990 #f)
   (mes-jump "b:¥mes¥ns12_04.mes"))
 (seg (? (= T 3) (= O 0))												; Action
   (proc 18)
   (text-color 7)
   (str "I'm a young doctor, high school girls adore me. To")
   (str "dance, sing, or hug anyone in a place like this" 'br)
   (str "would be inappropriate.")
   (proc 15)
   (proc 19))
 (seg (? (= T 4) (= O 0))												; Move
   (proc 18)
   (text-color 7)
   (str "Hrm, I should be hurrying to get ready for the" 'br)
   (str "physical exams, not dealing with this...")
   (proc 15)
   (text-color 7)
   (str "The string and sheer panties have truly tied my" 'br)
   (str "heart to this place...")
   (proc 15)
   (proc 19))
 (seg (? (= T 5) (= O 0))												; Save
   (proc 18)
   (mes-load? "mes¥save.mes")
; FMT
;  (branch-reg 750 (</> (/ (nop@)) (/ ((cmd 212)))))

;  (define-proc 10 (<> (text-color 11) (str "Momoko: ")))
;  (define-proc 11 (<> (text-color 5)  (str "Asuka: ")))
;  (define-proc 12 (<> (text-color 3)  (str "Yunako: ")))
;  (define-proc 13 (<> (text-color 1)  (str "Mohiko: ")))
   (proc 19)
   (set-var B 2)
   (set-var C 2)))