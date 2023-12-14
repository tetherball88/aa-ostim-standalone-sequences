Scriptname AmorousAdvSybilleQstUtil extends Quest  Conditional

;========[ Faction Functions ]=====================

Function MyNewLover(actor aLover)
	aLover.AddToFaction(AmorAdvLoverFaction)
	aLover.SetFactionRank(AmorAdvLoverFaction, 1)
EndFunction

Function AnimateAmorousAdvLoveScene1 (actor aLover)

    ;---| STORYBOARD DISPLAY
    Debug.Trace("Amorous Adventures: AnimateMyLover: Sybille ")
    If(AmorousAdvUseBlackScreens.GetValue() == 1)
        AmorousAdvStoryBoard1.Show()
    EndIf

    ;--| It's a trap!
    PlayerRef.AddSpell(TrapDiseaseSanguinareVampiris, false)

;---| BEGIN ANIMATION CODE |------

    ;--| Sex with Sybille
    ; move to Sybille bedroom
    if(SybilleBedroomMarker)
        PlayerRef.MoveTo(SybilleBedroomMarker)
        aLover.MoveTo(SybilleBedroomMarker)
    else
        Debug.Trace("AA Sequences: Didn't find SybilleBedroomMarker property")
    endif
    
    ; logically to use vamp bite scene since by plot player gots vampire disease
    Util.StartUniqueSequence(PlayerRef, aLover, "amor_sybille_blue_palace_vamp" ,theme = "vamp")

;---| END ANIMATION CODE |------

EndFunction

;--KOOTIES!
Spell Property TrapDiseaseSanguinareVampiris Auto

;--FACTIONS
Faction Property AmorAdvLoverFaction Auto

;--FADE TO BLACK STORYBOARDS
Message Property AmorousAdvStoryBoard1 Auto  ;--| AmorousAdvSexMsgSybilleEnd 
GlobalVariable Property AmorousAdvUseBlackScreens Auto

;--ACTORS
Actor Property PlayerRef Auto
ObjectReference Property SybilleBedroomMarker Auto

AmorousAdvUtil Property Util Auto
