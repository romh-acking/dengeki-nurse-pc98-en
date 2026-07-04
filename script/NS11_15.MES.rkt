; Dengeki Nurse English Translation - NS11_15.MES
; Translated by Geometrizer
; Edited and commented by trentsignia
; -----Description:-----
; Tanchi and Dengeki Nurse barge into the Minister's room to find Ayako riding him.
; --To change for FMT:--
; Battle stuff...
(mes
 (meta (engine 'ADV) (charset "pc98"))
 (seg*
  (define-proc 10 (<> (text-color 3)  (str "Minister: ")))
  (define-proc 12 (<> (text-color 11) (str "Ayako: ")))
; (define-proc 13 (<> (text-color 8)  (str "Tomoyo: "))) ; <--- Unused

; 	Character portraits:

  (define-proc 11 (<> (proc 3) (exec-mem 2816 "GET 2 60 0 10 96") (proc 4))) ; Shouting

; 	Setup continues...

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
     (sound '|| "uso¥Nurse10.uso")
; FMT
;    (sound '|| "Nurse10.fmt")
     (sound '|| 1)
     (set-reg 990 #f))))
  (image-file "b:¥gpc¥ns1_139.gpc") (image-mem 1 3)
  ((cmd 209) 1 2)

; 	Intro begins here...

  (text-frame 3 324 52 379)
  (text-reset 15)
  (text-color 7)
  (str "Oh, good... He's alive...")
  (proc 15)
  (proc 10)
      ; Minister:
            (str "What is the meaning of this!? How" 'br)
   (str "improper!")
  (proc 15)
  (proc 12)
      ; Ayako:
         (str "Oh myyy, oh nooooo, how embarrassing!")
  (proc 15)
  (proc 19)
  (exec-mem 18944 65535 528 33)
  
; 	Dialogue trees (or lack thereof) defined here...

  (loop
   (exec-mem 24576 1 1 0)
   (exec-mem 24576 3)
   (text-color 1)
   (text-frame 3 324 52 379)
   (proc 19)
   (branch-var Z
    (</>
     (/ (nop@) (set-var T 0) (set-var O 0) (seg-call))
     (/ (nop@) (set-var T 1) (set-var O 0) (seg-call))
     (/ (nop@) (set-var T 2) (set-var O 0) (seg-call))
     (/ (nop@) (set-var T 3) (set-var O 0) (seg-call))
     (/ (nop@) (set-var T 4) (set-var O 0) (seg-call))
     (/ (nop@) (set-var T 5) (set-var O 0) (seg-call))
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
   (str "Wow, the cheek to do something so depraved in a" 'br)
   (str "hospital!")
   (proc 15)
   (proc 19))
 (seg (? (= T 1) (= O 0))												; Look
   (proc 18)
   (text-color 7)
   (str "I assure you this is exactly what it looks like...")
   (str "And in a hospital!? Well, I never!")
   (proc 15)
   (proc 19))
 (seg (? (= T 2) (= O 0))												; Talk
   (proc 18)
   (proc 2)
       ; Tanchi:
           (str "Minister, what are you doing!? You're" 'br)
   (str "supposed to be a patient here!")
   (proc 15)
   (proc 10)
       ; Minister:
             (str "Enough! Do you know who you are talking" 'br)
   (str "to!?")
   (proc 15)
   (proc 11) ; Portrait (Shouting)
   (proc 0)
       ; Dengeki Nurse:
                  (str "That woman's here to kill you!")
   (proc 15)
   (proc 6) ; Clear portrait
   (proc 10)
       ; Minister:
             (str "Nonsense! A cute little thing like" 'br)
   (str "this...")
   (proc 15)
   (proc 12)
       ; Ayako:
          (str "Its fiiine! Just a li'l misunderstanding...")
   (proc 15)
   (proc 11) ; Portrait (Shouting)
   (proc 0)
       ; Dengeki Nurse:
                  (str "I bet she told you to freshen your" 'br)
   (str "breath with a mint, didn't she?")
   (proc 15)
   (proc 6) ; Clear portrait
   (proc 2)
       ; Tanchi:
           (str "Oh, dude...")
   (proc 15)
   (proc 10)
       ; Minister:
             (str "...")
   (proc 15)
   (proc 11) ; Portrait (Shouting)
   (proc 0)
       ; Dengeki Nurse:
                  (str "Are you feeling drowsy?")
   (proc 15)
   (proc 6) ; Clear portrait
   (proc 10)
       ; Minister:
             (str "...")
   (proc 15)
   (proc 11) ; Portrait (Shouting)
   (proc 0)
       ; Dengeki Nurse:
                  (str "Fall asleep, and she'll inject you" 'br)
   (str "with Trans-Bio solution, then you'll drop dead" 'br)
   (str "from heart failure!")
   (proc 15)
   (proc 6) ; Clear portrait
   (proc 10)
       ; Minister:
             (str "Oh, oh no...")
   (proc 15)
   (proc 12)
       ; Ayako:
          (str "My my, someone thinks they're well-" 'br)
   (str "informed! But it's allll just lies!")
   (proc 15)
   (proc 11) ; Portrait (Shouting)
   (proc 0)
       ; Dengeki Nurse:
                  (str "How long can you play dumb, Goofus" 'br)
   (str "Nurse Ayako?")
   (proc 15)
   (proc 6) ; Clear portrait
   (proc 12)
       ; Ayako:
          (str "Oh daddy, won't you give me a moment to" 'br)
   (str "take care of that gabby little girl?")
   (proc 15)
   (proc 11) ; Portrait (Shouting)
   (proc 0)
       ; Dengeki Nurse:
                  (str "I'll be taking care of YOU!")
   (proc 15)

; 	Next battle begins...

   (sound '|| 2)
   (proc 6) ; Clear portrait
   (exec-mem 2816 "EXIT")
   (set-var U 2)
; FMT
;  (set-reg 988 #f)
   (sound '|| 2)
; PC-98
   (mes-load? "mes¥action1.mes") (text-frame 3 324 52 379) (text-reset 15) (text-frame 4 16 51 303) (text-reset 15) (set-reg 311 #t) (set-reg 990 #f) (mes-jump "b:¥mes¥ns11_16.mes"))
; FMT
;  (mes-jump "mes¥action02.mes"))

 (seg (? (= T 3) (= O 0))												; Action
   (proc 18)
   (proc 12)
       ; Ayako:
          (str "Oh no, don't you dare touch my chesticles!")
   (proc 15)
   (proc 3) (exec-mem 2816 "GET 2 30 0 10 96") (proc 4) ; Portrait (Angry)
   (proc 0)
       ; Dengeki Nurse:
                  (str "What do you think you're doing!?")
   (proc 15)
   (proc 6) ; Clear portrait
   (proc 19))
 (seg (? (= T 4) (= O 0))												; Move
   (proc 18)
   (proc 12)
       ; Ayako:
          (str "You can't leave now, sweetie!")
   (proc 15)
   (proc 19))
 (seg (? (= T 5) (= O 0))												; Save
   (proc 18)
   (mes-load? "mes¥save.mes")
; FMT
;  (branch-reg 750 (</> (/ (nop@)) (/ ((cmd 212)))))
;  (define-proc 10 (<> (text-color 3)  (str "Minister: ")))
;  (define-proc 12 (<> (text-color 11) (str "Ayako: ")))
;  (define-proc 13 (<> (text-color 8)  (str "Tomoyo: ")))
   (proc 19)
   (set-var B 1)
   (set-var C 1)))