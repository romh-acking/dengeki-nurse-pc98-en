; Dengeki Nurse English Translation - NS_MENU.MES
; Translated by Geometrizer
; Edited and commented by trentsignia
; --Description:--
; Main menu.
; The Omake (Bonus) Mode is only accessible after completing the game.
(mes
 (meta (engine 'ADV) (charset "pc98"))
 (seg (? (= R 0))
   (flag-load 5 3)
   ((cmd 204) 1000 1006)
   ((cmd 199) 6)
   (if (</>
        (//
         (?
          (= 1000 #f)
          (= 1001 #f)
          (= 1002 #f)
          (= 1003 #f)
          (= 1004 #f)
          (= 1005 #f)
          (= 1006 #f))
         (nop@)
         (set-reg 990 #f))
        (// (nop@) (set-reg 990 #t))))
   (exec-mem 2816 "INIT,SHOW 0,ACCESS 1")
   (image-file "gpc¥Waku1.gpc") (image-mem 0 0)
   (exec-mem 2816 "GET 10 56 16 22 160")
   (image-file "gpc¥Waku2.gpc") (image-mem 0 0)
   (exec-mem 2816 "GET 12 1 313 54 78")
   (exec-mem 2816 "ACCESS 0")
   (image-file "gpc¥Ns0506B.GPC") (image-mem 1 3)
   (exec-mem 2816 "VIEW 56 16 77 175,PUT 10 56 16")
   ((cmd 209) 1 3)

; 	Main menu options (text box is 14 half-width characters wide)

   (loop
    (set-var T 0)
    (text-frame 58 24 75 168)
    (text-reset 15)
    (menu1
     60 40
     60 70
     60 100
     60 130
     60 160
     (</>
      (/ (text-color 1) (str " Information  "))
      (/ (text-color 1) (str "   New Game   "))
      (/ (set-reg 990 #t)
         (text-color 1) (str "   Continue   "))
      (/ (text-color 1) (str "  Bonus Mode  "))))
    (sound '|| 0)

; 	Info menu options (18 wide)

    (branch-var S
     (</>
      (/
       (set-var T 0)
       (text-frame 58 24 75 168)
       (text-reset 15)
       (text-frame 57 24 76 168)
       (menu1
        58 42
        58 72
        58 102
        58 132
        58 162
        (</>
         (/ (text-color 1) (str "Hard Disk Installs"))
         (/ (text-color 1) (str "Supplementary Info"))
         (/ (text-color 1) (str "   Join our BBS   "))
         (/ (text-color 1) (str "      Cancel      "))))
       (branch-var S
        (</>
         (/ ((cmd 209) 0 2) (set-reg 200 #t) (mes-jump "mes¥Oshirase.mes"))
         (/ ((cmd 209) 0 2) (set-reg 201 #t) (mes-jump "mes¥Oshirase.mes"))
         (/ ((cmd 209) 0 2) (set-reg 202 #t) (mes-jump "mes¥Oshirase.mes"))
         (/ (nop@)))))

; 	Start new game

      (/
       ((cmd 209) 0 3)
       (define-proc 15
         (<>
          (text-color 4)
          (exec-mem 34128 0 6 "■" 66 376 0 0 0)
          (text-frame 3 324 52 379)
          (text-reset 15)))
       (define-proc 16
         (<>
          (text-color 4)
          (exec-mem 34128 0 6 "▽" 70 376 0 0 1)
          (text-frame 16 324 66 379)
          (text-reset 1)))
       (define-proc 17
         (<>
          (text-color 4)
          (text-frame 16 346 52 360)
          (str "Please select a command!")
          (text-frame 3 324 52 379)))
       (set-var U 1)
       (text-frame 3 324 52 379)
       (text-reset 15)
       ((cmd 206) 1 1)
       (mes-jump "b:¥mes¥NS11_00.mes"))

; 	Continue existing game (14 wide)

      (/
       (set-var T 0)
       (text-frame 58 24 75 168)
       (text-reset 15)
       (menu1
        60 33
        60 55
        60 78
        60 100
        60 122
        60 144
        (</>
         (/ (set-reg 1000 #t) (text-color 1) (str "   Karte ") (text "１　" '|34368|))
         (/ (set-reg 1001 #t) (text-color 1) (str "   Karte ") (text "２　" '|34368|))
         (/ (set-reg 1002 #t) (text-color 1) (str "   Karte ") (text "３　" '|34368|))
         (/ (set-reg 1003 #t) (text-color 1) (str "   Karte ") (text "４　" '|34368|))
         (/ (set-reg 1004 #t) (text-color 1) (str "   Karte ") (text "５　" '|34368|))
         (/                   (text-color 1) (str "    Cancel    "))))
       (define-proc 15
         (<>
          (text-color 4)
          (exec-mem 34128 0 6 "■" 66 376 0 0 0)
          (text-frame 3 324 52 379)
          (text-reset 15)))
       (define-proc 16
         (<>
          (text-color 4)
          (exec-mem 34128 0 6 "▽" 70 376 0 0 1)
          (text-frame 16 324 66 379)
          (text-reset 1)))
       (define-proc 17
         (<>
          (text-color 4)
          (text-frame 16 346 52 360)
          (str "Please select a command!")
          (text-frame 3 324 52 379)))
       (branch-var S
        (</>
         (/
          ((cmd 209) 0 3)
          (image-file "gpc¥aflame01.gpc") (image-mem 1 3)
          (flag-load 0))
         (/
          ((cmd 209) 0 3)
          (image-file "gpc¥aflame01.gpc") (image-mem 1 3)
          (flag-load 1))
         (/
          ((cmd 209) 0 3)
          (image-file "gpc¥aflame01.gpc") (image-mem 1 3)
          (flag-load 2))
         (/
          ((cmd 209) 0 3)
          (image-file "gpc¥aflame01.gpc") (image-mem 1 3)
          (flag-load 3))
         (/
          ((cmd 209) 0 3)
          (image-file "gpc¥aflame01.gpc") (image-mem 1 3)
          (flag-load 4))
         (/ (nop@)))))

; 	Bonus mode options (18 wide)

      (/
       (if (</>
            (//
             (?
              (= 1005 #t)
              (= 896 #t)
              (= 897 #t)
              (= 898 #t)
              (= 899 #t)
              (= 900 #t))
             (nop@)
             (text-frame 58 24 75 168)
             (text-reset 15)
             (text-frame 57 24 76 168)
             (set-var T 0)
             (menu1
              58 39
              58 64
              58 89
              58 114
              58 139
              (</>
               (/ (text-color 1) (str "    Free Battle   "))
               (/ (text-color 1) (str "    Staff Room    "))
               (/ (text-color 1) (str "   Kirara's Room  "))
               (/ (text-color 1) (str "  Episode Select  "))
               (/ (text-color 1) (str "      Cancel      "))))
             (branch-var S
              (</>

; 	Free Battle

               (/
                (text-color 4)
                ((cmd 209) 0 2)
                (exec-mem 2816 "EXIT")
                (mes-jump "mes¥Free_Btl.mes"))

; 	Staff Room (18 wide, formerly 14)

               (/
                (text-frame 58 24 75 168)
                (text-reset 15)
                (text-frame 57 24 76 168)
                (set-var T 0)
                (menu1
                 58 39
                 58 64
                 58 89
                 (</>
                  (/ (text-color 1) (str "Dengeki Speakeasy "))
                  (/ (text-color 1) (str "Development Diary "))
                  (/ (text-color 1) (str "      Cancel      "))))
                (branch-var
                 S
                 (</>
                  (/
                   ((cmd 209) 0 2)
                   (exec-mem 2816 "EXIT")
                   ((cmd 206) 1 4)
                   (mes-jump "b:¥mes¥Taidan.mes"))
                  (/
                   ((cmd 209) 0 2)
                   (exec-mem 2816 "EXIT")
                   ((cmd 206) 1 4)
                   (mes-jump "b:¥mes¥Nikki.mes"))
                  (/ (nop@)))))

; 	Kirara's Room

               (/
                (branch-reg
                 1006
                 (</>
                  (/
                   (text-color 4)
                   (text-frame 3 330 52 379)
                   (exec-mem 2816 "GET 15 1 313 54 78")
                   (exec-mem 2816 "VIEW 1 313 54 390,PUT 12 1 313")
                   (text "きららの部屋に入るには、部屋の鍵がないとダメだよ！鍵はゲーム中のどこかで手に入るから探してみてね！")
                   (text-color 4)
                   (exec-mem 34128 0 6 "▽" 51 366 0 0 15)
                   (exec-mem 2816 "VIEW 1 313 54 390,PUT 15 1 313,FREE 15"))
                  (/
                   ((cmd 209) 0 2)
                   (exec-mem 2816 "EXIT")
                   ((cmd 206) 1 3)
                   (mes-jump "b:¥mes¥K_Room.mes")))))

; 	Episode Select (14 wide)

               (/
                (set-var T 0)
                (text-frame 58 24 75 168)
                (text-reset 15)
                (menu1
                 60 33
                 60 55
                 60 78
                 60 100
                 60 122
                 60 144
                 (</>
                  (/ (text-color 1) (str "  Episode ") (text "１　"))
                  (/ (text-color 1) (str "  Episode ") (text "２　"))
                  (/ (text-color 1) (str "  Episode ") (text "３　"))
                  (/ (text-color 1) (str "  Episode ") (text "４　"))
                  (/ (text-color 1) (str "  Episode ") (text "５　"))
                  (/ (text-color 1) (str "    Cancel    "))))
                (define-proc 15
                  (<>
                   (text-color 4)
                   (exec-mem 34128 0 6 "■" 66 376 0 0 0)
                   (text-frame 3 324 52 379)
                   (text-reset 15)))
                (define-proc 16
                  (<>
                   (text-color 4)
                   (exec-mem 34128 0 6 "▽" 70 376 0 0 1)
                   (text-frame 16 324 66 379)
                   (text-reset 1)))
                (define-proc 17
                  (<>
                   (text-color 4)
                   (text-frame 16 346 52 360)
                   (str "Please select a command!")
                   (text-frame 3 324 52 379)))
                (branch-var
                 S
                 (</>
                  (/
                   ((cmd 209) 0 2)
                   ((cmd 206) 1 1)
                   (mes-jump "b:¥mes¥Ns11_00.mes"))
                  (/
                   ((cmd 209) 0 2)
                   ((cmd 206) 1 2)
                   (mes-jump "b:¥mes¥Ns12_00.mes"))
                  (/
                   ((cmd 209) 0 2)
                   ((cmd 206) 1 3)
                   (mes-jump "b:¥mes¥Ns13_00.mes"))
                  (/
                   ((cmd 209) 0 2)
                   ((cmd 206) 1 4)
                   (mes-jump "b:¥mes¥Ns14_00.mes"))
                  (/
                   ((cmd 209) 0 2)
                   ((cmd 206) 1 3)
                   (mes-jump "b:¥mes¥Ns15_00.mes"))
                  (/ (nop@)))))
               (/ (nop@)))))

; 	(When Bonus Mode hasn't been unlocked yet)

            (//
             (text-color 4)
             (text-frame 3 330 52 379)
             (exec-mem 2816 "GET 15 1 313 54 78")
             (exec-mem 2816 "VIEW 1 313 54 390,PUT 12 1 313")
             (text "おまけモードは、" 'br)
             (text "ゲームをクリアしてないと見られませんよ〜！")
             (text-color 4)
             (exec-mem 34128 0 6 "▽" 51 366 0 0 15)
             (exec-mem 2816 "VIEW 1 313 54 390,PUT 15 1 313,FREE 15"))))))))))