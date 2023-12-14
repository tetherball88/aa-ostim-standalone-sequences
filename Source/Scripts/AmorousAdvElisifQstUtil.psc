Scriptname AmorousAdvElisifQstUtil extends Quest

;========[ Faction Functions ]=====================

Function MyNewLover(actor aLover)
	aLover.AddToFaction(AmorAdvLoverFaction)
	aLover.SetFactionRank(AmorAdvLoverFaction, 1)
EndFunction

;========[ Animation Functions ]=====================
Function AnimateAmorousAdvLoveScene1 (actor aLover)

    ;---| STORYBOARD DISPLAY
    Debug.Trace("AnimateMyLover: Cowgirl ")
    If(AmorousAdvUseBlackScreens.GetValue() == 1)
        AmorousAdvStoryBoard1.Show()
    EndIf

;---| BEGIN ANIMATION CODE |------

    if(AmorousAdvWhiteWeddingDressSticky)
        ; wear wedding dress version which can't be removed by OStim (keyword OStimNoStrip)
        aLover.AddItem(AmorousAdvWhiteWeddingDressSticky, abSilent = true)
        Utility.Wait(0.2)
        aLover.EquipItem(AmorousAdvWhiteWeddingDressSticky)
    endif
    ;--| This is a special scene. 
    ;--|  In SexLab player is naked while Elisif wears a wedding dress
    ;--| Elisif in dress rides player cowgirl
    Util.StartWeddingScene(PlayerRef, aLover, AmorousAdvSexElisifBed)

;---| END ANIMATION CODE |------

EndFunction

Function AnimateAmorousAdvLoveScene2 (actor aLover)

    ;---| STORYBOARD DISPLAY
    Debug.Trace("Amorous Adventures: AnimateMyLover: Elisif ")
    If(AmorousAdvUseBlackScreens.GetValue() == 1)
        AmorousAdvStoryBoard2.Show()
    EndIf

    if(AmorousAdvWhiteWeddingDress && AmorousAdvWhiteWeddingDressSticky)
        ; remove sticky version of wedding dress allowing it to strip
        Utility.Wait(0.2)
        aLover.EquipItem(AmorousAdvWhiteWeddingDress)
        Utility.Wait(0.2)
        aLover.RemoveItem(AmorousAdvWhiteWeddingDressSticky, abSilent = true)
    endif    

;---| BEGIN ANIMATION CODE |------

    ;--| elisif and player make love
    Util.StartUniqueSequence(PlayerRef, aLover, "amor_elisif_temple_of_the_divines_after_wedding_regular_bed", "bed")

;---| END ANIMATION CODE |------

EndFunction

;--FACTIONS
Faction Property AmorAdvLoverFaction Auto

;--FADE TO BLACK STORYBOARDS
Message Property AmorousAdvStoryBoard1 Auto  ;--| AmorousAdvSexMsgElisifCursed
Message Property AmorousAdvStoryBoard2 Auto  ;--| AmorousAdvSexMsgElisifEnd
GlobalVariable Property AmorousAdvUseBlackScreens Auto

;--ACTORS
Actor Property PlayerRef Auto

Armor Property AmorousAdvWhiteWeddingDressSticky Auto
Armor Property AmorousAdvWhiteWeddingDress Auto

ObjectReference Property AmorousAdvSexElisifBed Auto

AmorousAdvUtil Property Util Auto
