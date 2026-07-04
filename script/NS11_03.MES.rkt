; Dengeki Nurse English Translation - NS11_03.MES
; Translated by Geometrizer
; Edited and commented by trentsignia
; --Description:--
; Dr. Akiba is in pain! Tanchi rushes out to the hospital hallways to find the Foreign Minister's nurse.
(mes
 (meta (engine 'ADV) (charset "pc98"))
 (seg*
  (load-mem "cmd¥gpcph.tcm" 6656)
  (load-mem "dat¥ns1_k00p.dat" 7168)
  (sound '|| 0)
; PC-98
  (sound '|| "uso¥Nurse08.uso")
; FMT
; (sound '|| "Nurse08.fmt")
  (sound '|| 1)
  (exec-mem 2816 "INIT,SHOW 0,ACCESS 1")
  (image-file "gpc¥face_w00.gpc")
  (image-mem 0 0)
  (exec-mem 2816 "GET 20 71 320 8 64")
  (exec-mem 2816 "ACCESS 0")
  (image-file "gpc¥ns1_k05.gpc")
  (exec-mem 6656 4 7168)
  (image-mem 1 3)
  ((cmd 209) 1 2)
  ((cmd 204) 43 45)

; 	Intro begins here...

  (text-frame 3 324 52 379)
  (text-reset 15)
  (text-color 7)
  (str "I step out into the corridor.")
  (proc 15)
  (text-color 7)
  (str "Wait a damn second!")
  (proc 15)
  (text-color 7)
  (str "Where even is the Minister's room?")
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
     (/
; Think
      (if (</>
           (// (? (= 43 #t) (= 44 #t)) (nop@) (set-var T 0) (set-var O 1) (seg-call))    ; (set-reg 45 #t)
           (//                         (nop@) (set-var T 0) (set-var O 0) (seg-call))))) ; (set-reg 43 #t)
; Look
     (/
      (if (</>
           (// (? (= 44 #t))           (nop@) (set-var T 1) (set-var O 1) (seg-call))
           (//                         (nop@) (set-var T 1) (set-var O 0) (seg-call))))) ; (set-reg 44 #t)
; Talk
     (/ (nop@) (set-var T 2) (set-var O 0) (seg-call))
; Action
     (/ (nop@) (set-var T 3) (set-var O 0) (seg-call))
; Move
     (/
      (if (</>
           (// (? (= 45 #t))           (nop@) (set-var T 4) (set-var O 1) (seg-call))    ; (mes-jump "b:¥mes¥ns11_04.mes")
           (//                         (nop@) (set-var T 4) (set-var O 0) (seg-call)))))
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
   (str "Ahh, I shoulda had the head nurse call instead. I" 'br)
   (str "don't need to go find a nurse myself.")
   (proc 15)
   (text-color 7)
   (str "But no, she's sent many a patient to their" 'br)
   (str "grave... And she's got plenty to deal with as-is.")
   (proc 15)
   (proc 19)
   (set-reg 43 #t))
 (seg (? (= T 0) (= O 1))												; (After looking at the room signs)
   (proc 18)
   (text-color 7)
   (str "Let's think it through here... In our hospital," 'br)
   (str "we'd put VIPs in...")
   (proc 15)
   (text-color 7)
   (str "That's it! Room 305, around the corner!")
   (proc 15)
   (proc 19)
   (set-reg 45 #t))
 (seg (? (= T 1) (= O 0))												; Look
   (proc 18)
   (text-color 7)
   (str "I look at the sign in front of the room. These" 'br)
   (str "have the patient's name written on it, so you know")
   (str "who's in which room.")
   (proc 15)
   (text-color 7)
   (str "...But I don't know the Minister's name...")
   (proc 15)
   (text-color 7)
   (str "How don't I know the name of our foreign minister?")
   (str "...Hey, if you're laughing, why not tell me the" 'br)
   (str "Minister of Health, Labour and Welfare's name, hm?")
   (proc 15)
   (proc 19)
   (set-reg 44 #t))
 (seg (? (= T 1) (= O 1))												; #2
   (proc 18)
   (text-color 7)
   (str "Even though it's nighttime, the hallway's bright." 'br)
   (str "That makes it less scary. I'll take that.")
   (proc 15)
   (proc 19))
 (seg (? (= T 2) (= O 0))												; Talk
   (proc 18)
   (proc 2)
       ; Tanchi:
           (str "Excuse me, which room is the Minister in?")
   (proc 15)
   (text-color 1)
   (str "...")
   (proc 15)
   (text-color 7)
   (str "Damn, nobody's here...")
   (proc 15)
   (proc 19))
 (seg (? (= T 3) (= O 0))												; Action
   (proc 18)
   (text-color 7)
   (str "Best not to make a fuss in the hallway, this being")
   (str "a hospital and all.")
   (proc 15)
   (proc 19))
 (seg (? (= T 4) (= O 0))												; Move
   (proc 18)
   (text-color 7)
   (str "I can't just wander around the hospital blindly! A")
   (str "hospital at night's the same as a dungeon.")
   (proc 15)
   (text-color 7)
   (str "Pop a door open, and you might get attacked by the")
   (str "undead.")
   (proc 15)
   (proc 19))
 (seg (? (= T 4) (= O 1))												; (After figuring out where to move)
   (proc 18)
   (text-color 7)
   (str "With some trepidation, I decided to go to Room" 'br)
   (str "305.")
   (proc 15)
   ((cmd 209) 0 2)
   (text-frame 3 324 52 379) (text-reset 15)
   (text-frame 4 16 51 303)  (text-reset 15)
   (exec-mem 2816 "EXIT")
   (set-reg 990 #f)
   (mes-jump "b:¥mes¥ns11_04.mes"))
 (seg (? (= T 5) (= O 0))												; Save
   (proc 18)
   (mes-load? "mes¥save.mes")
; FMT
;  (branch-reg 750 (</> (/ (nop@)) (/ ((cmd 212)))))
   (proc 19)
   (set-var B 1)
   (set-var C 1)))