Scriptname AmorousAdvPersuadesQstUtil extends Quest

;========[ Faction Functions ]=====================
Function MyNewLover(actor aLover)
	aLover.AddToFaction(AmorAdvLoverFaction)
	aLover.SetFactionRank(AmorAdvLoverFaction, 1)
EndFunction

;========[ Animation Functions ]=====================
Function AnimateAmorousAdvLoveScene1 (actor aLover)

    ;---| STORYBOARD DISPLAY
    ; Saadia
    Debug.Trace("AnimateMyLover: Persuades Saadia ")

    If(AmorousAdvUseBlackScreensNew.GetValue() == 1 && AmorousAdvStoryBoard3)
        AmorousAdvStoryBoard3.Show()
    EndIf

;---| BEGIN ANIMATION CODE |------

    ;--| Sex scene with whoever the NPC is
    Util.StartUniqueSequence(PlayerRef, aLover, "amor_saadia_bannered_mare_regular_bed", "bed")

;---| END ANIMATION CODE |------

EndFunction

Function AnimateAmorousAdvLoveScene2 (actor aLover)

    ;---| STORYBOARD DISPLAY
    ; Saadia
    Debug.Trace("AnimateMyLover: Persuades Aranea ")
    If(AmorousAdvUseBlackScreensNew.GetValue() == 1 && AmorousAdvStoryBoard2)
        AmorousAdvStoryBoard2.Show()
    EndIf

;---| BEGIN ANIMATION CODE |------

    ;--| Sex scene with whoever the NPC is
    ; Aranea
    Util.StartUniqueSequence(PlayerRef, aLover, "amor_aranea_shrine_of_azura_regular")

;---| END ANIMATION CODE |------

EndFunction

;--FACTIONS
Faction Property AmorAdvLoverFaction Auto

;--FADE TO BLACK STORYBOARDS
Message Property AmorousAdvStoryBoard1 Auto  ;--| AmorAdvLoveHappensMSG
Message Property AmorousAdvStoryBoard2 Auto  ;--| AmorAdvSexMsgAraneasDuty
Message Property AmorousAdvStoryBoard3 Auto  ;--| AmorAdvSexMsgSaadiasReward
GlobalVariable Property AmorousAdvUseBlackScreensNew Auto

;--ACTORS
Actor Property PlayerRef Auto

AmorousAdvUtil Property Util Auto
