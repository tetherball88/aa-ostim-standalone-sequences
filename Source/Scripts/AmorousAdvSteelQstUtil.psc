Scriptname AmorousAdvSteelQstUtil extends Quest

;========[ Faction Functions ]=====================

Function MyNewLover(actor aLover)
	aLover.AddToFaction(AmorAdvLoverFaction)
	aLover.SetFactionRank(AmorAdvLoverFaction, 1)
EndFunction

;========[ Animation Functions ]=====================
Function AnimateAmorousAdvLoveScene1 (actor aLover)

    ;---| STORYBOARD DISPLAY
    Debug.Trace("AnimateMyLover: Kiss Lydia")
    If(AmorousAdvUseBlackScreens.GetValue() == 1)
        AmorousAdvStoryBoard1.Show()
    EndIf

;---| BEGIN ANIMATION CODE |------

    ;--| Should be Kissing with Lydia only.
    Util.StartKissingScene(PlayerRef, aLover)

;---| END ANIMATION CODE |------

EndFunction

Function AnimateAmorousAdvLoveScene2 (actor aLover)

    ;---| STORYBOARD DISPLAY
    Debug.Trace("AnimateMyLover: Lydia ")
    If(AmorousAdvUseBlackScreens.GetValue() == 1)
        AmorousAdvStoryBoard2.Show()
    EndIf

;---| BEGIN ANIMATION CODE |------

    ;--| player and Lydia make love
    Util.StartUniqueSequence(PlayerRef, aLover, "amor_lydia_anywhere_regular")

;---| END ANIMATION CODE |------

EndFunction

Function AnimateAmorousAdvLoveScene3 (actor adrianne, actor lydia)

;---| BEGIN ANIMATION CODE |------
    Debug.Trace("Amorous Adventures: AnimateMyLover: Adrianne and Lydia ")
    If(AmorousAdvUseBlackScreens.GetValue() == 1 && AmorousAdvStoryBoard3)
        AmorousAdvStoryBoard3.Show()
    EndIf

    ;--| Adrianne and Lydia make love
    Util.StartUniqueSequence(PlayerRef, lydia, "amor_lydia_adrianne_bannered_mare_threesome_bed", "bed", actor3 = adrianne)

;---| END ANIMATION CODE |------

EndFunction

;--FACTIONS
Faction Property AmorAdvLoverFaction Auto

;--FADE TO BLACK STORYBOARDS
Message Property AmorousAdvStoryBoard1 Auto  ;--| AmorousAdvSexMsgLydiaKiss1
Message Property AmorousAdvStoryBoard2 Auto  ;--| AmorousAdvSexMsgLydiaUnclothed
Message Property AmorousAdvStoryBoard3 Auto  ;--| AmorAdvSexMsgAdrianneLeadingLydiaAndYouToTheInn
GlobalVariable Property AmorousAdvUseBlackScreens Auto

;--ACTORS
Actor Property PlayerRef Auto

AmorousAdvUtil Property Util Auto
