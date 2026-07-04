; Dengeki Nurse English Translation - NS15_03.MES
; Translated by Geometrizer
; Edited and commented by trentsignia
; --Description:--
; Back at the cafeteria...
(mes
 (meta (engine 'ADV) (charset "pc98"))
 (seg*
; (define-proc 10 (<> (proc 3) (exec-mem 2816 "GET 2 0 192 10 96") (proc 4) (text-color 11) (str "Croco: "))) <--- Only used once

; 	Character portraits:

  (define-proc 11 (<> (proc 3) (exec-mem 2816 "GET 2 0 96 10 96") (proc 4))) ; Aloof

; 	Dr. Akiba portrait:

  (define-proc 12 (<> (exec-mem 2816 "GET 1 40 23 10 96") (exec-mem 2816 "SHOW 0,ACCESS 1") (exec-mem 2816 "GET 2 10 192 10 96")))
  (define-proc 13 (<> (exec-mem 2816 "ACCESS 0") (exec-mem 2816 "VIEW 40 23 50 120,PUT 2 40 23,FREE 2")))
  (define-proc 14 (<> (exec-mem 2816 "VIEW 40 23 50 120,PUT 1 40 23,FREE 1")))

; 	Setup continues...

  (exec-mem 2816 "INIT,SHOW 0,ACCESS 1")
  (image-file "gpc¥face_w00.gpc")
  (image-mem 0 0)
  (exec-mem 2816 "GET 20 71 320 8 64")
  (exec-mem 2816 "ACCESS 0")
  (sound '|| 0)
  (sound '|| "uso¥Nurse08.uso")
  (sound '|| 1)
  (image-file "gpc¥aflame01.gpc")   (image-mem 1 3)
  (image-file "gpc¥ns1_k10.gpc")    (image-mem 1 0)
  (image-file "b:¥gpc¥ns1_504.gpc") (image-mem 1 3)

; 	Intro begins here...

  (text-frame 3 324 52 379)
  (text-reset 15)
  ((cmd 209) 1 2)
  ((cmd 204) 16 20)
  (text #:col 1 'br)
  (text "　　　−") (str "Dentendo Hospital Staff Cafeteria") (text "−")
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
           (// (? (= 17 #t))           (nop@) (set-var T 0) (set-var O 2) (seg-call))    ; (set-reg 20 #t)
           (// (? (= 16 #t) (= 17 #f)) (nop@) (set-var T 0) (set-var O 1) (seg-call))    ; (set-reg 18 #t)
           (//                         (nop@) (set-var T 0) (set-var O 0) (seg-call)))))
; Look
     (/ (nop@) (set-var T 1) (set-var O 0) (seg-call))
; Talk
     (/
      (if (</>
           (// (? (= 19 #t) (= 20 #t)) (nop@) (set-var T 2) (set-var O 4) (seg-call))    ; (mes-jump "b:¥mes¥ns15_04.mes")
           (// (? (= 17 #t))           (nop@) (set-var T 2) (set-var O 3) (seg-call))    ; (set-reg 19 #t)
           (// (? (= 18 #t) (= 17 #f)) (nop@) (set-var T 2) (set-var O 2) (seg-call))    ; (set-reg 17 #t)
           (// (? (= 16 #t) (= 18 #f)) (nop@) (set-var T 2) (set-var O 1) (seg-call))
           (//                         (nop@) (set-var T 2) (set-var O 0) (seg-call))))) ; (set-reg 16 #t)
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
   (str "I just got back from taking that phone call. I" 'br)
   (str "need to tell Doc Akiba what that was all about.")
   (proc 15)
   (proc 19))
 (seg (? (= T 0) (= O 1))
   (proc 18)
   (text-color 7)
   (str "Hmm... Explaining the girl situation is going to" 'br)
   (str "be tricky. I've got to roll things back 2000 years")
   (str "to talk about an ancient legend...")
   (proc 15)
   (text-color 7)
   (str "But unless I bring it all up now, the problem will")
   (str "just compound if something pops off later...")
   (proc 15)
   (proc 19)
   (set-reg 18 #t))
 (seg (? (= T 0) (= O 2))
   (proc 18)
   (text-color 7)
   (str "Kirara... Why is she acting so prickly? She was" 'br)
   (str "just laughing her head off about F1 a minute" 'br)
   (str "ago...")
   (proc 15)
   (text-color 7)
   (str "Geez...")
   (proc 15)
   (text-color 7)
   (str "I'll never understand women, I'll tell you that!")
   (proc 15)
   (proc 19)
   (set-reg 20 #t))
 (seg (? (= T 1) (= O 0))												; Look
   (proc 18)
   (text-color 7)
   (str "Kirara's still eating her B Lunch. She's no good" 'br)
   (str "at chopsticks.")
   (proc 15)
   (text-color 7)
   (str "Croco's on a diet. Why's she even in the cafeteria")
   (str "in the first place?")
   (proc 15)
   (proc 19))
 (seg (? (= T 2) (= O 0))												; Talk
   (proc 18)
   (proc 12) (proc 13) (proc 5)
       ; Dr. Akiba:
              (str "What was the phone call about?")
   (proc 15)
   (proc 14) ; Clear right portrait
   (proc 2)
       ; Tanchi:
           (str "Well... A patient is transferring in from" 'br)
   (str "Germany...")
   (proc 15)
   (proc 12) (proc 13) (proc 5)
       ; Dr. Akiba:
              (str "That's a bit sudden.")
   (proc 15)
   (proc 14) ; Clear right portrait
   (proc 2)
       ; Tanchi:
           (str "Well, apparently it's an incurable" 'br)
   (str "disease...")
   (proc 15)
   (proc 12) (proc 13) (proc 5)
       ; Dr. Akiba:
              (str "Why our hospital in particular, though?")
   (proc 15)
   (proc 14) ; Clear right portrait
   (proc 2)
       ; Tanchi:
           (str "When I was doing my physician's training" 'br)
   (str "in Germany, I, er, met a girl while I was there...")
   (proc 15)
   (proc 12) (proc 13) (proc 5)
       ; Dr. Akiba:
              (str "So when is she arriving?")
   (proc 15)
   (proc 14) ; Clear right portrait
   (proc 2)
       ; Tanchi:
           (str "Well, since she just called... Maybe about")
   (str "thirty minutes?")
   (proc 15)
   (proc 12) (proc 13) (proc 5)
       ; Dr. Akiba:
              (str "Thirty minutes!? That's fast!")
   (proc 15)
   (proc 14) ; Clear right portrait
   (proc 19)
   (set-reg 16 #t))
 (seg (? (= T 2) (= O 1))
   (proc 18)
   (proc 12) (proc 13) (proc 5)
       ; Dr. Akiba:
              (str "To get here from Germany in a half-" 'br)
   (str "hour... She must be in the care of International" 'br)
   (str "Rescue!")
   (proc 15)
   (proc 14) ; Clear right portrait
   (proc 19))
 (seg (? (= T 2) (= O 2))
   (proc 18)
   (proc 2)
       ; Tanchi:
           (str "Well, how do I put it... She's something" 'br)
   (str "of a VIP.")
   (proc 15)
   (proc 12) (proc 13) (proc 5)
       ; Dr. Akiba:
              (str "Say again??")
   (proc 15)
   (proc 14) ; Clear right portrait
   (proc 2)
       ; Tanchi:
           (str "Erm, listen, do you know the legend of the")
   (str "Elektros?")
   (proc 15)
   (proc 3) (exec-mem 2816 "GET 2 0 192 10 96") (proc 4) ; Croco portrait
   (text-color 11)
   (str "Croco: I know it, waniiiii!")
   (proc 15)
   (proc 6) ; Clear left portrait
   (proc 12) (proc 13) (proc 5)
       ; Dr. Akiba:
              (str "Oh, you mean the lost kingdom of gold!")
   (proc 15)
   (proc 14) ; Clear right portrait
   (proc 2)
       ; Tanchi:
           (str "So yeah, Nursia...her name is Nursia...")
   (proc 15)
   (proc 2)
       ; Tanchi:
           (str "She's the last surviving descendant of the")
   (str "Elektros royal family.")
   (proc 15)
   (proc 12) (proc 13) (proc 5)
       ; Dr. Akiba:
              (str "Is it okay for her to be here!? Isn't" 'br)
   (str "every criminal organization on the planet trying" 'br)
   (str "to get their hands on her?")
   (proc 15)
   (proc 14) ; Clear right portrait
   (proc 2)
       ; Tanchi:
           (str "Well, yes, kind of. But Kirara's here, so" 'br)
   (str "that probably acts as a counter...")
   (proc 15)
   (proc 11) ; Portrait (Aloof)
   (proc 1)
       ; Kirara:
           (str "Hey, don't you go dragging me into this!")
   (proc 15)
   (proc 6) ; Clear left portrait
   (proc 19)
   (set-reg 17 #t))
 (seg (? (= T 2) (= O 3))
   (proc 18)
   (proc 2)
       ; Tanchi:
           (str "Kirara, why're you so cranky?")
   (proc 15)
   (proc 11) ; Portrait (Aloof)
   (proc 1)
       ; Kirara:
           (str "I'm NOT cranky!")
   (proc 15)
   (proc 6) ; Clear left portrait
   (proc 19)
   (set-reg 19 #t))
 (seg (? (= T 2) (= O 4))
   (proc 18)
   (proc 2)
       ; Tanchi:
           (str "Spill the beans, Kirara, what's wrong?")
   (proc 15)
   (proc 3) (exec-mem 2816 "GET 2 30 0 10 96") (proc 4) ; Portrait (Angry)
   (proc 1)
       ; Kirara:
           (str "I told you, nothing's wrong whatsoever!")
   (proc 15)
   (proc 6) ; Clear left portrait
   (text-color 1)
   (str "Bing Bong Bing Pwoong...")
   (proc 15)
   (text-color 1)
   (str "Announcement: Dr. Tanchi Denpa, your guest has" 'br)
   (str "arrived. Please report to the courtyard" 'br)
   (str "immediately.")
   (proc 15)
   (proc 2)
       ; Tanchi:
           (str "Look like she's arrived.")
   (proc 15)
   (proc 12) (proc 13) (proc 5)
       ; Dr. Akiba:
              (str "Let's all go meet her!")
   (proc 15)
   ((cmd 209) 0 2)
   (text-frame 3 324 52 379) (text-reset 15)
   (text-frame 4 16 51 303)  (text-reset 15)
   (exec-mem 2816 "EXIT")
   (sound '|| 2)
   (set-reg 990 #f)
   (mes-jump "b:¥mes¥ns15_04.mes"))
 (seg (? (= T 3) (= O 0))												; Action
   (proc 18)
   (text-color 7)
   (str "Kirara looks to be in a foul mood. If I touch her" 'br)
   (str "butt right now, she might destroy me with a Plasma")
   (str "Flash!")
   (proc 15)
   (proc 19))
 (seg (? (= T 4) (= O 0))												; Move
   (proc 18)
   (text-color 7)
   (str "I just got back, better scarf down my lunch...")
   (proc 15)
   (proc 19))
 (seg (? (= T 5) (= O 0))												; Save
   (proc 18)
   (mes-load? "mes¥save.mes")
; FMT
;  (branch-reg 750 (</> (/ (nop@)) (/ ((cmd 212)))))
;  (define-proc 10 (<> (proc 3) (exec-mem 2816 "GET 2 0 192 10 96") (proc 4) (text-color 11) (str "Croco: ")))
   (proc 19)
   (set-var B 5)
   (set-var C 5)))