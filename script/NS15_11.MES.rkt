; Dengeki Nurse English Translation - NS15_11.MES
; Translated by Geometrizer
; Edited and commented by trentsignia
; --Description:--
; Tanchi finds Kirara, playing with Nishijin Turbo-R... well, that's probably not the machine she was playing.
(mes
 (meta (engine 'ADV) (charset "pc98"))
 (seg*
  (exec-mem 2816 "INIT,SHOW 0,ACCESS 1")
  (image-file "gpc¥face_w00.gpc")
  (image-mem 0 0)
  (exec-mem 2816 "GET 20 71 320 8 64")
  (exec-mem 2816 "ACCESS 0")
  (sound '|| 0)
  (sound '|| "uso¥Nurse09.uso")
  (sound '|| 1)
  (image-file "b:¥gpc¥ns1_520.gpc")
  (image-mem 1 3)

; 	Intro begins here...

  (text-frame 3 324 52 379)
  (text-reset 15)
  ((cmd 204) 60 67)
  ((cmd 209) 1 2)
  (text #:col 1 'br)
  (text "　　−") (str "Pachinko Parlor UN International Hall") (text "−")
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
           (// (? (= 61 #t))           (nop@) (set-var T 0) (set-var O 2) (seg-call))
           (// (? (= 60 #t) (= 61 #f)) (nop@) (set-var T 0) (set-var O 1) (seg-call))
           (//                         (nop@) (set-var T 0) (set-var O 0) (seg-call)))))
; Look
     (/
      (if (</>
           (// (? (= 62 #t) (= 63 #t)) (nop@) (set-var T 1) (set-var O 1) (seg-call))
           (//                         (nop@) (set-var T 1) (set-var O 0) (seg-call)))))
; Talk
     (/
      (if (</>
           (// (? (= 67 #t))           (nop@) (set-var T 2) (set-var O 4) (seg-call))
           (// (? (= 66 #t) (= 67 #f)) (nop@) (set-var T 2) (set-var O 3) (seg-call))
           (// (? (= 65 #t) (= 66 #f)) (nop@) (set-var T 2) (set-var O 2) (seg-call))
           (// (? (= 64 #t) (= 65 #f)) (nop@) (set-var T 2) (set-var O 1) (seg-call))
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
   (str "Why would Kirara be playing pachinko? Anyway, I" 'br)
   (str "need to bring her back to the hospital. That news" 'br)
   (str "about her mom is gonna knock her flat.")
   (proc 15)
   (proc 19)
   (set-reg 62 #t))
 (seg (? (= T 0) (= O 1))
   (proc 18)
   (text-color 7)
   (str "Why do I feel like there's some sort of barrier" 'br)
   (str "around Kirara that is pushing me away...? I bet" 'br)
   (str "she's still upset about earlier.")
   (proc 15)
   (proc 19)
   (set-reg 66 #t))
 (seg (? (= T 0) (= O 2))
   (proc 18)
   (text-color 7)
   (str "Why does this have to be about Nursia? She's where")
   (str "she is now because of me... I can't rely on Kirara")
   (str "at all for this.")
   (proc 15)
   (text-color 7)
   (str "I just want Kirara to meet up with her mom... I" 'br)
   (str "wanted to quietly bring her back and give her a" 'br)
   (str "big surprise, but...")
   (proc 15)
   (proc 19)
   (set-reg 67 #t))
 (seg (? (= T 1) (= O 0))												; Look
   (proc 18)
   (text-color 7)
   (str "Kirara is playing pachinko with glazed-over eyes.")
   (proc 15)
   (proc 19))
 (seg (? (= T 1) (= O 1))
   (proc 18)
   (text-color 7)
   (str "At her feet is a mountain of winnings. My god, she")
   (str "has won a lot in such a short time...!")
   (proc 15)
   (text-color 7)
   (str "I mean, now's not the time to be impressed, but...")
   (proc 15)
   (proc 19)
   (set-reg 65 #t))
 (seg (? (= T 2) (= O 0))												; Talk
   (proc 18)
   (proc 2)
       ; Tanchi:
           (str "Kirara!")
   (proc 15)
   (proc 1)
       ; Kirara:
           (str "......")
   (proc 15)
   (proc 19)
   (set-reg 64 #t))
 (seg (? (= T 2) (= O 1))
   (proc 18)
   (proc 2)
       ; Tanchi:
           (str "Hello, earth to Kirara?")
   (proc 15)
   (proc 1)
       ; Kirara:
           (str "......")
   (proc 15)
   (proc 19)
   (set-reg 63 #t))
 (seg (? (= T 2) (= O 2))
   (proc 18)
   (proc 2)
       ; Tanchi:
           (str "Kirara... What are you actually doing?")
   (proc 15)
   (proc 1)
       ; Kirara:
           (str "Pachinko.")
   (proc 15)
   (proc 2)
       ; Tanchi:
           (str "N-No, that's not what I meant...")
   (proc 15)
   (proc 1)
       ; Kirara:
           (str "I'm not giving you any balls.")
   (proc 15)
   (proc 19)
   (set-reg 60 #t))
 (seg (? (= T 2) (= O 3))
   (proc 18)
   (proc 2)
       ; Tanchi:
           (str "Kirara... About before... I'm sorry. I" 'br)
   (str "think I went too far.")
   (proc 15)
   (proc 1)
       ; Kirara:
           (str "I'm not going to help you save Nursia.")
   (proc 15)
   (proc 2)
       ; Tanchi:
           (str "No! There's something else...")
   (proc 15)
   (proc 19)
   (set-reg 61 #t))
 (seg (? (= T 2) (= O 4))
   (proc 18)
   (proc 2)
       ; Tanchi:
           (str "Kirara... We've found your mother!")
   (proc 15)
   (proc 3)
   (exec-mem 2816 "GET 2 40 0 10 96") ; Shocked
   (proc 4)
   (sound '|| 0)
   (proc 1)
       ; Kirara:
           (str "WHAT?")
   (proc 15)
   (proc 6)
   (proc 2)
       ; Tanchi:
           (str "Come on, we gotta go! She's at the" 'br)
   (str "hospital!")
   (proc 15)
   (proc 3)
   (exec-mem 2816 "GET 2 70 0 10 96") ; Flushed
   (proc 4)
   (proc 1)
       ; Kirara:
           (str "O-Okay...")
   (proc 15)
   ((cmd 209) 0 2)
   (proc 6)
   (text-frame 3 324 52 379) (text-reset 15)
   (text-frame 4 16 51 303)  (text-reset 15)
   (exec-mem 2816 "EXIT")
   (set-reg 990 #f)
   (mes-jump "b:¥mes¥ns15_12.mes"))
 (seg (? (= T 3) (= O 0))												; Action
   (proc 18)
   (text-color 7)
   (str "No, we are NOT playing pachinko now!")
   (proc 15)
   (proc 19))
 (seg (? (= T 4) (= O 0))												; Move
   (proc 18)
   (text-color 7)
   (str "I have to bring Kirara back, or all of this will" 'br)
   (str "have been totally pointless!")
   (proc 15)
   (proc 19))
 (seg (? (= T 5) (= O 0))												; Save
   (proc 18)
   (mes-load? "mes¥save.mes")
; FMT
;  (branch-reg 750 (</> (/ (nop@)) (/ ((cmd 212)))))

   (proc 19)
   (set-var B 5)
   (set-var C 5)))