(mes
 (meta (engine 'ADV) (charset "pc98"))
 (seg*

; 	Character portraits:

  (define-proc 10 (<> (proc 3) (exec-mem 2816 "GET 2 10 0 10 96") (proc 4))) ; Happy
  (define-proc 11 (<> (proc 3) (exec-mem 2816 "GET 2 20 0 10 96") (proc 4))) ; Sad
  (define-proc 12 (<> (proc 3) (exec-mem 2816 "GET 2 70 0 10 96") (proc 4))) ; Flushed

; 	Setup continues...

  (sound '|| 0)
  (sound '|| "uso¥Nurse04.uso")
  (sound '|| 1)
  (exec-mem 2816 "INIT,SHOW 0,ACCESS 1")
  (image-file "gpc¥face_w00.gpc")
  (image-mem 0 0)
  (exec-mem 2816 "GET 20 71 320 8 64")
  (exec-mem 2816 "ACCESS 0")
  (text-frame 4 16 51 303)
  (text-reset 1)

; 	Intro begins here...

  (text-frame 3 324 52 379)
  (text-reset 15)
  ((cmd 204) 87 93)
  ((cmd 209) 1 2)
  (text-color 7)
  (str "It's pitch black...")
  (proc 15)
  (text-color 7)
  (str "I can't see anything...")
  (proc 15)
  (proc 2)
          (str "Kirara! Are you okay?")
  (proc 15)
  (proc 10)	; Happy
  (proc 0)
                 (str "All good here! It's super dark," 'br)
  (str "though.")
  (proc 15)
  (proc 6)
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
     (/ (nop@) (set-var T 0) (set-var O 0) (seg-call))
; Look
     (/ (nop@) (set-var T 1) (set-var O 0) (seg-call))
; Talk
     (/
      (if (</>
           (// (? (= 87 #t) (= 88 #t)) (nop@) (set-var T 2) (set-var O 1) (seg-call))
           (//                         (nop@) (set-var T 2) (set-var O 0) (seg-call)))))
; Action
     (/
      (if (</>
           (// (? (= 89 #t))           (nop@) (set-var T 3) (set-var O 1) (seg-call))
           (//                         (nop@) (set-var T 3) (set-var O 0) (seg-call)))))
; Move
     (/
      (if (</>
           (// (? (= 93 #t))           (nop@) (set-var T 4) (set-var O 4) (seg-call))
           (// (? (= 92 #t) (= 93 #f)) (nop@) (set-var T 4) (set-var O 3) (seg-call))
           (// (? (= 91 #t) (= 92 #f)) (nop@) (set-var T 4) (set-var O 2) (seg-call))
           (// (? (= 90 #t) (= 91 #f)) (nop@) (set-var T 4) (set-var O 1) (seg-call))
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
   (str "Anyway, we have to find Nursia!")
   (proc 15)
   (proc 19)
   (set-reg 88 #t))
 (seg (? (= T 1) (= O 0))												; Look
   (proc 18)
   (text-color 7)
   (str "It's too dark to see anything... Moving around in" 'br)
   (str "the dark can cause extreme psychological anxiety!")
   (proc 15)
   (proc 19))
 (seg (? (= T 2) (= O 0))												; Talk
   (proc 18)
   (proc 2)
           (str "Kirara, let's hold hands so we don't lose" 'br)
   (str "each other.")
   (proc 15)
   (proc 12)	; Flushed
   (proc 0)
                  (str "Huh? Oh, okay...")
   (proc 15)
   (proc 6)
   (proc 19)
   (set-reg 87 #t))
 (seg (? (= T 2) (= O 1))
   (proc 18)
   (proc 2)
           (str "I wonder if Nursia is okay...")
   (proc 15)
   (proc 11)	; Sad
   (proc 0)
                  (str "I'm worried...")
   (proc 15)
   (proc 6)
   (proc 19))
 (seg (? (= T 3) (= O 0))												; Action
   (proc 18)
   (text-color 7)
   (str "I feel my way along the wall.")
   (proc 15)
   (branch-random
    (</>
     (/
      (proc 12)	; Flushed
      (proc 0)
                     (str "Hey! Watch those hands!")
      (proc 15)
      (proc 6)
      (proc 2)
              (str "Sorry... It wasn't on purpose, I" 'br)
      (str "swear..."))
     (/
      (exec-mem 2816 "GET 1 5 23 10 96")
      (exec-mem 2816 "SHOW 0,ACCESS 1")
      (exec-mem 2816 "GET 2 30 0 10 96") ; Angry
      (exec-mem 2816 "ACCESS 0")
      (exec-mem 2816 "VIEW 5 23 15 120,PUT 2 5 23,FREE 2")
      (proc 0)
                     (str "Ow! What are you doing!?")
      (proc 15)
      (proc 6)
      (proc 2)
              (str "Ha...hahahaha..."))
     (/
      (proc 10)	; Happy
      (proc 0)
                     (str "Eeeeek! That tickles!")
      (proc 15)
      (proc 6)
      (proc 2)
              (str "Whuh? That's weird..."))))
   (proc 15)
   (proc 19))
 (seg (? (= T 3) (= O 1))
   (proc 18)
   (text-color 7)
   (str "I feel my way along the wall.")
   (proc 15)
   (text-color 7)
   (str "Huh... What's this here?")
   (proc 15)
   (text-color 7)
   (str "My fingers brush against something like a" 'br)
   (str "switch...")
   (proc 15)
   (sound '|| 0)
   (sound '|se | 20)
   (text-color 1)
   (str "Swooshwswooshswoosh!")
   (proc 15)
   ((cmd 209) 0 2)
   (text-frame 4 16 51 303)
   (text-reset 15)
   (text-frame 3 324 52 379)
   (text-reset 15)
   (exec-mem 2816 "EXIT")
   (set-reg 990 #f)
   (mes-jump "b:¥mes¥Ns15_18.mes"))
 (seg (? (= T 4) (= O 0))												; Move
   (proc 18)
   (text-color 7)
   (str "We need to keep moving forward.")
   (proc 15)
   (text-color 7)
   (str "It's pitch black and I can't see a thing.")
   (proc 15)
   (proc 19)
   (set-reg 90 #t))
 (seg (? (= T 4) (= O 1))
   (proc 18)
   (text-color 7)
   (str "We move forward.")
   (proc 15)
   (proc 10)	; Happy
   (proc 0)
                  (str "How far is this gonna go," 'br)
   (str "seriously?")
   (proc 15)
   (proc 6)
   (proc 19)
   (set-reg 91 #t))
 (seg (? (= T 4) (= O 2))
   (proc 18)
   (text-color 7)
   (str "We move forward.")
   (proc 15)
   (proc 11)	; Sad
   (proc 0)
                  (str "I'm getting an icky feeling about" 'br)
   (str "this...")
   (proc 15)
   (proc 6)
   (proc 19)
   (set-reg 92 #t))
 (seg (? (= T 4) (= O 3))
   (proc 18)
   (text-color 7)
   (str "We keep moving.")
   (proc 15)
   (proc 3)
   (exec-mem 2816 "GET 2 40 0 10 96") ; Shocked
   (proc 4)
   (proc 0)
                  (str "Ahhhhhhhhhhh!")
   (proc 15)
   (proc 6)
   (proc 2)
           (str "What's wrong?")
   (proc 15)
   (proc 10)	; Happy
   (proc 0)
                  (str "Oh, nothing.")
   (proc 15)
   (proc 6)
   (proc 2)
           (str ".........")
   (proc 15)
   (proc 19)
   (set-reg 93 #t))
 (seg (? (= T 4) (= O 4))
   (proc 18)
   (text-color 1)
   (str "Whack!")
   (proc 15)
   (text-color 7)
   (str "Ow...")
   (proc 15)
   (text-color 7)
   (str "Looks like we hit a dead end.")
   (proc 15)
   (proc 19)
   (set-reg 89 #t))
 (seg (? (= T 5) (= O 0))												; Save
   (proc 18)
   (mes-load? "mes¥save.mes")
; FMT
;  (branch-reg 750 (</> (/ (nop@)) (/ ((cmd 212)))))

   (proc 19)
   (set-var B 5)
   (set-var C 5)))