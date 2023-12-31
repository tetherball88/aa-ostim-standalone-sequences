Scriptname AmorousAdvMirabelleQstUtil extends Quest  Conditional

Function MyNewLover(actor aLover)
	aLover.AddToFaction(AmorAdvLoverFaction)
	aLover.SetFactionRank(AmorAdvLoverFaction, 1)
EndFunction

Function AnimateAmorousAdvLoveScene1 (actor aLover)

    ;---| STORYBOARD DISPLAY
    Debug.Trace("Amorous Adventures: AnimateMyLover: Mirabelle One")
    If(AmorousAdvUseBlackScreens.GetValue() == 1)
        AmorousAdvStoryBoard1.Show()
    EndIf

;---| BEGIN ANIMATION CODE |------

    ;--| Sex "research" with Mirabelle
    Util.StartUniqueSequence(PlayerRef, aLover, "amor_mirabelle_hall_of_attainment_1st_research_regular_bed", "bed")

;---| END ANIMATION CODE |------

EndFunction

Function AnimateAmorousAdvLoveScene2 (actor aLover)

    ;---| STORYBOARD DISPLAY
    Debug.Trace("Amorous Adventures: AnimateMyLover: Mirabelle Two")
    If(AmorousAdvUseBlackScreens.GetValue() == 1)
        Game.FadeOutGame(false, true, 5.0, 10.0)
        AmorousAdvStoryBoard2.Show()
    EndIf

;---| BEGIN ANIMATION CODE |------

    ;--| More Sex "research" with Mirabelle
    Util.StartUniqueSequence(PlayerRef, aLover, "amor_mirabelle_hall_of_attainment_2nd_research_regular_bed", "bed")

;---| END ANIMATION CODE |------

EndFunction

Function AnimateAmorousAdvLoveScene3 (actor aLover)

    ;---| STORYBOARD DISPLAY
    Debug.Trace("Amorous Adventures: AnimateMyKiss: Mirabelle ")
    If(AmorousAdvUseBlackScreens.GetValue() == 1)
        AmorousAdvStoryBoard3.Show()
    EndIf

;---| BEGIN ANIMATION CODE |------

    ;--| This should be a kissing scene Only
    Util.StartKissingScene(PlayerRef, aLover)

;---| END ANIMATION CODE |------

EndFunction

;--FACTIONS
Faction Property AmorAdvLoverFaction Auto

;--FADE TO BLACK STORYBOARDS
Message Property AmorousAdvStoryBoard1 Auto  ;--| AmorousAdvSexMsgMirabelleOne
Message Property AmorousAdvStoryBoard2 Auto  ;--| AmorousAdvSexMsgMirabelleTwo
Message Property AmorousAdvStoryBoard3 Auto  ;--| AmorousAdvSexMsgMirabelleKiss
GlobalVariable Property AmorousAdvUseBlackScreens Auto

;--ACTORS
Actor Property PlayerRef Auto

AmorousAdvUtil Property Util Auto
