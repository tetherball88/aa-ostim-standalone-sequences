Scriptname AmorousAdvDLC1_3QstUtil extends Quest  Conditional

Function AnimateAmorousAdvLoveScene1 (actor aLover)

    ;---| STORYBOARD DISPLAY
    Debug.Trace("AnimateMyLover: Serana ")
    If(AmorousAdvUseBlackScreens.GetValue() == 1)
        AmorousAdvStoryBoard1.Show()
    EndIf

;---| BEGIN ANIMATION CODE |------

    ;--| Serana performing Oral on player. Oral only
    Util.StartUniqueSequence(PlayerRef, aLover, "amor_serana_volkihar_courtyard_oral", exitOnEnd = true, theme = "oral")

;---| END ANIMATION CODE |------

EndFunction

Function AnimateAmorousAdvLoveScene2 (actor aLover)

    ;---| STORYBOARD DISPLAY
    Debug.Trace("AnimateMyLover: Serana ")
    If(AmorousAdvUseBlackScreens.GetValue() == 1)
        AmorousAdvStoryBoard2.Show()
    EndIf

;---| BEGIN ANIMATION CODE |------

    ;--| Player finally gets to make love to Serana
    Util.StartUniqueSequence(PlayerRef, aLover, "amor_serana_valericas_laboratory_table", "alchemytable")

;---| END ANIMATION CODE |------

EndFunction

;--FADE TO BLACK STORYBOARDS
Message Property AmorousAdvStoryBoard1 Auto  ;--| AmorousAdvSexMsgSeranaDLC1_3Oral
Message Property AmorousAdvStoryBoard2 Auto  ;--| AmorousAdvSexMsgSeranaDLC1_3Loving
GlobalVariable Property AmorousAdvUseBlackScreens Auto

;--ACTORS
Actor Property PlayerRef Auto

AmorousAdvUtil Property Util Auto
