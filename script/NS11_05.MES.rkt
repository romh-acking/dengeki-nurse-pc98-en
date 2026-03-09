; Dengeki Nurse English Translation - NS11_05.MES
; Translated by Geometrizer
; Edited and commented by trentsignia
; --Description:--
; Tanchi has dragged the nurse out to the hallway, and they are now en route to see Dr. Akiba.
(mes
 (meta (engine 'ADV) (charset "pc98"))
 (seg*
  (load-mem "cmd¥gpcph.tcm" 6656)
  (load-mem "dat¥ns1_k00p.dat" 7168)
  (exec-mem 2816 "INIT,SHOW 0,ACCESS 1")
  (image-file "gpc¥face_w00.gpc")
  (image-mem 0 0)
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
  (exec-mem 2816 "GET 20 71 320 8 64")
  (exec-mem 2816 "ACCESS 0")
  (image-file "gpc¥ns1_k05.gpc")
  (exec-mem 6656 4 7168)
  (image-mem 1 3)
  (image-file "b:¥gpc¥ns1_116.gpc")
  (image-mem 1 3)
  ((cmd 209) 1 2)
  (set-reg 52 #f)

; 	Intro begins here...

  (text-frame 3 324 52 379)
  (text-reset 15)
  (text-color 1)
  (str "Tromp, tromp, tromp...")
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
     (/ (nop@) (set-var T 0) (set-var O 0) (seg-call))
; Look
     (/ (nop@) (set-var T 1) (set-var O 0) (seg-call))
; Talk
     (/
      (if (</>
           (// (? (= 52 #t)) (nop@) (set-var T 2) (set-var O 1) (seg-call))
           (//               (nop@) (set-var T 2) (set-var O 0) (seg-call))))) ; (set-reg 52 #t)
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
   (str "You shouldn't run in the hallway. That's supposed" 'br)
   (str "to be common sense.")
   (proc 15)
   (text-color 7)
   (str "But when lives are on the line, you gotta sprint!" 'br)
   (str "This is why docs and nurses need to keep their" 'br)
   (str "legs and hips in shape!")
   (proc 15)
   (proc 19))
 (seg (? (= T 1) (= O 0))												; Look
   (proc 18)
   (text-color 7)
   (str "I take a glance back at her.")
   (proc 15)
   (text-color 7)
   (str "She's super cute... Just my type. Maybe I'll ask" 'br)
   (str "her out on a date after the surgery.")
   (proc 15)
   (proc 19))
 (seg (? (= T 2) (= O 0))												; Talk
   (proc 18)
   (proc 2)
           (str "I'll prepare for the surgery! You handle" 'br)
   (str "the initial procedure!")
   (proc 15)
   (text-color 4)
   (str "Nurse: P-Procedure...!?")
   (proc 15)
   (proc 19)
   (set-reg 52 #t))
 (seg (? (= T 2) (= O 1))
   (proc 18)
   (proc 2)
           (str "Appendicitis! You know the procedure," 'br)
   (str "right?")
   (proc 15)
   (str "(Talk about getting derailed, I thought I'd wrap" 'br)
   (str "this within the day and go on vacation... But I" 'br)
   (str "can't blow my cover!)")
   (proc 15)
   (proc 2)
           (str "What were you saying there?")
   (proc 15)
   (text-color 4)
   (str "Nurse: Just, uh, I'll do my best!")
   (proc 15)
   ((cmd 209) 0 2)
   (text-frame 3 324 52 379) (text-reset 15)
   (text-frame 4 16 51 303)  (text-reset 15)
   (exec-mem 2816 "EXIT")
   (set-reg 990 #f)
   (mes-jump "b:¥mes¥ns11_06.mes"))
 (seg (? (= T 3) (= O 0))												; Action
   (proc 18)
   (text-color 7)
   (str "I grip her hand tightly. Her hand is super soft...")
   (proc 15)
   (proc 19))
 (seg (? (= T 4) (= O 0))												; Move
   (proc 18)
   (text-color 7)
   (str "Tromp, tromp, tromp... We're on the move!")
   (proc 15)
   (proc 19))
 (seg (? (= T 5) (= O 0))												; Save
   (proc 18)
   (mes-load? "mes¥save.mes")
;  (branch-reg 750 (</> (/ (nop@)) (/ ((cmd 212))))) <- FMT
   (proc 19)
   (set-var B 1)
   (set-var C 1)))