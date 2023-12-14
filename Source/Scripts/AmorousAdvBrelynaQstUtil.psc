Scriptname AmorousAdvBrelynaQstUtil extends Quest  

;========[ Faction Functions ]=====================

Function MyNewLover(actor aLover)
	aLover.AddToFaction(AmorAdvLoverFaction)
	aLover.SetFactionRank(AmorAdvLoverFaction, 1)
EndFunction

;========[ Animation Functions ]=====================
Function AnimateAmorousAdvLoveScene1 (actor aLover, actor bLover)

    ;---| STORYBOARD DISPLAY
    ;---| FARALDA AND NIRYA KISSING
    Debug.Trace("AnimateMyLover: Faralda Nirya Kiss ")
    If(AmorousAdvUseBlackScreens.GetValue() == 1)
        AmorousAdvStoryBoard1.Show()
    EndIf

;---| BEGIN ANIMATION CODE |------

    ;--| Faralda and Nirya kiss each other. Kiss only.
    ;--| OSex doesn't handle a scene with two NPC's kissing
    Util.StartKissingScene(aLover, bLover)

;---| END ANIMATION CODE |------

EndFunction

Function AnimateAmorousAdvLoveScene2 (actor aLover)

    ;---| STORYBOARD DISPLAY
    ;---| BRELYNA
    Debug.Trace("AnimateMyLover: Brelyna Kiss ")
    If(AmorousAdvUseBlackScreens.GetValue() == 1)
        AmorousAdvStoryBoard2.Show()
    EndIf 

;---| BEGIN ANIMATION CODE |------

    ;--| Player kisses Brelyna.  This is a Kissing Scene Only
    Util.StartKissingScene(PlayerRef, aLover)

;---| END ANIMATION CODE |------

EndFunction

Function AnimateAmorousAdvLoveScene3 (actor aLover)

    ;---| STORYBOARD DISPLAY
    ;---| BRELYNA First Love Scene - scroll for anska
    Debug.Trace("Amorous Adventures: AnimateMyLover: Brelyna ")
    If(AmorousAdvUseBlackScreens.GetValue() == 1)
        AmorousAdvStoryBoard3.Show()
    EndIf

;---| BEGIN ANIMATION CODE |------

    ;--| Player and Brelyna make love
    Util.StartUniqueSequence(PlayerRef, aLover, "amor_brelyna_volkuns_throne_room_regular")

;---| END ANIMATION CODE |------

EndFunction

Function AnimateAmorousAdvLoveScene4 (actor aLover)

    ;---| STORYBOARD DISPLAY
    ;---| BRELYNA Second Love Scene - Volskygge
    Debug.Trace("Amorous Adventures: AnimateMyLover: Brelyna ")
    If(AmorousAdvUseBlackScreens.GetValue() == 1)
        AmorousAdvStoryBoard4.Show()
    EndIf

;---| BEGIN ANIMATION CODE |------

    ;--| Player and Brelyna make love 
    Util.StartUniqueSequence(PlayerRef, aLover, "amor_brelyna_volskygge_regular")

;---| END ANIMATION CODE |------

EndFunction

Function AnimateAmorousAdvLoveScene5 (actor aLover)

    ;---| STORYBOARD DISPLAY
    ;---| NIRYA SPELL BREAK
    Debug.Trace("Amorous Adventures: AnimateMyLover: Nirya and Player ")
    If(AmorousAdvUseBlackScreens.GetValue() == 1)
        AmorousAdvStoryBoard5.Show()
    EndIf

;---| BEGIN ANIMATION CODE |------

    ;--| Player and Nirya make love
    Util.StartUniqueSequence(PlayerRef, aLover, "amor_nirya_arch_mages_quarters_regular")

;---| END ANIMATION CODE |------

EndFunction

Function AnimateAmorousAdvLoveScene6 (actor aLover)

    ;---| STORYBOARD DISPLAY
    ;---| FARALDA
    Debug.Trace("AnimateMyLover: Faralda Kiss ")
    If(AmorousAdvUseBlackScreens.GetValue() == 1)
        AmorousAdvStoryBoard6.Show()
    EndIf

;---| BEGIN ANIMATION CODE |------

    ;--| Player kisses Faralda
    Util.StartKissingScene(PlayerRef, aLover)

;---| END ANIMATION CODE |------

EndFunction

Function AnimateAmorousAdvLoveScene7 (actor aLover, actor bLover)

	Debug.Trace("Amorous Adventures: AnimateMyLover: Brelyna and Faralda ")
	;--- No Fade
	;--- No Message

;---| BEGIN ANIMATION CODE |------

    ;--| This is a scene with Faralda and Breylana having sex
    ;--| In SexLab this happens simultaneous with the Nirya + Player scene 
    Util.StartUniqueSequence(aLover, bLover, "amor_brelyna_faralda_arch_mages_quarters_lesbian")

;---| END ANIMATION CODE |------

EndFunction

bool Function AnimateAmorousAdvLoveScene8 (actor actor1, actor actor2, actor actor3)

	Debug.Trace("Amorous Adventures: AnimateMyLover: Player, Brelyna, Nirya and Faralda foursome")
	If(AmorousAdvUseBlackScreens.GetValue() == 1)
        AmorousAdvStoryBoard6.Show()
    EndIf

;---| BEGIN ANIMATION CODE |------

    ;--| This is a scene with Player, Nirya, Faralda and Breylana having sex
    ;--| This happens instead of AnimateAmorousAdvLoveScene5 + AnimateAmorousAdvLoveScene7
    Actor[] actors = OActorUtil.ToArray(PlayerRef, actor1, actor2, actor3)
    string fouresomeSeq = OSequence.GetRandomSequenceWithAllSequenceTagsCSV(actors, "amor_brelyna_nirya_faralda_arch_mages_quarters_foursome_bed")

    if(fouresomeSeq == "")
        return false
    endif

    ObjectReference furn = Util.FindFurnitureByType(actors.Length, "doublebed")

    Util.StartOstimSequence(actors, fouresomeSeq, false, furn)

    return true

;---| END ANIMATION CODE |------

EndFunction

;--FACTIONS
Faction Property AmorAdvLoverFaction Auto

;--FADE TO BLACK STORYBOARDS
Message Property AmorousAdvStoryBoard1 Auto ;--| AmorousAdvSexMsgFaraldaNiryaKiss
Message Property AmorousAdvStoryBoard2 Auto ;--| AmorousAdvSexMsgBrelynaKiss1
Message Property AmorousAdvStoryBoard3 Auto ;--| AmorousAdvSexMsgBrelynaLover1
Message Property AmorousAdvStoryBoard4 Auto ;--| AmorousAdvSexMsgBrelynaLover2
Message Property AmorousAdvStoryBoard5 Auto ;--| AmorousAdvSexMsgNiryaEnd
Message Property AmorousAdvStoryBoard6 Auto ;--| AmorousAdvSexMsgFaraldaEnd
GlobalVariable Property AmorousAdvUseBlackScreens Auto

;--ACTORS
Actor Property PlayerRef Auto

AmorousAdvUtil Property Util Auto
