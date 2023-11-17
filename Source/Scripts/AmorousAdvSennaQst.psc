;BEGIN FRAGMENT CODE - Do not edit anything between this and the end comment
;NEXT FRAGMENT INDEX 10
Scriptname AmorousAdvSennaQst Extends Quest Hidden

;BEGIN ALIAS PROPERTY aAmorousAdvAlias2
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_aAmorousAdvAlias2 Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY aAmorousAdvAlias1
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_aAmorousAdvAlias1 Auto
;END ALIAS PROPERTY

;BEGIN FRAGMENT Fragment_3
Function Fragment_3()
;BEGIN CODE
;stage 20
SetObjectiveCompleted(10, 1)
SetObjectiveDisplayed(20, 1)
;--| Advance Annekke quest
AmorousAdvQuestPointer2.SetStage(70)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_5
Function Fragment_5()
;BEGIN CODE
;STAGE 5
SetObjectiveDisplayed(10, 1)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_9
Function Fragment_9()
;BEGIN AUTOCAST TYPE AmorousAdvSennaQstUtil
Quest __temp = self as Quest
AmorousAdvSennaQstUtil kmyQuest = __temp as AmorousAdvSennaQstUtil
;END AUTOCAST
;BEGIN CODE
;Stage 40
actor akLover = Alias_aAmorousAdvAlias1.GetReference() as Actor
kmyQuest.AnimateAmorousAdvLoveScene1(akLover)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_7
Function Fragment_7()
;BEGIN AUTOCAST TYPE AmorousAdvSennaQstUtil
Quest __temp = self as Quest
AmorousAdvSennaQstUtil kmyQuest = __temp as AmorousAdvSennaQstUtil
;END AUTOCAST
;BEGIN CODE
;Stage 50
;--| Advance Sylgja quest
AmorousAdvQuestPointer1.SetStage(80)
;--| Senna
actor akLover = Alias_aAmorousAdvAlias1.GetReference() as Actor
If (akLover.GetRelationshipRank(PlayerRef) < 1)
    akLover.SetRelationshipRank(PlayerRef, 1)
EndIf
kmyQuest.MyNewLover(akLover)
SetObjectiveCompleted(30, 1)
SetStage(200)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_8
Function Fragment_8()
;BEGIN CODE
;stage 200
stop()
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_2
Function Fragment_2()
;BEGIN CODE
;stage 10
; Set by Sylgja quest at Stage 70
;END CODE
EndFunction
;END FRAGMENT

;END FRAGMENT CODE - Do not edit anything between this and the begin comment

Actor Property PlayerRef  Auto 
Quest Property AmorousAdvQuestPointer1 Auto  ;--|  SexLabAmorousAdventuresSylgja
Quest Property AmorousAdvQuestPointer2 Auto  ;--|  SexLabAmorousAdventuresAnnekke

