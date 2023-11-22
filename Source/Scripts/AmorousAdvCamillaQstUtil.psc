Scriptname AmorousAdvCamillaQstUtil extends Quest  Conditional

;========[ Faction Functions ]=====================

Function MyNewLover(actor aLover)
	aLover.AddToFaction(AmorAdvLoverFaction)
	aLover.SetFactionRank(AmorAdvLoverFaction, 1)
EndFunction

;========[ Animate Functions ]=====================
Function AnimateAmorousAdvLoveScene1 (actor aLover)

    ;---| STORYBOARD DISPLAY
    Debug.Trace("Amorous Adventures: AnimateMyLover: Camilla on Bridge ")
    If(AmorousAdvUseBlackScreens.GetValue() == 1)
        AmorousAdvStoryBoard1.Show()
    EndIf

;---| BEGIN ANIMATION CODE |------

    ;--| Camilla gives the player oral
    Util.StartOralScene(PlayerRef, aLover)

;---| END ANIMATION CODE |------

EndFunction

Function AnimateAmorousAdvLoveScene2 (actor aLover)

    ;---| STORYBOARD DISPLAY
    ;---| Player offered their body to Orgnar the innkeeper
    Debug.Trace("Amorous Adventures: AnimateMyLover: Bribe")
    AmorousAdvStoryBoard2.Show()

;---| BEGIN ANIMATION CODE |------

    ;--| player bribed Orgnar with their body - sex ensues
    ;--| Yeah... we're just skipping this for OSex.
    Util.StartNomalScene(PlayerRef, aLover)

;---| END ANIMATION CODE |------

EndFunction

Function AnimateAmorousAdvLoveScene3 (actor aLover)

    ;---| STORYBOARD DISPLAY
    Debug.Trace("Amorous Adventures: AnimateMyLover: Camilla ")
    If(AmorousAdvUseBlackScreens.GetValue() == 1)
        AmorousAdvStoryBoard3.Show()
    EndIf

;---| BEGIN ANIMATION CODE |------

    ;--| Player makes love with Camilla
    Util.StartNomalScene(PlayerRef, aLover)

;---| END ANIMATION CODE |------

EndFunction

;--FACTIONS
Faction Property AmorAdvLoverFaction Auto

;--FADE TO BLACK STORYBOARDS
Message Property AmorousAdvStoryBoard1 Auto ; AmorousAdvSexMsgCamillaBridge
Message Property AmorousAdvStoryBoard2 Auto ; AmorAdvLoveHappensMSG
Message Property AmorousAdvStoryBoard3 Auto ; AmorousAdvSexMsgCamillaEnd
GlobalVariable Property AmorousAdvUseBlackScreens Auto

;--ACTORS
Actor Property PlayerRef Auto

AmorousAdvUtil Property Util Auto
