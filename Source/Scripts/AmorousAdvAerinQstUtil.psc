Scriptname AmorousAdvAerinQstUtil extends Quest

;========[ Faction Functions ]=====================

Function MyNewLover(actor aLover)
	aLover.AddToFaction(AmorAdvLoverFaction)
	aLover.SetFactionRank(AmorAdvLoverFaction, 1)
EndFunction

Function EnterMjollsHouseFaction(actor aActor)
	aActor.AddToFaction(RiftenMjollHouseFaction)
EndFunction

Function ExitMjollsHouseFaction(actor aActor)
	aActor.RemoveFromFaction(RiftenMjollHouseFaction)
EndFunction

Function EnterRiftenCrimeFaction(actor aActor)
	aActor.AddToFaction(CrimeFactionRift)
EndFunction

Function ExitRiftenCrimeFaction(actor aActor)
	aActor.RemoveFromFaction(CrimeFactionRift)
EndFunction

Function EnterTownRiftenFaction(actor aActor)
	aActor.AddToFaction(TownRiftenFaction)
EndFunction

Function ExitTownRiftenFaction(actor aActor)
	aActor.RemoveFromFaction(TownRiftenFaction)
EndFunction

Function EnterHagFaction(actor aActor)
	aActor.AddToFaction(HagravenFaction)
EndFunction

Function ExitHagFaction(actor aActor)
	aActor.RemoveFromFaction(HagravenFaction)
EndFunction

;========[ Animation Functions ]=====================
Function AnimateAmorousAdvLoveScene1 (actor aLover)

    ;---| STORYBOARD DISPLAY
    ;---| ILLIA
    Debug.Trace("Amorous Adventures: AnimateMyLover: Illia ")
    If(AmorousAdvUseBlackScreens.GetValue() == 1)
        AmorousAdvStoryBoard1.Show()
    EndIf

;---| BEGIN ANIMATION CODE |------

    ;--| A love scene
    Util.StartUniqueSequence(PlayerRef, aLover, "amor_illia_darklight_tower_outside_regular")

;---| END ANIMATION CODE |------

EndFunction

Function AnimateAmorousAdvLoveScene2 (actor aLover)

    ;---| STORYBOARD DISPLAY
    ;---| MJOLL
    Debug.Trace("Amorous Adventures: AnimateMyLover: Mjoll ")
    If(AmorousAdvUseBlackScreens.GetValue() == 1)
        AmorousAdvStoryBoard2.Show()
    EndIf

;---| BEGIN ANIMATION CODE |------

    ;--| A love scene
    Util.StartUniqueSequence(PlayerRef, aLover, "amor_mjoll_aerins_house_regular_bed", "bed")

;---| END ANIMATION CODE |------

EndFunction

Function AnimateAmorousAdvLoveScene3 (actor aLover)

    ;---| STORYBOARD DISPLAY
    ;---| SAPPHIRE
    Debug.Trace("Amorous Adventures: AnimateMyLover: Sapphire ")
    If(AmorousAdvUseBlackScreens.GetValue() == 1)
        AmorousAdvStoryBoard3.Show()
    EndIf

;---| BEGIN ANIMATION CODE |------

    ;--| A love scene
    Util.StartUniqueSequence(PlayerRef, aLover, "amor_sapphire_aerins_house_regular_bed", "bed")

;---| END ANIMATION CODE |------

EndFunction

Function AnimateAmorousAdvLoveScene4 (actor aLover)

    ;---| STORYBOARD DISPLAY
    ;---| INGUN
    Debug.Trace("Amorous Adventures: AnimateMyLover: Ingun ")
    If(AmorousAdvUseBlackScreens.GetValue() == 1)
        AmorousAdvStoryBoard4.Show()
    EndIf

;---| BEGIN ANIMATION CODE |------

    ;--| A love scene
    Util.StartUniqueSequence(PlayerRef, aLover, "amor_ingun_aerins_house_regular_bed", "bed")

;---| END ANIMATION CODE |------

EndFunction

;========[ Spawn Badguy Functions ]=====================
Function SpawnSomeHags(actor aActor)

	Actor SpawnedShockHag
	Actor SpawnedFrostHag
	Actor SpawnedFireHag
	SpawnedShockHag = aActor.Placeactoratme(ShockHag)
	SpawnedFrostHag = aActor.Placeactoratme(FrostHag)
	SpawnedFireHag = aActor.Placeactoratme(FireHag)

EndFunction

Function TeleportNpcToAerinsHouse(Actor npc) 
    if(AmorAerinHouseMarker)
        npc.MoveTo(AmorAerinHouseMarker)
    else
        Debug.Trace("AA Sequences: Didn't find AmorAerinHouseMarker property")
    endif
EndFunction

 

;--FACTIONS
Faction Property AmorAdvLoverFaction Auto
Faction Property RiftenMjollHouseFaction Auto
Faction Property CrimeFactionRift Auto
Faction Property TownRiftenFaction Auto
Faction Property HagravenFaction Auto

;--FADE TO BLACK STORYBOARDS
Message Property AmorousAdvStoryBoard1 Auto
Message Property AmorousAdvStoryBoard2 Auto
Message Property AmorousAdvStoryBoard3 Auto
Message Property AmorousAdvStoryBoard4 Auto
GlobalVariable Property AmorousAdvUseBlackScreens Auto

;--ACTORS
Actorbase Property ShockHag Auto
Actorbase Property FireHag Auto
Actorbase Property FrostHag Auto
Actor Property PlayerRef Auto

AmorousAdvUtil Property Util Auto
ObjectReference Property AmorAerinHouseMarker Auto
