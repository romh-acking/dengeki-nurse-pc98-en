; Dengeki Nurse English Translation - NS11_19.MES
; Translated by Geometrizer
; Edited and commented by trentsignia
; -----Description:-----
; Tanchi and Kirara make it to the operating room, but it's locked...
; --To change for FMT:--
; Henshin...
(mes
 (meta (engine 'ADV) (charset "pc98"))
 (seg*

; 	Compacting code:
; 	Was originally (exec-mem 2816 "SHOW 0,ACCESS 1") (exec-mem 2816 "GET x x x 32 144") (exec-mem 2816 "ACCESS 0") (exec-mem 2816 "VIEW 13 100 45 244,PUT x 13 100,FREE x")

  (define-proc 10 (<> (exec-mem 2816 "SHOW 0,ACCESS 1")))
  (define-proc 11 (<> (exec-mem 2816 "ACCESS 0,VIEW 13 100 45 244")))

; 	Setup continues...

; FMT
; (branch-reg 940 (</> (/
  (exec-mem 2816 "INIT,SHOW 0,ACCESS 1")
  (image-file "b:¥gpc¥ns1_146.gpc") (image-mem 0 0) (exec-mem 2816 "GET 3 0 0 32 144")
  (image-file "gpc¥face_w00.gpc")   (image-mem 0 0) (exec-mem 2816 "GET 20 71 320 8 64")
  (exec-mem 2816 "ACCESS 0")
  (sound '|| 0)
; PC-98
  (sound '|| "uso¥Nurse10.uso")
; FMT
; (sound '|| "Nurse10.fmt")
  (sound '|| 1)
  (image-file "gpc¥aflame01.gpc")   (image-mem 1 3)
  (image-file "b:¥gpc¥ns1_145.gpc") (image-mem 1 3)
  ((cmd 209) 1 2)
  ((cmd 204) 136 137)

; 	Intro begins here...

  (text-frame 3 324 52 379)
  (text-reset 15)
  (proc 2)
      ; Tanchi:
          (str "This is the operating room...")
  (proc 15)
  (proc 3) (exec-mem 2816 "GET 2 0 0 10 96") (proc 4) ; Portrait (Smiling)
  (proc 1)
      ; Kirara:
          (str "Thanks for showing me the way. If you" 'br)
  (str "want, you can wait here.")
  (proc 15)
  (proc 6) ; Clear Portrait
  (proc 2)
      ; Tanchi:
          (str "Wha!? No, I'm going!")
  (proc 15)
  (proc 2)
      ; Tanchi:
          (str "Aw, nuts! The door's locked!")
  (proc 15)
  (proc 19)
; PC-98
  (exec-mem 18944 65535 528 23)
; FMT
; (exec-mem 18944 65535 528 23)) (/ (nop@))))
  
; 	Dialogue trees defined here...

  (loop
; FMT
;  (branch-reg 940 (</> (/ (nop@)) (/ (set-var T 2) (set-var O 2) (seg-call))))
   (exec-mem 24576 1 1 0)
   (text-color 1)
   (text-frame 3 324 52 379)
   (proc 19)
   (branch-var Z
    (</>
; Think
     (/ (nop@) (set-var T 0) (set-var O 0) (seg-call)) ; (set-reg 136 #t)
; Look
     (/ (nop@) (set-var T 1) (set-var O 0) (seg-call)) ; (set-reg 137 #t)
; Talk
     (/
      (if (</>
           (// (? (= 136 #t) (= 137 #t) (= 200 #t) (= 201 #t)) (nop@) (set-var T 2) (set-var O 1) (seg-call))    ; (mes-jump "b:¥mes¥Ns11_20.mes")
           (//                                                 (nop@) (set-var T 2) (set-var O 0) (seg-call))))) ; (set-reg 201 #t)
; Action
     (/ (nop@) (set-var T 3) (set-var O 0) (seg-call)) ; (set-reg 200 #t)
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
     (/ (nop@))))
   (exec-mem 24576 3)))

; 	Text continues here...

 (seg (? (= T 0) (= O 0))												; Think
   (proc 18)
   (text-color 7)
   (str "How on earth are we getting in there? At this" 'br)
   (str "rate, the Minister's gonna get Operated on...")
   (proc 15)
   (text-color 7)
   (str "Ahhhh... If only Takechan-man were here right" 'br)
   (str "now.")
   (proc 15)
   (proc 19)
   (set-reg 136 #t))
 (seg (? (= T 1) (= O 0))												; Look
   (proc 18)
   (text-color 7)
   (str "This door looks pretty sturdy... I don't think I" 'br)
   (str "can break it down easily.")
   (proc 15)
   (text-color 7)
   (str "Dammit... Wish I had a bazooka or a tank.")
   (proc 15)
   (proc 19)
   (set-reg 137 #t))
 (seg (? (= T 2) (= O 0))												; Talk
   (proc 18)
   (proc 2)
       ; Tanchi:
           (str "No good! It's not opening!")
   (proc 15)
   (proc 3) (exec-mem 2816 "GET 2 50 0 10 96") (proc 4) ; Portrait (Confused)
   (proc 1)
       ; Kirara:
           (str "Don't you have a spare key?")
   (proc 15)
   (proc 6) ; Clear Portrait
   (proc 2)
       ; Tanchi:
           (str "If it's locked from the inside, we can't" 'br)
   (str "get in...")
   (proc 15)
   (proc 19)
   (set-reg 201 #t))
 (seg (? (= T 2) (= O 1))
   (proc 18)
   (proc 1)
       ; Kirara:
           (str "Well then, stand back!")
   (proc 15)

; 	Charge ON! PLASMA FLASH!

   (sound '|| 2)
   (exec-mem 2816 "EXIT")
   ((cmd 209) 0 2)
   (sound '|| 0)
; PC-98
   (mes-load? "mes¥chang0.mes")
; FMT
;  (set-var K 1) (mes-jump "mes¥chang0.mes")) (seg (? (= T 2) (= O 2)) (nop@) (set-reg 940 #f)
   (load-mem "cmd¥quakeh.tcm" 6656)
   (exec-mem 2816 "INIT,SHOW 0,ACCESS 1")
   (text-frame 0 0 79 399)
   (text-reset 0)
   (image-file "b:¥gpc¥ns1_146.gpc")  (image-mem 0 0) (exec-mem 2816 "GET 3 0 0 32 144")
   (image-file "b:¥gpc¥ns1_146Z.gpc") (image-mem 0 0) (exec-mem 2816 "ACCESS 0")
   (image-file "gpc¥aflame01.gpc")
; PC-98
   (image-mem 1 3)
; FMT
;  (image-mem 0)
   (image-file "b:¥gpc¥ns1_145.gpc") (image-mem 1 3)
   ((cmd 193) 0 "b:¥gpa¥ns1-146.gpa")
   (text-frame 3 324 52 379)
   (text-reset 15)
   ((cmd 209) 1 2)

   (proc 2)
       ; Tanchi:
           (str "Hey, don't do anything reckless now...")
   (proc 15)

; 	Dengeki Nurse whips out her bazooka...

   (proc 10) (exec-mem 2816 "GET 5 0 0 32 144")     (proc 11) (exec-mem 2816 "PUT 5 13 100,FREE 5")   (delay 20)
   (proc 10) (exec-mem 2816 "GET 7 33 0 32 144")    (proc 11) (exec-mem 2816 "PUT 7 13 100,FREE 7")   (delay 5)
   (proc 10) (exec-mem 2816 "GET 9 0 144 32 144")   (proc 11) (exec-mem 2816 "PUT 9 13 100,FREE 9")   (delay 5)
   (proc 10) (exec-mem 2816 "GET 11 33 144 32 144") (proc 11) (exec-mem 2816 "PUT 11 13 100,FREE 11")

   (proc 0)
       ; Dengeki Nurse:
                  (str "Leave this to a professional! I'm" 'br)
   (str "just gonna flatten it! ...Lightly!")
   (wait)

; 	...And BAM!

   (exec-mem 2816 "VIEW 13 100 46 228,PUT 3 13 100,FREE 3")
   ((cmd 194) 0 "............ｱ...ｲ..ｳ..ｴ..ｵ..ｶ..ｷ")
   ((cmd 195) 0 1)
   (sound '|| 0)
; PC-98
   (sound '|se | 20)
; FMT
;  (sound '|se | 3)
   (delay 80 0)
   (exec-mem 6656 1 0 1 3 0)
   (text-frame 3 324 52 379)
   (text-reset 15)
   (sound '|| 0)
; PC-98
   (sound '|se | 24)
; FMT
;  (sound '|se | 6)
   (text-color 1)
   (text "ＢＬＡＡＡＡＡＡＡＡＡＭ！")
   (proc 15)
   ((cmd 209) 0 2)
   (text-frame 3 324 52 379) (text-reset 15)
   (text-frame 4 16 51 303)  (text-reset 15)
   (exec-mem 2816 "EXIT")
   (set-reg 990 #f)
; FMT
;  (set-reg 941 #f)
   (mes-jump "b:¥mes¥Ns11_20.mes"))
 (seg (? (= T 3) (= O 0))												; Action
   (proc 18)
   (text-color 1)
   (str "ＢＡＮＧ　ＢＡＮＧ　ＢＡＮＧ！" 'br "ＴＡＫ！　ＴＨＵＤ！　ＴＨＵＭＰ！")
   (proc 15)
   (text-color 7)
   (str "No good... The door isn't moving.")
   (proc 15)
   (proc 19)
   (set-reg 200 #t))
 (seg (? (= T 4) (= O 0))												; Move
   (proc 18)
   (text-color 7)
   (str "We've come this far, why are we running now? You" 'br)
   (str "should make up your mind for once!")
   (proc 15)
   (proc 19))
 (seg (? (= T 5) (= O 0))												; Save
   (proc 18)
   (mes-load? "mes¥save.mes")
; FMT
;  (branch-reg 750 (</> (/ (nop@)) (/ ((cmd 212)))))

   (proc 19)
   (set-var B 1)
   (set-var C 1)))