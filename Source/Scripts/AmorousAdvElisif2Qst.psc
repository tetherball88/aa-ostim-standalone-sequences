;BEGIN FRAGMENT CODE - Do not edit anything between this and the end comment
;NEXT FRAGMENT INDEX 31
Scriptname AmorousAdvElisif2Qst Extends Quest Hidden

;BEGIN ALIAS PROPERTY aAmorousAdvAlias15
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_aAmorousAdvAlias15 Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY aAmorousAdvAlias10
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_aAmorousAdvAlias10 Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY aAmorousAdvAlias12
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_aAmorousAdvAlias12 Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY aAmorousAdvAlias3
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_aAmorousAdvAlias3 Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY aAmorousAdvAlias6
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_aAmorousAdvAlias6 Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY aAmorousAdvAlias1
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_aAmorousAdvAlias1 Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY aAmorousAdvAlias16
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_aAmorousAdvAlias16 Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY aAmorousAdvAlias14
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_aAmorousAdvAlias14 Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY aAmorousAdvAlias7
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_aAmorousAdvAlias7 Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY aAmorousAdvAlias5
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_aAmorousAdvAlias5 Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY aAmorousAdvAlias8
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_aAmorousAdvAlias8 Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY aAmorousAdvAlias18
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_aAmorousAdvAlias18 Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY aAmorousAdvAlias9
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_aAmorousAdvAlias9 Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY aAmorousAdvAlias13
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_aAmorousAdvAlias13 Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY aAmorousAdvAlias11
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_aAmorousAdvAlias11 Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY aAmorousAdvAlias4
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_aAmorousAdvAlias4 Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY aAmorousAdvAlias17
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_aAmorousAdvAlias17 Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY aAmorousAdvAlias2
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_aAmorousAdvAlias2 Auto
;END ALIAS PROPERTY

;BEGIN FRAGMENT Fragment_1
Function Fragment_1()
;BEGIN CODE
;STAGE 10
SetObjectiveCompleted(5)
SetObjectiveDisplayed(10, 1)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_13
Function Fragment_13()
;BEGIN AUTOCAST TYPE AmorousAdvElisif2QstUtil
Quest __temp = self as Quest
AmorousAdvElisif2QstUtil kmyQuest = __temp as AmorousAdvElisif2QstUtil
;END AUTOCAST
;BEGIN CODE
;---| Stage 37: Elisif kiss
actor akLover = Alias_aAmorousAdvAlias2.GetReference() as Actor
kmyQuest.AnimateAmorousAdvLoveScene1(akLover)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_10
Function Fragment_10()
;BEGIN CODE
;--| STAGE 21
SetStage(24)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_23
Function Fragment_23()
;BEGIN CODE
;--| Stage85
SetObjectiveCompleted(80, 1)
SetObjectiveDisplayed(85, 1)
;--| Lost Echo Cave
Alias_aAmorousAdvAlias17.GetRef().AddToMap()
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_8
Function Fragment_8()
;BEGIN CODE
;--| STAGE 16
SetStage(19)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_24
Function Fragment_24()
;BEGIN AUTOCAST TYPE AmorousAdvElisif2QstUtil
Quest __temp = self as Quest
AmorousAdvElisif2QstUtil kmyQuest = __temp as AmorousAdvElisif2QstUtil
;END AUTOCAST
;BEGIN CODE
;--| Stage90
SetObjectiveCompleted(85, 1)
SetObjectiveDisplayed(90, 1)
SetObjectiveDisplayed(91, 1)
actor akElisif = Alias_aAmorousAdvAlias1.GetReference() as Actor
kmyQuest.RemoveCaptiveFaction(akElisif)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_22
Function Fragment_22()
;BEGIN AUTOCAST TYPE AmorousAdvElisif2QstUtil
Quest __temp = self as Quest
AmorousAdvElisif2QstUtil kmyQuest = __temp as AmorousAdvElisif2QstUtil
;END AUTOCAST
;BEGIN CODE
;--| STAGE 80
SetObjectiveCompleted(75, 1)
SetObjectiveDisplayed(80, 1)
actor akSybille = Alias_aAmorousAdvAlias3.GetReference() as Actor
actor akFalk = Alias_aAmorousAdvAlias11.GetReference() as Actor
akSybille.EvaluatePackage()
akFalk.EvaluatePackage()
;--|Elisif Captured!
actor akElisif = Alias_aAmorousAdvAlias1.GetReference() as Actor
kmyQuest.AddCaptiveFaction(akElisif)
akElisif.Disable()
akElisif.MoveTo(Alias_aAmorousAdvAlias18.GetReference())
akElisif.Enable()
akElisif.EvaluatePackage()
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_18
Function Fragment_18()
;BEGIN AUTOCAST TYPE AmorousAdvElisif2QstUtil
Quest __temp = self as Quest
AmorousAdvElisif2QstUtil kmyQuest = __temp as AmorousAdvElisif2QstUtil
;END AUTOCAST
;BEGIN CODE
;---| Stage 65: Frostflow done
actor akLover = Alias_aAmorousAdvAlias2.GetReference() as Actor
kmyQuest.AnimateAmorousAdvLoveScene2(akLover)
SetObjectiveCompleted(60, 1)
SetObjectiveDisplayed(65, 1)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_15
Function Fragment_15()
;BEGIN CODE
;--|Stage45
;--| Frostflow Lighthouse Marker
Alias_aAmorousAdvAlias8.GetRef().AddToMap()

