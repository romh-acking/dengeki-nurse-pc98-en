; Dengeki Nurse English Translation - NS13_06.MES
; Translated by Geometrizer
; Edited and commented by trentsignia
; --Description:--
; Our favourite duo end up on a deserted island, friends and swimsuit nowhere to be found.
(mes
 (meta (engine 'ADV) (charset "pc98"))
 (seg*
  (exec-mem 2816 "INIT,SHOW 0,ACCESS 1")
  (image-file "gpc¥face_w00.gpc") (image-mem 0 0)
  (exec-mem 2816 "GET 20 71 320 8 64")
  (exec-mem 2816 "ACCESS 0")
  (sound '|| 0)
; PC-98
  (sound '|| "uso¥Nurse11.uso")
; FMT
; (sound '|| "Nurse11.fmt")
  (sound '|| 1)
  (image-file "b:¥gpc¥Ns1_312.gpc") (image-mem 1 3)
  ((cmd 209) 1 2)
  ((cmd 204) 38 45)

; 	Intro begins here...

  (text-frame 3 324 52 379)
  (text-reset 15)
  (text-color 7)
  (str "Before I realized it, the blazing summer sun had" 'br)
  (str "sunk beneath the horizon.")
  (proc 15)
  (text-color 7)
  (str "Kirara and I found ourselves on a small island.")
  (proc 15)
  (text-color 7)
  (str "And yet... Doc Akiba and Croco were nowhere to be" 'br)
  (str "found.")
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
           (// (? (= 42 #t))                     (nop@) (set-var T 0) (set-var O 4) (seg-call))
           (// (? (= 41 #t) (= 42 #f))           (nop@) (set-var T 0) (set-var O 3) (seg-call))
           (// (? (= 40 #t) (= 41 #f))           (nop@) (set-var T 0) (set-var O 2) (seg-call))
           (// (? (= 38 #t) (= 39 #t) (= 40 #f)) (nop@) (set-var T 0) (set-var O 1) (seg-call))
           (//                                   (nop@) (set-var T 0) (set-var O 0) (seg-call)))))
; Look
     (/
      (if (</>
           (// (? (= 42 #t))                     (nop@) (set-var T 1) (set-var O 2) (seg-call))
           (// (? (= 40 #t) (= 42 #f))           (nop@) (set-var T 1) (set-var O 1) (seg-call))
           (//                                   (nop@) (set-var T 1) (set-var O 0) (seg-call)))))
; Talk
     (/
      (if (</>
           (// (? (= 42 #t))                     (nop@) (set-var T 2) (set-var O 5) (seg-call))
           (// (? (= 45 #t) (= 42 #f))           (nop@) (set-var T 2) (set-var O 4) (seg-call))
           (// (? (= 41 #t) (= 45 #f))           (nop@) (set-var T 2) (set-var O 3) (seg-call))
           (// (? (= 44 #t) (= 41 #f))           (nop@) (set-var T 2) (set-var O 2) (seg-call))
           (// (? (= 43 #t) (= 44 #f))           (nop@) (set-var T 2) (set-var O 1) (seg-call))
           (//                                   (nop@) (set-var T 2) (set-var O 0) (seg-call)))))
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
   (str "Anyway, at least we're alive... I'm more worried" 'br)
   (str "about Doc and Croco, since the ocean's dangerous" 'br)
   (str "at night...")
   (proc 15)
   (proc 19))
 (seg (? (= T 0) (= O 1))
   (proc 18)
   (text-color 7)
   (str "Just maybe... Is Kirara embarrassed?")
   (proc 15)
   (text-color 7)
   (str "After all, the tidal wave washed away her" 'br)
   (str "swimsuit.")
   (proc 15)
   (text-color 7)
   (str "I mean, yes, I am a pervert, but... I can't take" 'br)
   (str "advantage of a girl in a situation like this!")
   (proc 15)
   (proc 19)
   (set-reg 43 #t))
 (seg (? (= T 0) (= O 2))
   (proc 18)
   (text-color 7)
   (str "So is that what Kirara's worried about...")
   (proc 15)
   (text-color 7)
   (str "There's no need to worry! Knowing Doc Akiba and" 'br)
   (str "Croco, they're probably having hotpot together!" 'br)
   (str "Yeah... Yeah, that's got to be it.")
   (proc 15)
   (proc 19)
   (set-reg 44 #t))
 (seg (? (= T 0) (= O 3))
   (proc 18)
   (text-color 7)
   (str "Sure...yeah... But... But still, this is bad..." 'br)
   (str "Spending the night here together...")
   (proc 15)
   (proc 19)
   (set-reg 45 #t))
 (seg (? (= T 0) (= O 4))
   (proc 18)
   (text-color 7)
   (str "F-F-For real!? Does this mean what I think it" 'br)
   (str "does...?")
   (proc 15)
   (proc 19))
 (seg (? (= T 1) (= O 0))												; Look
   (proc 18)
   (text-color 7)
   (str "Kirara looks at me with a sad expression.")
   (proc 15)
   (text-color 7)
   (str "Well, it's no wonder... Who woulda thought we'd" 'br)
   (str "end up on a deserted island...")
   (proc 15)
   (proc 19)
   (set-reg 39 #t))
 (seg (? (= T 1) (= O 1))
   (proc 18)
   (text-color 7)
   (str "Tears are welling in Kirara's eyes...")
   (proc 15)
   (text-color 7)
   (str "At times like this, I wish Kirara was as upbeat as")
   (str "usual...")
   (proc 15)
   (proc 19))
 (seg (? (= T 1) (= O 2))
   (proc 18)
   (text-color 7)
   (str "I stare intently into Kirara's eyes.")
   (proc 15)
   (text-color 7)
   (str "Kirara stares back into mine...")
   (proc 15)
   (text-color 4)
   (str "Grrrrr... Grrrrrrrrrowl!")
   (proc 15)
   (text-color 7)
   (str "Kirara's stomach is rumbling.")
   (proc 15)
   (proc 2)
       ; Tanchi:
           (str "What's wrong? That's spoiling the romantic")
   (str "atmosphere.")
   (proc 15)
   (proc 1)
       ; Kirara:
           (str "I'm sorry...")
   (proc 15)
   (proc 2)
       ; Tanchi:
           (str "Haha, don't sweat it. I'll go find us some")
   (str "eats.")
   (proc 15)
   (proc 1)
       ; Kirara:
           (str "Wait a minute! I'll go too!")
   (proc 15)
   (proc 2)
       ; Tanchi:
           (str "Are you sure you're good to go?")
   (proc 15)
   (proc 1)
       ; Kirara:
           (str "Of course! As long as I'm with you," 'br)
   (str "Tanchi!")
   (proc 15)
   ((cmd 209) 0 2)
   (text-frame 3 324 52 379) (text-reset 15)
   (text-frame 4 16 51 303)  (text-reset 15)
   (exec-mem 2816 "EXIT")
   (sound '|| 2)
   (set-reg 990 #f)
   (mes-jump "b:¥mes¥ns13_07.mes"))
 (seg (? (= T 2) (= O 0))												; Talk
   (proc 18)
   (proc 2)
       ; Tanchi:
           (str "What's wrong? It seems like something's" 'br)
   (str "got you down.")
   (proc 15)
   (proc 1)
       ; Kirara:
           (str "......")
   (proc 15)
   (proc 19)
   (set-reg 38 #t))
 (seg (? (= T 2) (= O 1))
   (proc 18)
   (proc 2)
       ; Tanchi:
           (str "Don't be embarrassed, I won't sneak a look")
   (str "or anything.")
   (proc 15)
   (proc 1)
       ; Kirara:
           (str "No, that's not it...")
   (proc 15)
   (proc 2)
       ; Tanchi:
           (str "What do you mean, then?")
   (proc 15)
   (proc 1)
       ; Kirara:
           (str "I'm sorry... If only I'd listened to you" 'br)
   (str "back then...")
   (proc 15)
   (proc 19)
   (set-reg 40 #t))
 (seg (? (= T 2) (= O 2))
   (proc 18)
   (proc 2)
       ; Tanchi:
           (str "Don't worry. I'm sure Doc Akiba and Croco" 'br)
   (str "are totally fine.")
   (proc 15)
   (proc 1)
       ; Kirara:
           (str "Yeah...")
   (proc 15)
   (proc 2)
       ; Tanchi:
           (str "Anyway... The sun's set, so we'll worry" 'br)
   (str "about it tomorrow.")
   (proc 15)
   (proc 1)
       ; Kirara:
           (str "Tomorrow?")
   (proc 15)
   (proc 2)
       ; Tanchi:
           (str "Both the sea and jungle are dangerous at" 'br)
   (str "night.")
   (proc 15)
   (proc 1)
       ; Kirara:
           (str "So we're staying overnight...?")
   (proc 15)
   (proc 19)
   (set-reg 41 #t))
 (seg (? (= T 2) (= O 3))
   (proc 18)
   (proc 2)
       ; Tanchi:
           (str "...")
   (proc 15)
   (proc 1)
       ; Kirara:
           (str "......")
   (proc 15)
   (proc 19))
 (seg (? (= T 2) (= O 4))
   (proc 18)
   (proc 2)
       ; Tanchi:
           (str "Yeah... I'll just sleep outside...")
   (proc 15)
   (proc 1)
       ; Kirara:
           (str "Tanchi...")
   (proc 15)
   (proc 2)
       ; Tanchi:
           (str "What is it?")
   (proc 15)
   (proc 1)
       ; Kirara:
           (str "Stay with me...")
   (proc 15)
   (proc 2)
       ; Tanchi:
           (str "Kirara...")
   (proc 15)
   (proc 19)
   (set-reg 42 #t))
 (seg (? (= T 2) (= O 5))
   (proc 18)
   (proc 2)
       ; Tanchi:
           (str "Kirara...")
   (proc 15)
   (proc 1)
       ; Kirara:
           (str "Tanchi...")
   (proc 15)
   (proc 19))
 (seg (? (= T 3) (= O 0))												; Action
   (proc 18)
   (text-color 7)
   (str "I'm not really in the mood for dancing right" 'br)
   (str "now...")
   (proc 15)
   (proc 19))
 (seg (? (= T 4) (= O 0))												; Move
   (proc 18)
   (text-color 7)
   (str "The jungle at night is dangerous. We should wait" 'br)
   (str "until the morning.")
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