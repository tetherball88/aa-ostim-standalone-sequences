Scriptname AmorousAdvDLC1_2QstUtil extends Quest

Function AnimateAmorousAdvLoveScene1 (actor aLover)

    ;---| STORYBOARD DISPLAY
    Debug.Trace("AnimateMyLover: Kiss ")

    If(AmorousAdvUseBlackScreens.GetValue() == 1)
        Game.FadeOutGame(false, true, 5.0, 5.0)
        AmorousAdvStoryBoard1.Show()
    EndIf


;---| BEGIN ANIMATION CODE |------


    ;--| Kissing Serana scene. Kissing only
    ;--| Skip for OSex


;---| END ANIMATION CODE |------

EndFunction

Function AnimateAmorousAdvLoveScene2 (actor aLover)

    ;---| STORYBOARD DISPLAY
    Debug.Trace("AnimateMyLover: Kiss ")
    If(AmorousAdvUseBlackScreens.GetValue() == 1)
        Game.FadeOutGame(false, true, 5.0, 5.0)
        AmorousAdvStoryBoard2.Show()
    EndIf


;---| BEGIN ANIMATION CODE |------


        ;--| Kissing Serana. Only a kiss.


;---| END ANIMATION CODE |------

EndFunction



;--SEXLAB SPECIFIC


;--FADE TO BLACK STORYBOARDS
Message Property AmorousAdvStoryBoard1 Auto  ;--| AmorousAdvSexMsgSeranaKissFirst
Message Property AmorousAdvStoryBoard2 Auto  ;--| AmorousAdvSexMsgSeranaKissSecond
GlobalVariable Property AmorousAdvUseBlackScreens Auto

;--ACTORS
Actor Property PlayerRef Auto