SetObjectiveCompleted(40, 1)
SetObjectiveDisplayed(46, 1)
SetObjectiveDisplayed(45, 1)

If alias_aAmorousAdvAlias15.getReference().IsDisabled()
    alias_aAmorousAdvAlias15.getReference().Enable()
EndIf
If alias_aAmorousAdvAlias16.getReference().IsDisabled()
    alias_aAmorousAdvAlias16.getReference().Enable()
EndIf
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_14
Function Fragment_14()
;BEGIN CODE
;---| Stage 40: Elisif gives a note, waits for more dialogue
SetObjectiveCompleted(35, 1)
SetObjectiveDisplayed(40, 1)
Game.GetPlayer().AddItem(Alias_aAmorousAdvAlias13.GetReference())
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_21
Function Fragment_21()
;BEGIN CODE
;--| STAGE 75
SetObjectiveCompleted(70, 1)
SetObjectiveDisplayed(75, 1)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_25
Function Fragment_25()
;BEGIN CODE
;--| Stage90
SetObjectiveCompleted(90, 1)
SetObjectiveCompleted(91, 1)
SetObjectiveDisplayed(95, 1)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_0
Function Fragment_0()
;BEGIN AUTOCAST TYPE AmorousAdvElisif2QstUtil
Quest __temp = self as Quest
AmorousAdvElisif2QstUtil kmyQuest = __temp as AmorousAdvElisif2QstUtil
;END AUTOCAST
;BEGIN CODE
;STAGE 5
SetObjectiveDisplayed(5, 1)

AmorousAdvQuestPointer1.Stop()
AmorousAdvQuestPointer1.Start()
AmorousAdvQuestPointer1.SetStage(5)

actor akLover = Alias_aAmorousAdvAlias1.GetReference() as Actor
kmyQuest.RemoveAmorousFactions(akLover)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_7
Function Fragment_7()
;BEGIN CODE
;--| STAGE 12
SetStage(14)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_16
Function Fragment_16()
;BEGIN CODE
;--| stage 50
SetObjectiveCompleted(45, 1)
SetObjectiveCompleted(46, 1)
SetObjectiveDisplayed(50, 1)
SetObjectiveDisplayed(51, 1)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_4
Function Fragment_4()
;BEGIN CODE
;---| Stage 25
SetObjectiveCompleted(20, 1)
SetObjectiveDisplayed(25, 1)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_12
Function Fragment_12()
;BEGIN CODE
;---| Stage 35: meet Elisif Lighthouse
SetObjectiveCompleted(30, 1)
SetObjectiveDisplayed(35, 1)

