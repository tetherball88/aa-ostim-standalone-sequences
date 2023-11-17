;BEGIN FRAGMENT CODE - Do not edit anything between this and the end comment
;NEXT FRAGMENT INDEX 18
Scriptname AmorousAdvWidowQst Extends Quest Hidden

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

;BEGIN ALIAS PROPERTY aAmorousAdvAlias4
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_aAmorousAdvAlias4 Auto
;END ALIAS PROPERTY

;BEGIN FRAGMENT Fragment_5
Function Fragment_5()
;BEGIN CODE
;Stage 40
If alias_aAmorousAdvAlias3.getReference().IsEnabled()
    alias_aAmorousAdvAlias3.getReference().Disable(true)
EndIf
SetObjectiveCompleted(30, 1)
SetObjectiveDisplayed(40, 1)
actor akErikur = Alias_aAmorousAdvAlias2.GetReference() as Actor
akErikur.EvaluatePackage()
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_2
Function Fragment_2()
;BEGIN CODE
;stage 20
SetObjectiveCompleted(10, 1)
SetObjectiveDisplayed(20, 1)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_13
Function Fragment_13()
;BEGIN CODE
;stage 200
stop()
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_0
Function Fragment_0()
;BEGIN CODE
;stage 10
SetObjectiveDisplayed(10, 1)
AmorousAdvQuestPointer1.Start()
AmorousAdvQuestPointer2.Start()
AmorousAdvQuestPointer3.Start()
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_3
Function Fragment_3()
;BEGIN CODE
;Stage 30
actor akErikur = Alias_aAmorousAdvAlias2.GetReference() as Actor
akErikur.EvaluatePackage()
If alias_aAmorousAdvAlias3.getReference().IsDisabled()
    alias_aAmorousAdvAlias3.getReference().Enable()
EndIf
SetObjectiveCompleted(20, 1)
SetObjectiveDisplayed(30, 1)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_9
Function Fragment_9()
;BEGIN CODE
;Stage 42
SetObjectiveCompleted(41, 1)
;SetStage(50)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_17
Function Fragment_17()
;BEGIN CODE
;STAGE 300
SetObjectiveCompleted(10, 1)
AmorousAdvQuestPointer1.Stop()
AmorousAdvQuestPointer2.Stop()
AmorousAdvQuestPointer3.Stop()
Stop()
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_7
Function Fragment_7()
;BEGIN CODE
;Stage 41
actor akSybille = Alias_aAmorousAdvAlias4.GetReference() as Actor
actor akElisif = Alias_aAmorousAdvAlias1.GetReference() as Actor
akSybille.EvaluatePackage()
akElisif.EvaluatePackage()
SetObjectiveCompleted(40, 1)
SetObjectiveDisplayed(41, 1)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_15
Function Fragment_15()
;BEGIN CODE
;Stage 60
SetObjectiveCompleted(50, 1)
AmorousAdvQuestPointer2.SetStage(1)
AmorousAdvQuestPointer3.SetStage(1)
SetStage(200)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_11
Function Fragment_11()
;BEGIN CODE
;Stage 50
actor akElisif = Alias_aAmorousAdvAlias1.GetReference() as Actor
akElisif.EvaluatePackage()
SetObjectiveDisplayed(50, 1)
;END CODE
EndFunction
;END FRAGMENT

;END FRAGMENT CODE - Do not edit anything between this and the begin comment

Quest Property AmorousAdvQuestPointer1 Auto  ;--|  AmorousAdventuresQuestSaverSolitude
Quest Property AmorousAdvQuestPointer2 Auto  ;--|  SexLabAmorousAdventuresSybille
Quest Property AmorousAdvQuestPointer3 Auto  ;--|  SexLabAmorousAdventuresLisette

