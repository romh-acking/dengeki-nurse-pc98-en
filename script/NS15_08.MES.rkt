; Dengeki Nurse English Translation - NS15_08.MES
; Translated by Geometrizer
; Edited and commented by trentsignia
; --Description:--
; With Nursia kidnapped and Kirara heartbroken, the rest regroup in Dr. Akiba's office.
(mes
 (meta (engine 'ADV) (charset "pc98"))
 (seg*
  (define-proc 10 (<> (text-color 5) (str "Yukikoji: ")))
  (define-proc 11 (<> (text-color 11) (str "Croco: ")))
  (sound '|| 0)
  (exec-mem 2816 "INIT,SHOW 0,ACCESS 1")
  (text-frame 0 0 79 399)
  (text-reset 0)
  (image-file "b:¥gpc¥ns1_517.gpc") (image-mem 0 0) (exec-mem 2816 "GET 10 0 0 24 144")
  (image-file "gpc¥face_w00.gpc")   (image-mem 0 0) (exec-mem 2816 "GET 20 71 320 8 64")
  (exec-mem 2816 "ACCESS 0")
  (image-file "gpc¥ns1_k07a.gpc")   (image-mem 1 3)
  (image-file "gpc¥ns1_k09.gpc")    (image-mem 1 0)
  (image-file "b:¥gpc¥ns1_516.gpc") (image-mem 1 3)

; 	Intro begins here...

  (text-frame 3 324 52 379)
  (text-reset 15)
  ((cmd 204) 43 49)
  ((cmd 209) 1 2)
  (proc 2)
      ; Tanchi:
          (str "I'm...truly sorry...")
  (proc 15)
  (proc 10)
            (str "Don't blame yourself. We're just as much")
   (str "to blame.")
  (proc 15)
  (proc 5)
      ; Dr. Akiba:
             (str "To think that even the Black Cross was" 'br)
   (str "after her...")
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
           (// (? (= 45 #t))           (nop@) (set-var T 0) (set-var O 3) (seg-call))
           (// (? (= 44 #t) (= 45 #f)) (nop@) (set-var T 0) (set-var O 2) (seg-call))
           (// (? (= 43 #t) (= 44 #f)) (nop@) (set-var T 0) (set-var O 1) (seg-call))
           (//                         (nop@) (set-var T 0) (set-var O 0) (seg-call)))))
; Look
     (/
      (if (</>
           (// (? (= 44 #t))           (nop@) (set-var T 1) (set-var O 2) (seg-call))
           (// (? (= 46 #t) (= 44 #f)) (nop@) (set-var T 1) (set-var O 1) (seg-call))
           (//                         (nop@) (set-var T 1) (set-var O 0) (seg-call)))))
; Talk
     (/
      (if (</>
           (// (? (= 48 #t) (= 49 #t)) (nop@) (set-var T 2) (set-var O 4) (seg-call))
           (// (? (= 45 #t))           (nop@) (set-var T 2) (set-var O 3) (seg-call))
           (// (? (= 44 #t) (= 45 #f)) (nop@) (set-var T 2) (set-var O 2) (seg-call))
           (// (? (= 47 #t) (= 44 #f)) (nop@) (set-var T 2) (set-var O 1) (seg-call))
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
   (str "No matter what anyone says, the responsibility" 'br)
   (str "lies solely with me... But is Nursia safe...?")
   (proc 15)
   (proc 19))
 (seg (? (= T 0) (= O 1))
   (proc 18)
   (text-color 7)
   (str "Once the Black Cross gets their hands on the" 'br)
   (str "treasure, Nursia's safety is no longer a" 'br)
   (str "concern... And she's sick, on top of that...")
   (proc 15)
   (proc 19)
   (set-reg 47 #t))
 (seg (? (= T 0) (= O 2))
   (proc 18)
   (text-color 7)
   (str "To me, the treasure means nothing. All I want is" 'br)
   (str "for Nursia to come back to us safe.")
   (proc 15)
   (proc 19))
 (seg (? (= T 0) (= O 3))
   (proc 18)
   (text-color 7)
   (str "Kirara... Where did she go...?")
   (proc 15)
   (text-color 7)
   (str "No... I'm at fault for relying on Kirara too much.")
   (proc 15)
   (proc 19)
   (set-reg 49 #t))
 (seg (? (= T 1) (= O 0))												; Look
   (proc 18)
   (text-color 7)
   (str "Yukikoji-san looks just as calm as when she" 'br)
   (str "arrived. Isn't she worried about Nursia?")
   (proc 15)
   (proc 19))
 (seg (? (= T 1) (= O 1))
   (proc 18)
   (text-color 7)
   (str "I look at the ring. It bears the crest of" 'br)
   (str "Elektros.")
   (proc 15)
   (proc 5)
       ; Dr. Akiba:
              (str "I should probably hold on to that ring" 'br)
   (str "for now.")
   (proc 15)
   (text-color 7)
   (str "I hand the ring over to Doc Akiba, who places it" 'br)
   (str "in his desk drawer.")
   (proc 15)
   (sound '|| 0)
   (sound '|se | 23)
   (text-color 1)
   (str "Ring ring, ring ring...")
   (proc 15)
   (text-color 7)
   (str "The phone starts to ring.")
   (proc 15)
   (sound '|| 0)
   (proc 5)
       ; Dr. Akiba:
              (str "Yes, this is Doctor Akihabara speaking.")
   (proc 15)
   (exec-mem 2816 "GET 9 16 93 40 237")
   (exec-mem 2816 "VIEW 16 93 40 237,PUT 10 16 93,FREE 10")
   (proc 7)
       ; Black Nurse:
                (str "Hi, this is Black Nurse. Sorry to" 'br)
   (str "trouble you during working hours.")
   (proc 15)
   (proc 5)
       ; Dr. Akiba:
              (str "What can I do for you?")
   (proc 15)
   (proc 7)
       ; Black Nurse:
                (str "Is Tanchi Denpa there?")
   (proc 15)
   (proc 5)
       ; Dr. Akiba:
              (str "Oh yes, he's right here, please hold...")
   (str "Hey Tanchi, Black Nurse") (text "−") (str " Woah!")
   (proc 15)
   (sound '|| 0)
   (sound '|| "uso¥Nurse10.uso")
   (sound '|| 1)
   (proc 2)
       ; Tanchi:
           (str "Hey!!! Where the hell are you? What did" 'br)
   (str "you do with Nursia?")
   (proc 15)
   (proc 7)
       ; Black Nurse:
                (str "Now now, no need to go all huffy on" 'br)
   (str "me.")
   (proc 15)
   (proc 2)
       ; Tanchi:
           (str "Give Nursia back!")
   (proc 15)
   (proc 7)
       ; Black Nurse:
                (str "She's all yours...but only in" 'br)
   (str "exchange for the ring you have.")
   (proc 15)
   (proc 2)
       ; Tanchi:
           (str "What do you want us to do!?")
   (proc 15)
   (proc 7)
       ; Black Nurse:
                (str "Get it delivered to the ruins of" 'br)
   (str "Elektros, if you'd be so kind.")
   (proc 15)
   (proc 2)
       ; Tanchi:
           (str "Fine! I'm on my way, but don't you dare" 'br)
   (str "lay a hand on Nursia!")
   (proc 15)
   (proc 7)
       ; Black Nurse:
                (str "Oh, but I don't want you to come" 'br)
   (str "over, though.")
   (proc 15)
   (proc 2)
       ; Tanchi:
           (str "Say what!?")
   (proc 15)
   (proc 7)
       ; Black Nurse:
                (str "Tell Dengeki Nurse to come in your" 'br)
   (str "stead.")
   (proc 15)
   (proc 2)
       ; Tanchi:
           (str "Why!?")
   (proc 15)
   (proc 7)
       ; Black Nurse:
                (str "Because I said so.")
   (proc 15)
   (exec-mem 2816 "VIEW 16 93 40 237,PUT 9 16 93,FREE 9")
   (text-color 1)
   (str "Click!")
   (proc 15)
   (proc 19)
   (set-reg 44 #t))
 (seg (? (= T 1) (= O 2))
   (proc 18)
   (text-color 7)
   (str "I look around the room. Kirara is nowhere to be" 'br)
   (str "seen...")
   (proc 15)
   (proc 19))
 (seg (? (= T 2) (= O 0))												; Talk
   (proc 18)
   (proc 2)
       ; Tanchi:
           (str "Is Nursia really going to be all right?")
   (proc 15)
   (proc 10)
             (str "Nursia is the least of their concerns." 'br)
   (str "What they want is the treasure and nothing more.")
   (proc 15)
   (proc 19)
   (set-reg 43 #t))
 (seg (? (= T 2) (= O 1))
   (proc 18)
   (proc 2)
       ; Tanchi:
           (str "But once they get it...")
   (proc 15)
   (proc 10)
             (str "They'll need the ring if they want to" 'br)
   (str "get it.")
   (proc 15)
   (proc 19)
   (set-reg 46 #t))
 (seg (? (= T 2) (= O 2))
   (proc 18)
   (proc 2)
       ; Tanchi:
           (str "Dammit...")
   (proc 15)
   (proc 5)
       ; Dr. Akiba:
              (str "Regardless, we need to get Kirara.")
   (proc 15)
   (proc 11)
           (str "She's not here, Wani! And hasn't been for" 'br)
   (str "a while, Wani!")
   (proc 15)
   (proc 2)
       ; Tanchi:
           (str "......")
   (proc 15)
   (proc 5)
       ; Dr. Akiba:
              (str "That's odd... Did I miss something?")
   (proc 15)
   (proc 19)
   (set-reg 45 #t))
 (seg (? (= T 2) (= O 3))
   (proc 18)
   (proc 2)
       ; Tanchi:
           (str "I'm sorry... I lost my temper earlier..." 'br)
   (str "And scolded her pretty badly...")
   (proc 15)
   (proc 5)
       ; Dr. Akiba:
              (str "I see... Ahh, what a pickle.")
   (proc 15)
   (proc 19)
   (set-reg 48 #t))
 (seg (? (= T 2) (= O 4))
   (proc 18)
   (proc 2)
       ; Tanchi:
           (str "I'll go to the Elektros ruins myself!")
   (proc 15)
   (proc 5)
       ; Dr. Akiba:
              (str "No no no. That would be a death" 'br)
   (str "sentence!")
   (proc 15)
   (proc 11)
           (str "Yah, Wani!")
   (proc 15)
   (proc 5)
       ; Dr. Akiba:
              (str "In any case, we're going to need to" 'br)
   (str "locate Kirara and have her go...")
   (proc 15)
   (proc 2)
       ; Tanchi:
           (str "............")
   (proc 15)
   (proc 5)
       ; Dr. Akiba:
              (str "I'll try using my Plasma Searcher to" 'br)
   (str "locate her electromagnetic signature.")
   (proc 15)
   (proc 5)
       ; Dr. Akiba:
              (str "You can go turn the hospital upside" 'br)
   (str "down to find her.")
   (proc 15)
   (proc 2)
       ; Tanchi:
           (str "Y-Yes...")
   (proc 15)
   ((cmd 209) 0 2)
   (text-frame 3 324 52 379) (text-reset 15)
   (text-frame 4 16 51 303)  (text-reset 15)
   (exec-mem 10752 "EXIT")
   (exec-mem 2816 "EXIT")
   (sound '|| 2)
   (set-reg 990 #f)
   (mes-jump "b:¥mes¥ns15_09.mes"))
 (seg (? (= T 3) (= O 0))												; Action
   (proc 18)
   (text-color 7)
   (str "Now's not the time to mess around.")
   (proc 15)
   (proc 19))
 (seg (? (= T 4) (= O 0))												; Move
   (proc 18)
   (proc 5)
       ; Dr. Akiba:
              (str "Don't panic, son. In times like this," 'br)
   (str "rational thought conquers all.")
   (proc 15)
   (proc 19))
 (seg (? (= T 5) (= O 0))												; Save
   (proc 18)
   (mes-load? "mes¥save.mes")
; FMT
;  (branch-reg 750 (</> (/ (nop@)) (/ ((cmd 212)))))

;  (define-proc 10 (<> (text-color 5)  (str "Yukikoji: ")))
;  (define-proc 11 (<> (text-color 11) (str "Croco: ")))
   (proc 19)
   (set-var B 5)
   (set-var C 5)))