actor akElisif = Alias_aAmorousAdvAlias2.GetReference() as Actor
akElisif.Disable()
akElisif.MoveTo(Alias_aAmorousAdvAlias7.GetReference())
akElisif.Enable()
akElisif.EvaluatePackage()
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_2
Function Fragment_2()
;BEGIN CODE
;---| Stage 15
SetObjectiveCompleted(10, 1)
SetObjectiveDisplayed(15, 1)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_26
Function Fragment_26()
;BEGIN CODE
;stage 200

Stop()
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_17
Function Fragment_17()
;BEGIN CODE
;--| stage 60
SetObjectiveCompleted(50, 1)
SetObjectiveCompleted(51, 1)
SetObjectiveDisplayed(60, 1)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_9
Function Fragment_9()
;BEGIN CODE
;--| STAGE 17
SetStage(19)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_3
Function Fragment_3()
;BEGIN CODE
;---| Stage 20
SetObjectiveCompleted(15, 1)
SetObjectiveDisplayed(20, 1)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_28
Function Fragment_28()
;BEGIN AUTOCAST TYPE AmorousAdvElisif2QstUtil
Quest __temp = self as Quest
AmorousAdvElisif2QstUtil kmyQuest = __temp as AmorousAdvElisif2QstUtil
;END AUTOCAST
;BEGIN CODE
;---|Stage 91
actor akElisif = Alias_aAmorousAdvAlias1.GetReference() as Actor
akElisif.EvaluatePackage()
kmyQuest.MyNewLover(akElisif)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_6
Function Fragment_6()
;BEGIN CODE
;--| STAGE 11
SetStage(14)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_29
Function Fragment_29()
;BEGIN AUTOCAST TYPE AmorousAdvElisif2QstUtil
Quest __temp = self as Quest
AmorousAdvElisif2QstUtil kmyQuest = __temp as AmorousAdvElisif2QstUtil
;END AUTOCAST
;BEGIN CODE
;--|Stage 100
;--| Elisif + Elisif Love Scene
actor aLover = Alias_aAmorousAdvAlias2.GetReference() as Actor
actor bLover = Alias_aAmorousAdvAlias1.GetReference() as Actor
kmyQuest.AnimateAmorousAdvLoveScene3(aLover,bLover)
SetObjectiveCompleted(95, 1)
SetObjectiveDisplayed(100, 1)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_11
Function Fragment_11()
;BEGIN CODE
;--| STAGE 22
SetStage(24)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_5
Function Fragment_5()
;BEGIN CODE
;---| Stage 30
SetObjectiveCompleted(25, 1)
SetObjectiveDisplayed(30, 1)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_30
Function Fragment_30()
;BEGIN CODE
;--| Stage 105

SetStage(200)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_27
Function Fragment_27()
;BEGIN AUTOCAST TYPE AmorousAdvElisif2QstUtil
Quest __temp = self as Quest
AmorousAdvElisif2QstUtil kmyQuest = __temp as AmorousAdvElisif2QstUtil
;END AUTOCAST
;BEGIN CODE
;stage 300
SetObjectiveCompleted(5)
;--|Add Vanilla Elisif back to lovers faction
actor akLover = Alias_aAmorousAdvAlias1.GetReference() as Actor
kmyQuest.MyNewLover(akLover)
Stop()
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_19
Function Fragment_19()
;BEGIN CODE
;--| STAGE 70
SetObjectiveCompleted(65, 1)
SetObjectiveDisplayed(70, 1)

;--| Chillwind Marker
Alias_aAmorousAdvAlias10.GetRef().AddToMap()

If alias_aAmorousAdvAlias14.getReference().IsDisabled()
    alias_aAmorousAdvAlias14.getReference().Enable()
EndIf
;END CODE
EndFunction
;END FRAGMENT

;END FRAGMENT CODE - Do not edit anything between this and the begin comment

Quest Property AmorousAdvQuestPointer1 Auto

