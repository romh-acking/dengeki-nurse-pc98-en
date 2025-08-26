(mes
 (meta (engine 'ADV) (charset "pc98"))
 (seg*
  (load-mem "dat¥icondat.dat" 33024)
  (load-mem "cmd¥quakeh.tcm" 6656)
  (define-proc 10 (<> (text #:col 11 "［ナーシア］" 'br)))
  (image-file "b:¥gpc¥Ns1_562.gpc") (image-mem 1 3)
  (image-file "b:¥gpc¥Ns1_563.gpc") (image-mem 1 3)
  (proc 13)
  (exec-mem 2816 "GET 1 40 23 10 96")
  (exec-mem 2816 "SHOW 0,ACCESS 1")
  (exec-mem 2816 "GET 2 10 288 10 96")
  (exec-mem 2816 "ACCESS 0")
  (exec-mem 2816 "VIEW 40 23 50 120,PUT 2 40 23,FREE 2")

; 	Intro begins here...

  (text-frame 3 324 52 379)
  (text-reset 15)
  (proc 10)
  (text "たんち先生、ワープ装置があります！")
  (proc 15)
  (exec-mem 2816 "VIEW 40 23 50 120,PUT 1 40 23,FREE 1")
  (proc 19)
  
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
     (/ (nop@) (set-var T 1) (set-var O 0) (seg-call))
     (/ (nop@) (set-var T 2) (set-var O 0) (seg-call))
     (/ (nop@) (set-var T 3) (set-var O 0) (seg-call))
     (/ (nop@) (set-var T 4) (set-var O 0) (seg-call))
     (/ (nop@) (set-var T 5) (set-var O 0) (seg-call))
     (/ (nop@))
     (/ (nop@))
     (/ (nop@))
     (/ (nop@))
     (/ (nop@))
     (/ (nop@))
     (/ (nop@))
     (/ (nop@))))))

; 	Text continues here...

 (seg (? (= T 0) (= O 0))						; Think
   (nop@)
   (proc 18)
   (text #:col 7 "とっととワープして、" 'br)
   (text "ブラックナースを捕まえなければいけない！！")
   (proc 15)
   (proc 19))
 (seg (? (= T 1) (= O 0))						; Look
   (nop@)
   (proc 18)
   (text #:col 7 "なかなかカッコいいワープ装置だ。" 'br)
   (text "古代エレクトロス人のセンスは素晴らしいものがある。")
   (proc 15)
   (proc 19))
 (seg (? (= T 2) (= O 0))						; Talk
   (nop@)
   (proc 18)
   (exec-mem 2816 "GET 1 5 23 10 96")
   (exec-mem 2816 "SHOW 0,ACCESS 1")
   (exec-mem 2816 "GET 2 10 0 10 96")
   (exec-mem 2816 "ACCESS 0")
   (exec-mem 2816 "VIEW 5 23 15 120,PUT 2 5 23,FREE 2")
   (proc 1)
   (text "たんちィ！　早くワープしようよォ！！")
   (proc 15)
   (exec-mem 2816 "VIEW 5 23 15 120,PUT 1 5 23,FREE 1")
   (proc 19))
 (seg (? (= T 3) (= O 0))						; Action
   (nop@)
   (proc 18)
   (text #:col 7 "俺はワープ装置を触った。")
   (proc 15)
   (proc 2)
   (text "きららのお尻とは、" 'br)
   (text "かなり手触りが違うみたいだな。")
   (proc 15)
   (exec-mem 2816 "GET 1 5 23 10 96")
   (exec-mem 2816 "SHOW 0,ACCESS 1")
   (exec-mem 2816 "GET 2 30 0 10 96")
   (exec-mem 2816 "ACCESS 0")
   (exec-mem 2816 "VIEW 5 23 15 120,PUT 2 5 23,FREE 2")
   (proc 0)
   (text "あたりまえよッ！！")
   (proc 15)
   (exec-mem 2816 "VIEW 5 23 15 120,PUT 1 5 23,FREE 1")
   (proc 19))
 (seg (? (= T 4) (= O 0))						; Move
   (nop@)
   (proc 18)
   (text-frame 3 324 52 379)
   (text-reset 15)
   (text #:col 1 "どうしますか？")
   (set-var T 0)
   ((cmd 211) 1 2)
   (menu1
    10
    348
    24
    348
    (</>
     (/ (text #:col 4 '|34368| "ワープする" '|34368|))
     (/ (text #:col 4 '|34368| "部屋を出る" '|34368|))))
   (text-frame 3 324 52 379)
   (text-reset 15)
   (branch-var S
    (</>
     (/
      (text #:col 7 "俺はワープ装置を起動させた。")
      (proc 15)
      (text #:col 1 "びゅわびゅわびゅわびゅわびゅわ〜〜ん！！")
      (repeat 3 (<> (exec-mem 17920 2 0)))
      (if (</>
           (// (? (= G 1) (= S 1)) (nop@) (set-var G 5))
           (// (? (= G 2) (= S 2)) (nop@) (set-var G 6))
           (// (? (= G 2) (= S 3)) (nop@) (set-var G 1))
           (// (? (= G 3) (= S 2)) (nop@) (set-var G 5))
           (// (? (= G 3) (= S 4)) (nop@) (set-var G 1))
           (// (? (= G 4) (= S 1)) (nop@) (set-var G 5))
           (// (? (= G 4) (= S 5)) (nop@) (set-var G 2))
           (// (? (= G 5) (= S 2)) (nop@) (set-var G 6))
           (// (? (= G 6) (= S 4)) (nop@) (set-var G 5))))
      (set-var S 0)
      (exec-mem 19456 2 8 4 103 75 55 45 55 45 0 20)
      (exec-mem 18944 65535 528 33)
      (set-reg 990 #f)
      (mes-jump "b:¥mes¥Ns15_16.mes"))
     (/
      (set-var S 0)
      (exec-mem 19456 2 8 4 103 75 55 45 55 45 0 20)
      (exec-mem 18944 65535 528 33)
      (set-reg 990 #f)
      (mes-jump "b:¥mes¥Ns15_16.mes"))))
   (proc 19))
 (seg (? (= T 5) (= O 0))						; Save
   (proc 18)
   (exec-mem 2816 "GET 1 40 23 10 96")
   (exec-mem 2816 "SHOW 0,ACCESS 1")
   (exec-mem 2816 "GET 2 10 288 10 96")
   (exec-mem 2816 "ACCESS 0")
   (exec-mem 2816 "VIEW 40 23 50 120,PUT 2 40 23,FREE 2")
   (proc 10)
   (text "ごめんなさい‥‥部屋の中ではセーブできません。" 'br)
   (text "通路に出てセーブして下さいねッ。")
   (proc 15)
   (exec-mem 2816 "VIEW 40 23 50 120,PUT 1 40 23,FREE 1")
   (proc 19)))