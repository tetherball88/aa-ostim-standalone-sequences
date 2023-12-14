Scriptname AmorousAdvGerdurQstUtil extends Quest

;========[ Faction Functions ]=====================

Function MyNewLover(actor aLover)
	aLover.AddToFaction(AmorAdvLoverFaction)
	aLover.SetFactionRank(AmorAdvLoverFaction, 1)
EndFunction

;========[ Animate Functions ]=====================

Function AnimateAmorousAdvLoveScene1 (actor aLover)

    ;---| STORYBOARD DISPLAY
    Debug.Trace("Amorous Adventures: AnimateMyLover: Nordic Hospitality ")
    If(AmorousAdvUseBlackScreens.GetValue() == 1 && AmorousAdvStoryBoard1New)
        AmorousAdvStoryBoard1New.Show()
    EndIf

;---| BEGIN ANIMATION CODE |------

    ;--| generc sex scene. Could be player doing Gerdur or Ralof
    if(!OActorUtil.HasSchlong(aLover))
        Util.StartUniqueSequence(PlayerRef, aLover, "amor_gerdur_gerdurs_house_regular_bed", "bed")
    else
        Util.StartNomalScene(PlayerRef, aLover)
    endif

;---| END ANIMATION CODE |------

EndFunction

;--FACTIONS
Faction Property AmorAdvLoverFaction Auto

;--FADE TO BLACK STORYBOARDS
Message Property AmorousAdvStoryBoard1New Auto  ;--| AmorAdvLoveHappensMSG 
GlobalVariable Property AmorousAdvUseBlackScreens Auto

;--ACTORS
Actor Property PlayerRef Auto

AmorousAdvUtil Property Util Auto
