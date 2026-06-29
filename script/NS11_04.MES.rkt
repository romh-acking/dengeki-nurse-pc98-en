; Dengeki Nurse English Translation - NS11_04.MES
; Translated by Geometrizer
; Edited and commented by trentsignia
; --Description:--
; In the Foreign Minister's ward. The nurse there is shocked to see Tanchi enter.
(mes
 (meta (engine 'ADV) (charset "pc98"))
 (seg*
  (define-proc 10 (<> (text-color 4) (str "Nurse: ")))
  (exec-mem 2816 "INIT,SHOW 0,ACCESS 1")
  (image-file "gpc¥face_w00.gpc")
  (image-mem 0 0)
  (exec-mem 2816 "GET 20 71 320 8 64")
  (exec-mem 2816 "ACCESS 0")
  (branch-reg 990
   (</>
    (/ (nop@))
    (/
     (sound '|| 0)
; PC-98
     (sound '|| "uso¥Nurse08.uso")
; FMT
;    (sound '|| "Nurse08.fmt")
     (sound '|| 1)
     (set-reg 990 #f))))
  (image-file "gpc¥ns1_k04.gpc")    (image-mem 1 3)
  (image-file "gpc¥ns1_k04a.gpc")   (image-mem 1 0)
  (image-file "b:¥gpc¥ns1_107.gpc") (image-mem 1 0)
  (image-file "b:¥gpc¥ns1_115.gpc") (image-mem 1 3)
  ((cmd 209) 1 2)
  ((cmd 204) 46 51)

; 	Intro begins here...

  (text-frame 3 324 52 379)
  (text-reset 15)
  (text-color 7)
  (str "I enter Room 305...")
  (proc 15)
  (text-color 7)
  (str "There is a nurse here, and she's looking at me all")
  (str "surprised.")
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
           (// (? (= 46 #t))           (nop@) (set-var T 0) (set-var O 1) (seg-call))    ; (set-reg 50 #t)
           (//                         (nop@) (set-var T 0) (set-var O 0) (seg-call)))))
; Look
     (/
      (if (</>
           (// (? (= 47 #t))           (nop@) (set-var T 1) (set-var O 1) (seg-call))
           (//                         (nop@) (set-var T 1) (set-var O 0) (seg-call))))) ; (set-reg 47 #t)
; Talk
     (/
      (if (</>
           (// (? (= 49 #t))           (nop@) (set-var T 2) (set-var O 2) (seg-call))    ; (set-reg 46 #t)
           (// (? (= 48 #t) (= 49 #f)) (nop@) (set-var T 2) (set-var O 1) (seg-call))    ; (set-reg 49 #t)
           (//                         (nop@) (set-var T 2) (set-var O 0) (seg-call))))) ; (set-reg 48 #t)
; Action
     (/
      (if (</>
           (// (? (= 50 #t))           (nop@) (set-var T 3) (set-var O 1) (seg-call))    ; (set-reg 51 #t)
           (//                         (nop@) (set-var T 3) (set-var O 0) (seg-call)))))
; Move
     (/
      (if (</>
           (// (? (= 51 #t))           (nop@) (set-var T 4) (set-var O 1) (seg-call))    ; (mes-jump "b:¥mes¥ns11_05.mes")
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
   (str "Hot damn, she's a cutie! Surgery will be fun with" 'br)
   (str "her around!")
   (proc 15)
   (proc 19))
 (seg (? (= T 0) (= O 1))												; (After talking to the nurse)
   (proc 18)
   (text-color 7)
   (str "I said it's an emergency, why's she dragging her" 'br)
   (str "feet? What a pain! I'm just going to grab her!")
   (proc 15)
   (proc 19)
   (set-reg 50 #t))
 (seg (? (= T 1) (= O 0))												; Look
   (proc 18)
   (text-color 7)
   (str "The minister's asleep in his bed. I don't know his")
   (str "name, but I know his face from TV, so it's" 'br)
   (str "definitely him.")
   (proc 15)
   (proc 19)
   (set-reg 47 #t))
 (seg (? (= T 1) (= O 1))
   (proc 18)
   (text-color 7)
   (str "She's looking at me with wide startled eyes. Well,")
   (str "I guess if someone barged into your hospital room,")
   (str "you'd be startled too.")
   (proc 15)
   (proc 19))
 (seg (? (= T 2) (= O 0))												; Talk
   (proc 18)
   (proc 2)
       ; Tanchi:
           (str "Hey! This is an emergency! We gotta get to")
   (str "surgery! Help me out here!")
   (proc 15)
   (proc 10)
       ; Nurse:
          (str "Huh? Wha?")
   (proc 15)
   (proc 19)
   (set-reg 48 #t))
 (seg (? (= T 2) (= O 1))
   (proc 18)
   (proc 2)
       ; Tanchi:
           (str "What do you mean,") (text "“") (str "Huh?") (text "”") (str "Let's go!")
   (proc 15)
   (proc 10)
       ; Nurse:
          (str "But... But I...")
   (proc 15)
   (proc 19)
   (set-reg 49 #t))
 (seg (? (= T 2) (= O 2))												; #2
   (proc 18)
   (proc 2)
       ; Tanchi:
           (str "He's just faking, ignore him! Every second")
   (str "counts here!")
   (proc 15)
   (proc 10)
       ; Nurse:
          (str "But..uh...well, I...")
   (proc 15)
   (proc 19)
   (set-reg 46 #t))
 (seg (? (= T 3) (= O 0))												; Action
   (proc 18)
   (proc 10)
       ; Nurse:
          (str "So, uh... What is wrong, exactly...? And" 'br)
   (str "why are you jumping around like that...?")
   (proc 15)
   (proc 19))
 (seg (? (= T 3) (= O 1))												; (After thinking about the situation)
   (proc 18)
   (text-color 7)
   (str "I grab the nurse's hand!")
   (proc 15)
   (proc 10)
       ; Nurse:
          (str "Eek!")
   (proc 15)
   (proc 2)
       ; Tanchi:
           (str "Come on, hurry!")
   (proc 15)
   (proc 19)
   (set-reg 51 #t))
 (seg (? (= T 4) (= O 0))												; Move
   (proc 18)
   (proc 2)
       ; Tanchi:
           (str "Follow me! There's no time!")
   (proc 15)
   (proc 10)
       ; Nurse:
          (str "...")
   (proc 15)
   (proc 2)
       ; Tanchi:
           (str "What are you doing? Come with me!")
   (proc 15)
   (proc 19))
 (seg (? (= T 4) (= O 1))												; (After grabbing the nurse's hand)
   (proc 18)
   (text-color 7)
   (str "I grab her hand and dash through the door.")
   (proc 15)
   ((cmd 209) 0 2)
   (text-frame 3 324 52 379) (text-reset 15)
   (text-frame 4 16 51 303)  (text-reset 15)
   (exec-mem 2816 "EXIT")
   (set-reg 990 #f)
   (mes-jump "b:¥mes¥ns11_05.mes"))
 (seg (? (= T 5) (= O 0))												; Save
   (proc 18)
   (mes-load? "mes¥save.mes")
; FMT
;  (branch-reg 750 (</> (/ (nop@)) (/ ((cmd 212)))))

;  (define-proc 10 (<> (text-color 4) (str "Nurse: ")))
   (proc 19)
   (set-var B 1)
   (set-var C 1)))