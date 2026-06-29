; Dengeki Nurse English Translation - NS11_18.MES
; Translated by Geometrizer
; Edited and commented by trentsignia
; --Description:--
; Meanwhile, Guillotine Nurse performs an emergency Procedure on the Minister...
(mes
 (meta (engine 'ADV) (charset "pc98"))
 (seg*
  (define-proc 10 (<> (text-color 2) (str "Minister: ")))
  (define-proc 11 (<> (text-color 6) (str "Guillotine Nurse: ")))
  (sound '|| 0)
; PC-98
  (sound '|| "uso¥Nurse04.uso")
; FMT
; (sound '|| "Nurse04.fmt")
  (sound '|| 1)
  (text-frame 0 0 79 399)
  (text-reset 1)
  (image-file "b:¥gpc¥ns1_144.gpc") (image-mem 1 3 16 16)
  ((cmd 209) 1 2)
  (text-frame 16 324 66 379)
  (text-reset 1)
  (proc 10)
      ; Minister:
            (str "Nooo, stop! Don't do it! I'm not even" 'br)
  (str "siiiiiick!")
  (proc 16)
  (proc 11)
      ; Guillotine Nurse:
                    (str "That's right... But things would" 'br)
  (str "be better off for you if you WERE sick. Isn't that" 'br)
  (str "what you want?")
  (proc 16)
  (proc 10)
      ; Minister:
            (str "Aiiiigh! Stop!!!")
  (proc 16)
  (proc 11)
      ; Guillotine Nurse:
                    (str "I'll just inject these pure" 'br)
  (str "cultured terminal cancer cells, and make you" 'br)
  (str "legitimately unwell!")
  (proc 16)
  (proc 10)
      ; Minister:
            (str "F-Forgive me! Please!")
  (proc 16)
  (proc 11)
      ; Guillotine Nurse:
                    (str "Now where should I inject these?" 'br)
  (str "Your heart? Your gut? I'll leave the decision to" 'br)
  (str "you!")
  (proc 16)
  (proc 10)
      ; Minister:
            (str "Ahhhhh! Ahhhhh! Aaaaaaahhhhhhhh!")
  (proc 16)
  (proc 11)
      ; Guillotine Nurse:
                    (str "No need to be frightened. My" 'br)
  (str "surgical skills are world-class!")
  (proc 16)
  (proc 10)
      ; Minister:
            (str "Sob, sob...")
  (proc 16)
  (proc 11)
      ; Guillotine Nurse:
                    (str "This procedure came out of the" 'br)
  (str "blue, so I don't have any anesthesia. This may" 'br)
  (str "sting...")
  (proc 16)
  (proc 10)
      ; Minister:
            (str "Aaaahhh.... Aieeeeeee!!!")
  (proc 16)
  ((cmd 209) 0 2)
  (text-frame 3 324 52 379) (text-reset 15)
  (text-frame 4 16 51 303)  (text-reset 15)
  (sound '|| 2)
  (set-reg 990 #f)
  (mes-jump "b:¥mes¥Ns11_19.mes")))