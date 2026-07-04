; Dengeki Nurse English Translation - NS15_10.MES
; Translated by Geometrizer
; Edited and commented by trentsignia
; --Description:--
; Shocking news in hand, Tanchi goes to see Dr. Akiba.
(mes
 (meta (engine 'ADV) (charset "pc98"))
 (seg*

; 	Character portraits:

  (define-proc 10 (<> (proc 3) (exec-mem 2816 "GET 2 10 192 10 96") (proc 4))) ; Dr. Akiba

; 	Setup continues...

  (exec-mem 2816 "INIT,SHOW 0,ACCESS 1")
  (image-file "gpc¥face_w00.gpc")
  (image-mem 0 0)
  (exec-mem 2816 "GET 20 71 320 8 64")
  (exec-mem 2816 "ACCESS 0")
  (sound '|| 0)
  (image-file "gpc¥ns1_k02.gpc")
  (image-mem 1 3)

; 	Intro begins here...

  (text-frame 3 324 52 379)
  (text-reset 15)
  ((cmd 204) 55 59)
  ((cmd 209) 1 2)
  (proc 10) (proc 5)
      ; Dr. Akiba:
             (str "Oh, good timing, Tanchi. I just located")
  (str "Kirara.")
  (proc 15)
  (proc 6) ; Clear portrait
  (proc 2)
      ; Tanchi:
          (str "No way! Tell me where she is!")
  (proc 15)
  (proc 10) (proc 5)
      ; Dr. Akiba:
             (str "What's gotten into you, with all the" 'br)
  (str "frantic gesticulation?")
  (proc 15)
  (proc 6) ; Clear portrait
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
           (// (? (= 58 #t))           (nop@) (set-var T 0) (set-var O 2) (seg-call))    ; (set-reg 59 #t)
           (// (? (= 55 #t) (= 58 #f)) (nop@) (set-var T 0) (set-var O 1) (seg-call))    ; (set-reg 57 #t)
           (//                         (nop@) (set-var T 0) (set-var O 0) (seg-call)))))
; Look
     (/ (nop@) (set-var T 1) (set-var O 0) (seg-call))
; Talk
     (/
      (if (</>
           (// (? (= 59 #t))           (nop@) (set-var T 2) (set-var O 4) (seg-call))    ; (mes-jump "b:¥mes¥ns15_11.mes")
           (// (? (= 58 #t) (= 59 #f)) (nop@) (set-var T 2) (set-var O 3) (seg-call))
           (// (? (= 57 #t) (= 58 #f)) (nop@) (set-var T 2) (set-var O 2) (seg-call))    ; (set-reg 58 #t)
           (// (? (= 55 #t) (= 57 #f)) (nop@) (set-var T 2) (set-var O 1) (seg-call))
           (//                         (nop@) (set-var T 2) (set-var O 0) (seg-call))))) ; (set-reg 55 #t)
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
   (str "I need to tell Kirara as soon as humanly possible,")
   (str "but the Doctor should also know about Mitsuko.")
   (proc 15)
   (proc 19))
 (seg (? (= T 0) (= O 1))
   (proc 18)
   (text-color 7)
   (str "That's unbelievable... If he knew all this time," 'br)
   (str "he should have said something!")
   (proc 15)
   (text-color 7)
   (str "Does he have any idea how badly Kirara wanted to" 'br)
   (str "see her mom? Doesn't he get it at all?")
   (proc 15)
   (proc 19)
   (set-reg 57 #t))
 (seg (? (= T 0) (= O 2))
   (proc 18)
   (text-color 7)
   (str "That's cruel! Totally cruel! Kirara... Kirara..." 'br)
   (str "Is fighting as Dengeki Nurse going to be her life?")
   (proc 15)
   (proc 19)
   (set-reg 59 #t))
 (seg (? (= T 1) (= O 0))												; Look
   (proc 18)
   (text-color 7)
   (str "Doc Akiba is alone in the lab. Croco and Mitsuko" 'br)
   (str "are nowhere to be seen.")
   (proc 15)
   (proc 19))
 (seg (? (= T 2) (= O 0))												; Talk
   (proc 18)
   (proc 2)
       ; Tanchi:
           (str "Doc! I've got massive news!")
   (proc 15)
   (proc 10) (proc 5)
       ; Dr. Akiba:
              (str "Mmm? What is it now?")
   (proc 15)
   (proc 6) ; Clear portrait
   (proc 2)
       ; Tanchi:
           (str "Well, it's like this, and like that, and" 'br)
   (str "blah blah blah...")
   (proc 15)
   (proc 10) (proc 5)
       ; Dr. Akiba:
              (str "I see... Just as I suspected.")
   (proc 15)
   (proc 6) ; Clear portrait
   (proc 2)
       ; Tanchi:
           (str "Suspected WHAT?")
   (proc 15)
   (proc 10) (proc 5)
       ; Dr. Akiba:
              (str "Ever since she arrived at the hospital,")
   (str "I knew I recognized that face...")
   (sound '|| 0)
   (sound '|| "uso¥Nurse11.uso")
   (sound '|| 3)
   (proc 15)
   (proc 6) ; Clear portrait
   (proc 19)
   (set-reg 55 #t))
 (seg (? (= T 2) (= O 1))
   (proc 18)
   (proc 10) (proc 5)
       ; Dr. Akiba:
              (str "Not only that, she brought my favorite" 'br)
   (str "okonomiyaki...")
   (proc 15)
   (proc 6) ; Clear portrait
   (proc 19))
 (seg (? (= T 2) (= O 2))
   (proc 18)
   (proc 2)
       ; Tanchi:
           (str "W-Why didn't you say anything?")
   (proc 15)
   (proc 10) (proc 5)
       ; Dr. Akiba:
              (str "Well, she chose to keep it a secret. I" 'br)
   (str "supposed that she had her reasons...")
   (proc 15)
   (proc 6) ; Clear portrait
   (proc 2)
       ; Tanchi:
           (str "Oh, come on!")
   (proc 15)
   (proc 2)
       ; Tanchi:
           (str "Do you have any idea how long Kirara has" 'br)
   (str "been searching for her mom?")
   (proc 15)
   (proc 10) (proc 5)
       ; Dr. Akiba:
              (str "There are many things Kirara still has" 'br)
   (str "to accomplish.")
   (proc 15)
   (proc 6) ; Clear portrait
   (proc 19)
   (set-reg 58 #t))
 (seg (? (= T 2) (= O 3))
   (proc 18)
   (proc 10) (proc 5)
       ; Dr. Akiba:
              (str "And like it or not, fighting is one of" 'br)
   (str "those things...")
   (proc 15)
   (proc 6) ; Clear portrait
   (proc 19))
 (seg (? (= T 2) (= O 4))
   (proc 18)
   (proc 2)
       ; Tanchi:
           (str "So to hell with Kirara's feelings, is that")
   (str "it?")
   (proc 15)
   (proc 10) (proc 5)
       ; Dr. Akiba:
              (str ".........")
   (proc 15)
   (proc 6) ; Clear portrait
   (proc 2)
       ; Tanchi:
           (str "Tell me where she is!")
   (proc 15)
   (proc 10) (proc 5)
       ; Dr. Akiba:
              (str "She's at the pachinko parlor by the" 'br)
   (str "station, UN International Hall.")
   (proc 15)
   (proc 6) ; Clear portrait
   (proc 2)
       ; Tanchi:
           (str "I'm gonna go get her! Please call Mitsuko!")
   (proc 15)
   (proc 10) (proc 5)
       ; Dr. Akiba:
              (str ".........")
   (proc 15)
   ((cmd 209) 0 2)
   (proc 6) ; Clear portrait
   (text-frame 3 324 52 379) (text-reset 15)
   (text-frame 4 16 51 303)  (text-reset 15)
   (exec-mem 2816 "EXIT")
   (sound '|| 2)
   (set-reg 990 #f)
   (mes-jump "b:¥mes¥ns15_11.mes"))
 (seg (? (= T 3) (= O 0))												; Action
   (proc 18)
   (text-color 7)
   (str "If I dork around with the equipment, it'll" 'br)
   (str "discharge. This room is the opposite of safe!")
   (proc 15)
   (proc 19))
 (seg (? (= T 4) (= O 0))												; Move
   (proc 18)
   (text-color 7)
   (str "He still hasn't told me where Kirara is!")
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