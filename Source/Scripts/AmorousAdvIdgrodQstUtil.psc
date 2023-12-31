Scriptname AmorousAdvIdgrodQstUtil extends Quest

;========[ Faction Functions ]=====================

Function MyNewLover(actor aLover)
	aLover.AddToFaction(AmorAdvLoverFaction)
	aLover.SetFactionRank(AmorAdvLoverFaction, 1)
EndFunction

;========[ Animation Functions ]=====================
Function AnimateAmorousAdvLoveScene1 (actor aLover)

    Debug.Trace("Amorous Adventures: AnimateMyLover: Jonna ")

    If(AmorousAdvUseBlackScreens.GetValue() == 1)
        AmorousAdvStoryBoard1.Show()
    EndIf

;---| BEGIN ANIMATION CODE |------

    ;--| Player and Jonna make love
    Util.StartUniqueSequence(PlayerRef, aLover, "amor_jonna_moorside_inn_wall", "wall")

;---| END ANIMATION CODE |------

EndFunction

Function AnimateAmorousAdvLoveScene2 (actor aLover)

    Debug.Trace("AnimateMyLover: Solo ")
    If(AmorousAdvUseBlackScreens.GetValue() == 1)
        AmorousAdvStoryBoard2.Show()
    EndIf

;---| BEGIN ANIMATION CODE |------

    ;--| Idgrod the younger masturbates solo. Player watches.
    Util.StartUniqueSequence(PlayerRef, aLover, "amor_idgrod_morthal_marshes_solo", theme = "solo")

;---| END ANIMATION CODE |------

EndFunction

Function AnimateAmorousAdvLoveScene3 (actor aLover)

    Debug.Trace("Amorous Adventures: AnimateMyLover: Idgrod ")
    If(AmorousAdvUseBlackScreens.GetValue() == 1)
        AmorousAdvStoryBoard3.Show()
    EndIf

;---| BEGIN ANIMATION CODE |------

    ;--| Player and Idgrod The Younger make love
    Util.StartUniqueSequence(PlayerRef, aLover, "amor_idgrod_highmoon_hall_chair", "chair")

;---| END ANIMATION CODE |------

EndFunction

;--FACTIONS
Faction Property AmorAdvLoverFaction Auto

;--FADE TO BLACK STORYBOARDS
Message Property AmorousAdvStoryBoard1 Auto  ;--| AmorousAdvSexMsgJonnaEnd
Message Property AmorousAdvStoryBoard2 Auto  ;--| AmorousAdvSexMsgIdgrodCircle
Message Property AmorousAdvStoryBoard3 Auto  ;--| AmorousAdvSexMsgIdgrodEnd
GlobalVariable Property AmorousAdvUseBlackScreens Auto

;--ACTORS
Actor Property PlayerRef Auto

AmorousAdvUtil Property Util Auto
