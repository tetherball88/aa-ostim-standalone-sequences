Scriptname AmorousAdvElisif2QstUtil extends Quest  

;========[ Faction Functions ]=====================

Function MyNewLover(actor aLover)
	aLover.AddToFaction(AmorAdvLoverFaction)
	aLover.SetFactionRank(AmorAdvLoverFaction, 1)
EndFunction

Function RemoveAmorousFactions(actor aLover)
	aLover.RemoveFromFaction(AmorAdvLoverFaction)
	aLover.RemoveFromFaction(AmorAdvUniqueLoverFaction)
EndFunction

Function AddCaptiveFaction(actor aLover)
	aLover.AddToFaction(CaptiveFaction)
	aLover.SetFactionRank(CaptiveFaction, 1)
EndFunction

Function RemoveCaptiveFaction(actor aLover)
	aLover.RemoveFromFaction(CaptiveFaction)
EndFunction

;========[ Animation Functions ]=====================

Function AnimateAmorousAdvLoveScene1 (actor aLover)

    ;---| STORYBOARD DISPLAY
    ;---| Elisif KISS
    Debug.Trace("AnimateMyLover: Elisif Kiss ")
    If(AmorousAdvUseBlackScreens.GetValue() == 1)
        AmorousAdvStoryBoard1.Show()
    EndIf 

;---| BEGIN ANIMATION CODE |------

    ;--| Player kisses Elisif.  This is a Kissing Scene Only
    Util.StartKissingScene(PlayerRef, aLover)

	
	
;---| END ANIMATION CODE |------

EndFunction

Function AnimateAmorousAdvLoveScene2 (actor aLover)

    ;---| STORYBOARD DISPLAY
    ;---| ELISIF - after Frostflow Abyss
    Debug.Trace("Amorous Adventures: AnimateMyLover: Elisif ")
    If(AmorousAdvUseBlackScreens.GetValue() == 1)
        AmorousAdvStoryBoard2.Show()
    EndIf

;---| BEGIN ANIMATION CODE |------

	;---| Sex with Elisif 
    Util.StartUniqueSequence(PlayerRef, aLover, "amor_elisif_frostflow_lighthouse_regular", theme = "standing")

;---| END ANIMATION CODE |------

EndFunction

Function AnimateAmorousAdvLoveScene3(actor aLover, actor bLover)

    ;---| STORYBOARD DISPLAY
	Debug.Trace("AnimateMyLover: Elisif and Elisif")
    If(AmorousAdvUseBlackScreens.GetValue() == 1)
        AmorousAdvStoryBoard3.Show()
    EndIf

;---| BEGIN ANIMATION CODE |------

    ;--| Threesome with player
    ;--| aLover = Elisif
    ;--| bLover = Elisif
    if(ElisifBedroomMarker)
        PlayerRef.MoveTo(ElisifBedroomMarker)
        aLover.MoveTo(ElisifBedroomMarker)
        bLover.MoveTo(ElisifBedroomMarker)
    else
        Debug.Trace("AA Sequences: Didn't find ElisifBedroomMarker property")
    endif
    Util.StartUniqueSequence(PlayerRef, aLover, "amor_elisif_elisif_blue_palace_threesome_bed", "doublebed", actor3 = bLover)

;---| END ANIMATION CODE |------

EndFunction

;--FACTIONS
Faction Property AmorAdvLoverFaction Auto
Faction Property AmorAdvUniqueLoverFaction Auto
Faction Property CaptiveFaction Auto

;--FADE TO BLACK STORYBOARDS
Message Property AmorousAdvStoryBoard1 Auto  ;--| AmorousAdvSexMsgElisif2Kiss
Message Property AmorousAdvStoryBoard2 Auto  ;--| AmorousAdvSexMsgElisif2FF
Message Property AmorousAdvStoryBoard3 Auto  ;--| AmorousAdvSexMsgElisif2End
GlobalVariable Property AmorousAdvUseBlackScreens Auto

ObjectReference Property ElisifBedroomMarker Auto

;--ACTORS
Actor Property PlayerRef Auto

AmorousAdvUtil Property Util Auto
