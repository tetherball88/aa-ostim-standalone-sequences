;BEGIN FRAGMENT CODE - Do not edit anything between this and the end comment
;NEXT FRAGMENT INDEX 9
Scriptname AmorousAdvRikkeQst Extends Quest Hidden

;BEGIN ALIAS PROPERTY aAmorousAdvAlias2
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_aAmorousAdvAlias2 Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY aAmorousAdvAlias3
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_aAmorousAdvAlias3 Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY aAmorousAdvAlias1
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_aAmorousAdvAlias1 Auto
;END ALIAS PROPERTY

;BEGIN FRAGMENT Fragment_5
Function Fragment_5()
;BEGIN AUTOCAST TYPE AmorousAdvRikkeQstUtil
Quest __temp = self as Quest
AmorousAdvRikkeQstUtil kmyQuest = __temp as AmorousAdvRikkeQstUtil
;END AUTOCAST
;BEGIN CODE
;---| Stage 50
actor akLover = Alias_aAmorousAdvAlias1.GetReference() as Actor
If (akLover.GetRelationshipRank(PlayerRef) < 1)
    akLover.SetRelationshipRank(PlayerRef, 1)
EndIf
kmyQuest.MyNewLover(akLover)
SetObjectiveCompleted(40, 1)
SetStage(200)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_0
Function Fragment_0()
;BEGIN CODE
;STAGE 5 - we joined the legion
SetObjectiveDisplayed(5)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_3
Function Fragment_3()
;BEGIN AUTOCAST TYPE AmorousAdvRikkeQstUtil
Quest __temp = self as Quest
AmorousAdvRikkeQstUtil kmyQuest = __temp as AmorousAdvRikkeQstUtil
;END AUTOCAST
;BEGIN CODE
;Stage 30
actor akRikke = Alias_aAmorousAdvAlias1.GetReference() as Actor
kmyQuest.AnimateAmorousAdvLoveScene1(akRikke)
SetObjectiveCompleted(20, 1)
SetObjectiveDisplayed(30, 1)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_1
Function Fragment_1()
;BEGIN CODE
;--| STAGE 10 - We got past battle of Whiterun
SetObjectiveCompleted(5, 1)
SetObjectiveDisplayed(10, 1)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_8
Function Fragment_8()
;BEGIN AUTOCAST TYPE AmorousAdvRikkeQstUtil
Quest __temp = self as Quest
AmorousAdvRikkeQstUtil kmyQuest = __temp as AmorousAdvRikkeQstUtil
;END AUTOCAST
;BEGIN CODE
;Stage 40
actor akRikke = Alias_aAmorousAdvAlias1.GetReference() as Actor
kmyQuest.AnimateAmorousAdvLoveScene2(akRikke)
SetObjectiveCompleted(30, 1)
SetObjectiveDisplayed(40, 1)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_6
Function Fragment_6()
;BEGIN CODE
;STAGE 400
SetObjectiveCompleted(5, 1)
stop()
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_2
Function Fragment_2()
;BEGIN CODE
;--| STAGE 20 - Must be in Eastmarch
SetObjectiveCompleted(10, 1)
SetObjectiveDisplayed(20, 1)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_7
Function Fragment_7()
;BEGIN CODE
;stage 200
stop()
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_4
Function Fragment_4()
;BEGIN CODE
;Stage 300
Stop()
;END CODE
EndFunction
;END FRAGMENT

;END FRAGMENT CODE - Do not edit anything between this and the begin comment

Actor Property PlayerRef  Auto 
