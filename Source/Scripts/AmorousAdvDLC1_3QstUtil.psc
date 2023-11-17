Scriptname AmorousAdvDLC1_3QstUtil extends Quest  Conditional

Function AnimateAmorousAdvLoveScene1 (actor aLover)

    ;---| STORYBOARD DISPLAY
    Debug.Trace("AnimateMyLover: Serana ")
    If(AmorousAdvUseBlackScreens.GetValue() == 1)
        Game.FadeOutGame(false, true, 5.0, 5.0)
        AmorousAdvStoryBoard1.Show()
    EndIf


;---| BEGIN ANIMATION CODE |------


    ;--| Serana performing Oral on player. Oral only


;---| END ANIMATION CODE |------

EndFunction


Function AnimateAmorousAdvLoveScene2 (actor aLover)

    ;---| STORYBOARD DISPLAY
    Debug.Trace("AnimateMyLover: Serana ")
    If(AmorousAdvUseBlackScreens.GetValue() == 1)
        Game.FadeOutGame(false, true, 5.0, 5.0)
        AmorousAdvStoryBoard2.Show()
    EndIf

;---| BEGIN ANIMATION CODE |------


    ;--| Player finally gets to make love to Serana


;---| END ANIMATION CODE |------

EndFunction


;--SEXLAB SPECIFIC
Message Property SexOptsFems  Auto  

;--FADE TO BLACK STORYBOARDS
Message Property AmorousAdvStoryBoard1 Auto  ;--| AmorousAdvSexMsgSeranaDLC1_3Oral
Message Property AmorousAdvStoryBoard2 Auto  ;--| AmorousAdvSexMsgSeranaDLC1_3Loving
GlobalVariable Property AmorousAdvUseBlackScreens Auto

;--ACTORS
Actor Property PlayerRef Auto

