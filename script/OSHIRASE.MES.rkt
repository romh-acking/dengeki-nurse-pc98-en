; Dengeki Nurse English Translation - OSHIRASE.MES
; Translated by Geometrizer
; Edited and commented by trentsignia
; --Description:--
; Information section.
; There are three subsections which are selected in MS_MENU via the setting of a flag.
; --To change for FMT:--
; Its quite different.
(mes
 (meta (engine 'ADV) (charset "pc98"))
 (seg*

; 	Process 16 is temporarily modified to accomodate this section's text box.

  (define-proc 16
    (<>
     (text-color 4)
     (exec-mem 34128 0 6 "▽" 70 376)
     (text-color 15)
     ((cmd 209) 0 2)
     (text-frame 0 0 79 399)
     (text-reset 1)))

; 	Then the initial text box is drawn, and...

  (text-frame 0 0 79 399)
  (text-reset 1)
  (exec-mem 1280 0 0 0 0)
  (text-color 15)

; 	Text begins here... (80 half-width characters)

  (if (</>

; 		Hard Disk Installs (PC-98 only)

       (//
        (? (= 200 #t))
        (nop@)
        (set-reg 200 #f)

        (text 'br)
        (text "　　　　　　　　《") (str "Directions for using a hard disk on PC-9801") (text "》" 'br)
        (text "　●") (str " Installation" 'br)
        (text "　　１") (str ". Boot into the hard disk." 'br)
        (text "　　２") (str ". Ensure that it has approximately 7MB of free space for installation." 'br)
        (text "　　３") (str ". Insert Disk A into Floppy Disk Drive 1." 'br)
        (text "　　４") (str ". Change your current directory to the drive containing Disk A." 'br)
        (text "　　５") (str ". Execute ") (text "Ｓ＞ＩＮＳＴＨ　Ｓ：　Ｄ：") (str ", where:" 'br)
        (text "　　　　　　Ｓ＝") (str " Floppy Disk Drive" 'br)
        (text "　　　　　　Ｄ＝") (str " Hard Disk Drive" 'br)
        (text "　　６") (str ". Follow the on-screen instructions, and swap disks when prompted." 'br)
        (text 'br)
        (text "　●") (str " Startup" 'br)
        (text "　　１") (str ". Boot into the hard disk." 'br)
        (text "　　２") (str ". Insert Disk A into Floppy Disk Drive 1." 'br)
        (text "　　３") (str ". Change your current directory to the drive you installed the game to." 'br)
        (text "　　４") (str ". Execute ") (text "＞ＮＵＲＳＥ") (str ".")

        ((cmd 209) 1 2)
        (proc 16)

        (text 'br)
        (text "　●") (str " Warning! Dengeki Nurse uses a lot of system memory." 'br)
        (text 'br)
        (text "　　") (str "If you have any device drivers or TSRs present, it might not function" 'br)
        (text "　　") (str "correctly. Please remove all of them from memory before running the game." 'br)
        (text 'br)
        (text "　　") (str "Also, if the FILES and BUFFERS values are set in CONFIG.SYS incorrectly," 'br)
        (text "　　") (str "animations may run slowly." 'br)
        (text 'br)
        (text "　　") (str "From our testing, these settings seem to work best:" 'br)
        (text 'br)
        (text "　　　　　　　　　　　ＦＩＬＥＳ　　＝１０" 'br)
        (text "　　　　　　　　　　　ＢＵＦＦＥＲＳ＝２０" 'br)
        (text 'br)
        (text "　　") (str "However, the easiest solution might just be to clear CONFIG.SYS..." 'br)

        ((cmd 209) 1 2)
        (proc 16)

        (text 'br)
        (text "　●") (str " Exiting the game" 'br)
        (text 'br)
        (text "　　") (str "You can end the game and return to DOS at any time by pressing the STOP" 'br)
        (text "　　") (str "key. (Only when playing from the hard disk)" 'br)
        (text 'br)
        (text "　　") (str "However, depending on when you quit, game data might remain in memory..." 'br)
        (text "　　") (str "If you launch any other games after that, they might not work correctly!" 'br)
        (text 'br)
        (text "　　") (str "You shouldn't have any problems if you press the STOP key on the exit" 'br)
        (text "　　") (str "screen (accessible from the SAVE menu).")

        ((cmd 209) 1 2)
        (proc 16)

        (text 'br)
        (text "　●") (str " Disclaimer" 'br)
        (text 'br)
        (text "　　") (str "Hard disk installation is a bonus feature. The process can be dangerous," 'br)
        (text "　　") (str "especially with Dengeki Nurse." 'br)
        (text 'br)
        (text "　　") (str "So don't attempt it unless you know what you're doing!" 'br)
        (text 'br)
        (text "　　") (str "We are not responsible for any damage that might occur to your hard disk" 'br)
        (text "　　") (str "or its data during installation. Thank you for your understanding." 'br)
        (text 'br)
        (text "　　") (str "We are unable to provide any technical support regarding installation." 'br)

        ((cmd 209) 1 2)
        (proc 16))

; 		Supplementary Info

       (//
; PC-98:
        (? (= 201 #t))
        (nop@)
        (set-reg 201 #f)
; FMT:
;       (? (= 200 #t))
;       (nop@)
;       (set-reg 200 #f)

        (text 'br)
        (text "　●") (str " How to enjoy the ") (text "ＳＡＤ") (str " System" 'br)
        (text 'br)
        (text "　　") (str "Dengeki Nurse is equipped with Cocktail Soft's secret weapon!" 'br)
        (text 'br)
        (text "　　") (str "The ") (text "Ｓｕｇｏｉ　Ａｎｉｍｅｇａ　Ｄｅｋｉｃｈａｔｔａ　Ｓｙｓｔｅｍ") (str " is" 'br)
        (text "　　") (str "capable of running spectacular full-screen animation at high speeds!" 'br)
        (text 'br)

; This section only appears on PC-98:
        (text "　　") (str "Unfortunately, its full potential could not be realized on a V30 machine" 'br)
        (text "　　") (str "(VM, UV, DO, etc., even the VX clocked at 10MHz is a bit slow), despite" 'br)
        (text "　　") (str "our best efforts." 'br)
        (text 'br)
        (text "　　") (str "If you're using one of the above systems, and have a friend with an RX" 'br)
        (text "　　") (str "or later system, please try it out on their machines." 'br)

        ((cmd 209) 1 2)
        (proc 16)
        (text 'br)
        (text "　●") (str " Regarding the Imperial Scrolls of Honor..." 'br)
        (text 'br)
        (text "　　") (str "It's a sham! It can't even hold 256 bytes' worth of save data." 'br)
        (text 'br)
        (text "　　") (str "Make sure you save your game before going into battle!" 'br)
        (text 'br)
        (text 'br)
        (text "　●") (str " About the Music" 'br)
        (text 'br)
        (text "　　") (str "The music in Dengeki Nurse is best enjoyed via external speakers. We" 'br)
        (text "　　") (str "recommend listening through them!" 'br)
        (text 'br)
        (text "　　　") (str "(How to Connect)" 'br)
        (text "　　　") (str "Connect the LINE-OUT jack on the back of your computer to the AUX-IN" 'br)
        (text "　　　") (str "jack on your audio device.")
        ((cmd 209) 1 2)
        (proc 16)

; This section only appears on PC-98:
        (text 'br)
        (text "　●") (str " Regarding the Mouse" 'br)
        (text 'br)
        (text "　　") (str "While playtesting, we encountered an issue where messages would advance" 'br)
        (text "　　") (str "three times, even though the mouse was clicked once." 'br)
        (text 'br)
        (text "　　") (str "After three days and nights of continuous sleep (industry term for all-" 'br)
        (text "　　") (str "nighter), we came to the conclusion that the mouse was the problem!" 'br)
        (text 'br)
        (text "　　") (str "We understand that you probably don't beat up your mouse as much as we" 'br)
        (text "　　") (str "do during playtests, but..." 'br)
        (text 'br)
        (text "　　") (str "If something seems fishy...take a look at your mouse. These things are" 'br)
        (text "　　") (str "consumables, after all, so be sure to replace them before they go bad." 'br)
        (text 'br)
        (text "　　") (str "(Maybe I'm a shill for mouse companies...)")
        ((cmd 209) 1 2)
        (proc 16))
; ^ If you remove this for the FMT version, don't forget to add the closing bracket to the last screen!

; 		Join our BBS

       (//
; PC-98:
        (? (= 202 #t))
        (nop@)
        (set-reg 202 #f)
; FMT:
;       (? (= 201 #t))
;       (nop@)
;       (set-reg 201 #f)

        (text 'br)
        (text "　　") (str "We at Cocktail Soft and Fairytale have recently launched a computer-based" 'br)
        (text "　") (str "BBS to stay in touch with our users and communicate with them. Since this an" 'br)
        (text "　") (str "experimental program, membership is free (aside from phone call charges)." 'br)
        (text 'br)
        (text "　　") (str "In addition to new release info and a graphics corner, we can offer" 'br)
        (text "　") (str "support and mail order. There will also be perks like limited-time bargains." 'br)
; PC-98
        (text "　") (str "We'll have a Dengeki Nurse message board, of course, so please check it out!" 'br)
; FMT
;       (text "　") (str "" 'br) ; <- to be translated
        (text 'br)
        (text "　　") (str "Phone Number: ") (text "＊＊−＊＊＊＊−＊＊＊＊") (str " (No longer in operation)" 'br)
; PC-98
        (text "　　") (str "For now we're operating two lines, but plan to increase that to four soon." 'br)
; FMT
;       (text "　　") (str "We're currently operating four lines." 'br)
        (text 'br)
; PC-98
        (text "　　") (str "By the way, our sysop (to find if you need help) will be NANAKO (that's" 'br)
; PC-98
        (text "　") (str "her ID, send a mail over), the cute girl who penned Can Can Bunny Premiere!" 'br)
; FMT
;       (text "　　") (str "By the way, our sysop (person to find if you need help) is NANAKO, the" 'br)
; FMT
;       (text "　") (str "cute girl who penned Can Can Bunny Premiere!" 'br)
        (text "　") (str "She's full of spirit, swinging her slender arms around (just heard someone" 'br)
        (text "　") (str "yell") (text "“") (str "That's a lie!") (text "”") (str "back there), so everyone, please be nice to her." 'br)

        ((cmd 209) 1 2)
        (proc 16))))

; 	Process 16 is reset back to the main game's before returning to the main menu.

  (define-proc 16
    (<>
     (text-color 4)
     (exec-mem 34128 0 6 "▽" 70 376)
     (text-frame 16 324 66 379)
     (text-reset 1)))
  (mes-jump "mes¥Ns_menu.mes")))