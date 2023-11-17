;BEGIN FRAGMENT CODE - Do not edit anything between this and the end comment
;NEXT FRAGMENT INDEX 19
Scriptname AmorousAdvNjadaQst Extends Quest Hidden

;BEGIN ALIAS PROPERTY aAmorousAdvAlias2
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_aAmorousAdvAlias2 Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY aAmorousAdvAlias1
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_aAmorousAdvAlias1 Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY aAmorousAdvAlias3
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_aAmorousAdvAlias3 Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY aAmorousAdvAlias4
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_aAmorousAdvAlias4 Auto
;END ALIAS PROPERTY

;BEGIN FRAGMENT Fragment_2
Function Fragment_2()
;BEGIN CODE
;stage 10
SetObjectiveDisplayed(10, 1)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_9
Function Fragment_9()
;BEGIN CODE
;Stage 50
Game.GetPlayer().AddItem(Alias_aAmorousAdvAlias4.GetReference())
SetObjectiveDisplayed(40, 1)
SetObjectiveCompleted(39, 1)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_7
Function Fragment_7()
;BEGIN CODE
;stage 40
SetObjectiveCompleted(30, 1)
SetObjectiveDisplayed(39, 1)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_14
Function Fragment_14()
;BEGIN AUTOCAST TYPE AmorousAdvNjadaQstUtil
Quest __temp = self as Quest
AmorousAdvNjadaQstUtil kmyQuest = __temp as AmorousAdvNjadaQstUtil
;END AUTOCAST
;BEGIN CODE
;stage 100
;--| Njada a lover
actor akLover = Alias_aAmorousAdvAlias1.GetReference() as Actor
If (akLover.GetRelationshipRank(PlayerRef) < 1)
    akLover.SetRelationshipRank(PlayerRef, 1)
EndIf
kmyQuest.MyNewLover(akLover)
SetObjectiveCompleted(60, 1)
SetStage(200)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_16
Function Fragment_16()
;BEGIN CODE
;stage 200
stop()
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_3
Function Fragment_3()
;BEGIN CODE
;Stage 20
SetObjectiveDisplayed(29, 1)
SetObjectiveCompleted(10, 1)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_5
Function Fragment_5()
;BEGIN CODE
;stage 30
setobjectivedisplayed(30, 1)
SetObjectiveCompleted(29, 1)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_10
Function Fragment_10()
;BEGIN CODE
;stage 60
;--| give Njada note
Alias_aAmorousAdvAlias1.GetActorReference().AddItem(Alias_aAmorousAdvAlias4.GetReference())
SetObjectiveCompleted(40, 1)
SetObjectiveDisplayed(50, 1)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_18
Function Fragment_18()
;BEGIN CODE
;Stage 300
SetObjectiveCompleted(10, 1)
Stop()
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_12
Function Fragment_12()
;BEGIN AUTOCAST TYPE AmorousAdvNjadaQstUtil
Quest __temp = self as Quest
AmorousAdvNjadaQstUtil kmyQuest = __temp as AmorousAdvNjadaQstUtil
;END AUTOCAST
;BEGIN CODE
;stage 70
actor akLover = Alias_aAmorousAdvAlias1.GetReference() as Actor
kmyQuest.AnimateAmorousAdvLoveScene1(akLover)
SetObjectiveCompleted(50, 1)
SetObjectiveDisplayed(60, 1)
;END CODE
EndFunction
;END FRAGMENT

;END FRAGMENT CODE - Do not edit anything between this and the begin comment

Actor Property PlayerRef  Auto  


