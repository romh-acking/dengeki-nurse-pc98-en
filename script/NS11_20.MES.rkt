; Dengeki Nurse English Translation - NS11_20.MES
; Translated by Geometrizer
; Edited and commented by trentsignia
; --Description:--
; Dengeki Nurse barges into the operating room just in the nick of time.
(mes
 (meta (engine 'ADV) (charset "pc98"))
 (seg*
  (define-proc 10 (<> (text-color 3) (str "Minister: ")))
  (define-proc 11 (<> (text-color 5) (str "Guillotine Nurse: ")))
; FMT
; (branch-reg 941 (</> (/
  (exec-mem 2816 "INIT,SHOW 0,ACCESS 1")
  (text-frame 0 0 79 399) (text-reset 0) (image-file "b:¥gpc¥ns1_149.gpc") (image-mem 0 0) (exec-mem 2816 "GET 3 0 0 24 144")
  (text-frame 0 0 79 399) (text-reset 0) (image-file "b:¥gpc¥ns1_150.gpc") (image-mem 0 0) (exec-mem 2816 "GET 4 0 0 24 144")
  (image-file "gpc¥face_w00.gpc") (image-mem 0 0)
  (exec-mem 2816 "GET 20 71 320 8 64")
  (exec-mem 2816 "ACCESS 0")
  (sound '|| 0)
; PC-98
  (sound '|| "uso¥Nurse10.uso")
; FMT
; (sound '|| "Nurse10.fmt") (sound '|| 100)
  (sound '|| 1)
  (image-file "b:¥gpc¥ns1_148.gpc") (image-mem 1 3)
  ((cmd 209) 1 2)
  ((cmd 204) 138 143)

; 	Intro begins here...

  (text-frame 3 324 52 379)
  (text-reset 15)
  (proc 0)
      ; Dengeki Nurse:
                 (str "Not one more step, Guillotine" 'br)
  (str "Nurse!")
  (proc 15)
  (proc 11)
      ; Guillotine Nurse:
                    (str "Hah! So you show your face," 'br)
  (str "traitor! No one interferes with my noble hobby!")
  (proc 15)
  (proc 2)
      ; Tanchi:
          (str "Yo! Let the Minister go!")
  (proc 15)
  (proc 11)
      ; Guillotine Nurse:
                    (str "I don't usually attempt this" 'br)
  (str "type of procedure... It'll hurt more than" 'br)
  (str "surgery, so just cope!")
  (proc 15)
  (text-color 7)
  (str "Guillotine Nurse presses a scalpel to the" 'br)
  (str "Minister's throat!")
  (proc 15)
  (proc 10)
      ; Minister:
            (str "Haa, haa, haa...")
  (proc 15)
  (proc 19)
; PC-98
  (exec-mem 18944 65535 528 33)
; FMT
; (exec-mem 18944 65535 528 33)) (/ (nop@))))
  
; 	Dialogue trees defined here...

  (loop
; FMT
;  (branch-reg 941 (</> (/ (nop@)) (/ (set-var T 2) (set-var O 4) (seg-call))))
   (exec-mem 24576 1 1 0)
   (exec-mem 24576 3)
   (text-color 1)
   (text-frame 3 324 52 379)
   (proc 19)

; 	The flags in this script appear to be totally botched. This is how it was branched originally...

;  (branch-var Z
;   (</>
; Think
;    (/
;     (if (</>
;          (// (? (= 140 #t))            (nop@) (set-var T 0) (set-var O 3) (seg-call))
;          (// (? (= 139 #t) (= 140 #f)) (nop@) (set-var T 0) (set-var O 2) (seg-call))    ; (set-reg 142 #t)
;          (// (? (= 138 #t) (= 139 #f)) (nop@) (set-var T 0) (set-var O 1) (seg-call))    ; (set-reg 139 #t)
;          (//                           (nop@) (set-var T 0) (set-var O 0) (seg-call)))))
; Look
;    (/
;     (if (</>
;          (// (? (= 140 #t))            (nop@) (set-var T 1) (set-var O 3) (seg-call))
;          (// (? (= 139 #t) (= 140 #f)) (nop@) (set-var T 1) (set-var O 2) (seg-call))    ; (set-reg 139 #t)
;          (// (? (= 141 #t) (= 139 #f)) (nop@) (set-var T 1) (set-var O 1) (seg-call))    ; (set-reg 138 #t)
;          (//                           (nop@) (set-var T 1) (set-var O 0) (seg-call)))))
; Talk
;    (/
;     (if (</>
;          (// (? (= 143 #t) (= 142 #t)) (nop@) (set-var T 2) (set-var O 3) (seg-call))    ; (mes-jump "b:¥mes¥ns11_21.mes")
;          (// (? (= 143 #t) (= 142 #f)) (nop@) (set-var T 2) (set-var O 2) (seg-call))
;          (// (? (= 142 #t))            (nop@) (set-var T 2) (set-var O 1) (seg-call))    ; (set-reg 143 #t)
;          (//                           (nop@) (set-var T 2) (set-var O 0) (seg-call))))) ; (set-reg 141 #t)

; 	And this is how I would alter it:
; 	(To keep within the 6 flags defined for this script, I essentially sacrificed Think #2 in progression.)

   (branch-var Z
    (</>
; Think
     (/
      (if (</>
           (// (? (= 140 #t))            (nop@) (set-var T 0) (set-var O 3) (seg-call))    ; (set-reg 143 #t)
           (// (? (= 139 #t) (= 140 #f)) (nop@) (set-var T 0) (set-var O 2) (seg-call))    ; (set-reg 142 #t)
           (// (? (= 138 #t) (= 139 #f)) (nop@) (set-var T 0) (set-var O 1) (seg-call))    ; (set-reg 139 #t)
           (//                           (nop@) (set-var T 0) (set-var O 0) (seg-call)))))
; Look
     (/
      (if (</>
           (// (? (= 140 #t))            (nop@) (set-var T 1) (set-var O 3) (seg-call))
           (// (? (= 139 #t) (= 140 #f)) (nop@) (set-var T 1) (set-var O 2) (seg-call))
           (// (? (= 141 #t) (= 139 #f)) (nop@) (set-var T 1) (set-var O 1) (seg-call))    ; (set-reg 138 #t)
           (//                           (nop@) (set-var T 1) (set-var O 0) (seg-call)))))
; Talk
     (/
      (if (</>
           (// (? (= 143 #t))            (nop@) (set-var T 2) (set-var O 3) (seg-call))    ; (mes-jump "b:¥mes¥ns11_21.mes")
           (// (? (= 140 #t) (= 143 #f)) (nop@) (set-var T 2) (set-var O 2) (seg-call))
           (// (? (= 142 #t) (= 140 #f)) (nop@) (set-var T 2) (set-var O 1) (seg-call))    ; (set-reg 140 #t)
           (//                           (nop@) (set-var T 2) (set-var O 0) (seg-call))))) ; (set-reg 141 #t)

;	The rest are fine.

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
   (str "I didn't come here to watch a splatter flick!")
   (proc 15)
   (proc 19))
 (seg (? (= T 0) (= O 1))
   (proc 18)
   (text-color 7)
   (str "Gotta find an opening...")
   (proc 15)
   (text-color 7)
   (str "Hmmmm, nothing...")
   (proc 15)
   (proc 19)
   (set-reg 139 #t))
 (seg (? (= T 0) (= O 2))
   (proc 18)
   (text-color 7)
   (str "Those modest breasts, bouncing around like that...")
   (str "What a mysterious body she's got...")
   (proc 15)
   (text-color 7)
   (str "Wait, no! Dial it back! Why am I thinking these" 'br)
   (str "thoughts right now!?")
   (proc 15)
   (text-color 7)
   (repeat 50 (<> (str ".")))
   (proc 15)
   (text-color 7)
   (str "Wait, that's it! Those breasts!")
   (proc 15)
   (proc 19)
   (set-reg 142 #t))
 (seg (? (= T 0) (= O 3))
   (proc 18)
   (text-color 7)
   (str "Damn, she's cold-blooded... Though she's rattled," 'br)
   (str "there are no openings...")
   (proc 15)
   (text-color 7)
   (str "In that case...")
   (proc 15)
   (text-color 7)
   (str "I'll need to rattle her even more!")
   (proc 15)
   (proc 19)
   (set-reg 143 #t))
 (seg (? (= T 1) (= O 0))												; Look
   (proc 18)
   (text-color 7)
   (str "Guillotine Nurse has got a scalpel up against the" 'br)
   (str "Minister's throat... I can't make a move...")
   (proc 15)
   (proc 19))
 (seg (? (= T 1) (= O 1))
   (proc 18)
   (text-color 7)
   (str "The Minister will have a Procedure done on him..." 'br)
   (str "I need to find an opening to stop her!")
   (proc 15)
   (proc 19)
   (set-reg 138 #t))
 (seg (? (= T 1) (= O 2))
   (proc 18)
   (text-color 7)
   (str "Guillotine Nurse has such small but pert boobs...")
   (proc 15)
   (text-color 7)
   (str "No! This isn't the time to be ogling her!")
   (proc 15)
   (proc 19))
 (seg (? (= T 1) (= O 3))
   (proc 18)
   (text-color 7)
   (str "Guillotine Nurse seems pretty shook. She keeps" 'br)
   (str "glancing at her chest...")
   (proc 15)
   (proc 19))
 (seg (? (= T 2) (= O 0))												; Talk
   (proc 18)
   (proc 11)
       ; Guillotine Nurse:
                     (str "Heh! If you behave, I'll let you")
   (str "do a surgical observation on my fine Procedure!")
   (proc 15)
   (proc 0)
       ; Dengeki Nurse:
                  (str "...")
   (proc 15)
   (proc 19)
   (set-reg 141 #t))
 (seg (? (= T 2) (= O 1))
   (proc 18)
   (proc 2)
       ; Tanchi:
           (str "Wait! Guillotine Nurse! You...you might" 'br)
   (str "have breast cancer!")
   (proc 15)
   (proc 11)
       ; Guillotine Nurse:
                     (str "W-What are you on about?")
   (proc 15)
   (proc 2)
       ; Tanchi:
           (str "I realized it when I touched your chest" 'br)
   (str "just now! Didn't you notice that hard lump?")
   (proc 15)
   (proc 11)
       ; Guillotine Nurse:
                     (str "S-Stop messing around...")
   (proc 15)
   (proc 19)
   (set-reg 140 #t))
 (seg (? (= T 2) (= O 2))
   (proc 18)
   (proc 2)
       ; Tanchi:
           (str "As a doctor I recommend you get an exam" 'br)
   (str "posthaste!")
   (proc 15)
   (proc 11)
       ; Guillotine Nurse:
                     (str "...")
   (proc 15)
   (proc 19))
 (seg (? (= T 2) (= O 3))
   (proc 18)
   (proc 2)
       ; Tanchi:
           (str "Listen! If you get breast cancer, you'll" 'br)
   (str "need to have your breast removed!")
   (proc 15)
   (proc 11)
       ; Guillotine Nurse:
                     (str "...")
   (proc 15)
   (proc 2)
       ; Tanchi:
           (str "If you lost your breasts, you wouldn't be" 'br)
   (str "able to do all that fun stuff you do with them!")
   (proc 15)
   (proc 11)
       ; Guillotine Nurse:
                     (str "No way...")
   (proc 15)
   (proc 0)
       ; Dengeki Nurse:
                  (str "Here's my chance!")
   (proc 15)

   (exec-mem 2816 "VIEW 27 153 52 310,PUT 3 27 153,FREE 3")
; ^ Dengeki Scalpel Shuriken, go!

   (sound '|| 0)
; PC-98
   (sound '|se | 20)
; FMT
;  (sound '|se | 8)

   (proc 0)
       ; Dengeki Nurse:
                  (str "Dengeki Scalpel Shuriken!")
   (proc 15)

   (exec-mem 2816 "VIEW 5 23 30 180,PUT 4 5 23,FREE 4")
; ^ Clear visual

   (sound '|| 0)
; PC-98
   (sound '|se | 20)
; FMT
;  (sound '|se | 9)

   (text-color 1)
   (str "WHOOOOOOSH!!!")
   (proc 15)
   (proc 11)
       ; Guillotine Nurse:
                     (str "You little...You tricked me!" 'br)
   (str "I'll destroy you two first!")
   (proc 15)

; 	Battle time...

   (exec-mem 2816 "EXIT")
   (set-var U 3)
; PC-98
   (sound '|| 0) (mes-load? "mes¥action1.mes")
; FMT
;  (sound '|| 2) (mes-jump "mes¥action03.mes")) (seg (? (= T 2) (= O 4)) (nop@) (set-reg 941 #f) (set-reg 311 #f)
   (load-mem "cmd¥scrh.tcm" 28672)
   (exec-mem 2816 "INIT,SHOW 0,ACCESS 1")
   (text-frame 0 0 79 399)
   (text-reset 1)
   (image-file "b:¥gpc¥Ns1_152.gpc") (image-mem 0 0)
   (exec-mem 2816 "ACCESS 0")
   (image-file "gpc¥aflame01.gpc")
; PC-98
   (image-mem 1 3)
; FMT
;  (image-mem 0 0)
   (image-file "b:¥gpc¥ns1_151.gpc")
; PC-98
   (image-mem 1 3)
; FMT
;  (image-mem 1 0)
   (sound '|| 0)
   (text-frame 3 324 52 379)
   (text-reset 15)
; PC-98
   (exec-mem 6656 8)
; FMT
;  (exec-mem 17920 0 1)
   (proc 11)
       ; Guillotine Nurse:
                     (str "Urgh... Fools... Don't think you")
   (str "can hide from the society...")
   (proc 15)
; PC-98
   (exec-mem 28672 4 16 51 303 1 2 8 36)
; FMT
;  (exec-mem 28672 4 16 51 303 1 2 4 72)
   (proc 0)
       ; Dengeki Nurse:
                  (str "I won't lose, no matter what" 'br)
   (str "terrors await...")
   (proc 15)
   (proc 0)
       ; Dengeki Nurse:
                  (str "Until the day I crush the Black" 'br)
   (str "Cross, until the day I see my mother again...")
   (proc 15)
   (proc 0)
       ; Dengeki Nurse:
                  (str "I'll keep fighting as Dengeki" 'br)
   (str "Nurse!")
   (proc 15)
   ((cmd 209) 0 2)
   (text-frame 3 324 52 379) (text-reset 15)
   (text-frame 4 16 51 303)  (text-reset 15)
   (exec-mem 2816 "EXIT")
   (set-reg 990 #f)
   (mes-jump "b:¥mes¥ns11_21.mes"))
 (seg (? (= T 3) (= O 0))												; Action
   (proc 18)
   (text-color 1)
   (str "Clatter...")
   (proc 15)
   (proc 11)
       ; Guillotine Nurse:
                     (str "Don't you move!")
   (proc 15)
   (proc 2)
       ; Tanchi:
           (str "Yes... Er, I'm sorry...")
   (proc 15)
   (proc 19))
 (seg (? (= T 4) (= O 0))												; Move
   (proc 18)
   (proc 11)
       ; Guillotine Nurse:
                     (str "Where do you think you're" 'br)
   (str "going!?")
   (proc 15)
   (proc 2)
       ; Tanchi:
           (str "Uh, I kinda have to go pee") (text "−")
   (proc 15)
   (proc 11)
       ; Guillotine Nurse:
                     (str "Permission DENIED!")
   (proc 15)
   (proc 19))
 (seg (? (= T 5) (= O 0))												; Save
   (proc 18)
   (mes-load? "mes¥save.mes")
; FMT
;  (branch-reg 750 (</> (/ (nop@)) (/ ((cmd 212)))))
;  (define-proc 10 (<> (text-color 3) (str "Minister: ")))
;  (define-proc 11 (<> (text-color 5) (str "Guillotine Nurse: ")))
   (proc 19)
   (set-var B 1)
   (set-var C 1)))