;BEGIN FRAGMENT CODE - Do not edit anything between this and the end comment
;NEXT FRAGMENT INDEX 7
Scriptname AmorousAdvSybilleQst Extends Quest Hidden

;BEGIN ALIAS PROPERTY aAmorousAdvAlias1
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_aAmorousAdvAlias1 Auto
;END ALIAS PROPERTY

;BEGIN FRAGMENT Fragment_0
Function Fragment_0()
;BEGIN CODE
;stage 10
SetObjectiveCompleted(1, 1)
SetObjectiveDisplayed(10, 1)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_5
Function Fragment_5()
;BEGIN AUTOCAST TYPE AmorousAdvSybilleQstUtil
Quest __temp = self as Quest
AmorousAdvSybilleQstUtil kmyQuest = __temp as AmorousAdvSybilleQstUtil
;END AUTOCAST
;BEGIN CODE
;stage 20
actor akLover = Alias_aAmorousAdvAlias1.GetReference() as Actor
kmyQuest.AnimateAmorousAdvLoveScene1(akLover)
SetObjectiveCompleted(10, 1)
SetObjectiveDisplayed(20, 1)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_4
Function Fragment_4()
;BEGIN CODE
;stage 200
stop()
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_2
Function Fragment_2()
;BEGIN AUTOCAST TYPE AmorousAdvSybilleQstUtil
Quest __temp = self as Quest
AmorousAdvSybilleQstUtil kmyQuest = __temp as AmorousAdvSybilleQstUtil
;END AUTOCAST
;BEGIN CODE
;Stage 30
SetObjectiveCompleted(20, 1)
actor akSybille = Alias_aAmorousAdvAlias1.GetReference() as Actor
kmyQuest.MyNewLover(akSybille)
If (akSybille.GetRelationshipRank(PlayerRef) < 1)
    akSybille.SetRelationshipRank(PlayerRef, 1)
EndIf
SetStage(200)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_6
Function Fragment_6()
;BEGIN CODE
;Stage 1
SetObjectiveDisplayed(1, 1)
;END CODE
EndFunction
;END FRAGMENT

;END FRAGMENT CODE - Do not edit anything between this and the begin comment

Actor Property PlayerRef  Auto


