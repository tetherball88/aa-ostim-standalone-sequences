Scriptname AmorousAdvBearQstUtil extends Quest  

;========[ Faction Functions ]=====================

Function MyNewLover(actor aLover)
	aLover.AddToFaction(AmorAdvLoverFaction)
	aLover.SetFactionRank(AmorAdvLoverFaction, 1)
EndFunction

;========[ Animation Functions ]=====================

Function AnimateAmorousAdvLoveScene1 (actor aLover)

    ;---| STORYBOARD DISPLAY
    ;---| TEMBA First Love Scene 
    Debug.Trace("Amorous Adventures: AnimateMyLover: Temba ")
    If(AmorousAdvUseBlackScreens.GetValue() == 1)
        AmorousAdvStoryBoard1.Show()
    EndIf

;---| BEGIN ANIMATION CODE |------

    ;--| Banging Temba behind Ivarstead Inn
    Util.StartNomalScene(PlayerRef, aLover);LATER

;---| END ANIMATION CODE |------

EndFunction

Function AnimateAmorousAdvLoveScene2 (actor aLover)

    ;---| STORYBOARD DISPLAY
    ;---| RIA
    Debug.Trace("AnimateMyLover: Ria Kiss ")
    If(AmorousAdvUseBlackScreens.GetValue() == 1)
        AmorousAdvStoryBoard2.Show()
    EndIf

;---| BEGIN ANIMATION CODE |------

    ;--| A romantic kiss only
    Util.StartKissingScene(PlayerRef, aLover)

;---| END ANIMATION CODE |------

EndFunction

Function AnimateAmorousAdvLoveScene3 (actor aLover, actor bLover)

    ;---| STORYBOARD DISPLAY
    ;---| RIA AND LYNLY KISSING
    Debug.Trace("AnimateMyLover: Ria Lynly Kiss ")
    If(AmorousAdvUseBlackScreens.GetValue() == 1)
        AmorousAdvStoryBoard3.Show()
    EndIf

;---| BEGIN ANIMATION CODE |------

     ;---| Lynly and Ria kiss each other, only a kiss ... player watches
     ;---| OSex doesn't handle a scene with two NPC's kissing
    Util.StartKissingScene(aLover, bLover)

;---| END ANIMATION CODE |------

EndFunction

Function AnimateAmorousAdvLoveScene4 (actor aLover, actor bLover)

    ;---| STORYBOARD DISPLAY
	Debug.Trace("AnimateMyLover: Ria and Lynly")
    If(AmorousAdvUseBlackScreens.GetValue() == 1)
        AmorousAdvStoryBoard4.Show()
    EndIf

;---| BEGIN ANIMATION CODE |------

    ;--| Threesome with player
    ;--| aLover = Lynly
    ;--| bLover = Ria
    ;--| OSex has no threesome functionality, use Lynly
    Util.StartThreesomeScene(PlayerRef, aLover, bLover)

;---| END ANIMATION CODE |------

EndFunction

Function AnimateAmorousAdvLoveScene5 (actor aLover)

    ;---| STORYBOARD DISPLAY
    ;---| TEMBA First Love Scene 
    Debug.Trace("Amorous Adventures: AnimateMyLover: Ria ")
    If(AmorousAdvUseBlackScreens.GetValue() == 1)
        AmorousAdvStoryBoard5.Show()
    EndIf

;---| BEGIN ANIMATION CODE |------

    ;--| Final scene - make love with Ria
    Util.StartNomalScene(PlayerRef, aLover)

;---| END ANIMATION CODE |------

EndFunction

;--FACTIONS
Faction Property AmorAdvLoverFaction Auto

;--FADE TO BLACK STORYBOARDS
Message Property AmorousAdvStoryBoard1 Auto ;--| AmorousAdvSexMsgTembaLover1
Message Property AmorousAdvStoryBoard2 Auto ;--| AmorousAdvSexMsgRiaKiss1
Message Property AmorousAdvStoryBoard3 Auto ;--| AmorousAdvSexMsgRiaLynlyKiss
Message Property AmorousAdvStoryBoard4 Auto ;--| AmorousAdvSexMsgRiaLynlyLovers
Message Property AmorousAdvStoryBoard5 Auto ;--| AmorousAdvSexMsgRiaLover1
GlobalVariable Property AmorousAdvUseBlackScreens Auto

;--ACTORS
Actor Property PlayerRef Auto

AmorousAdvUtil Property Util Auto

