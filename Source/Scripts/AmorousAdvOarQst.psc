;BEGIN FRAGMENT CODE - Do not edit anything between this and the end comment
;NEXT FRAGMENT INDEX 10
Scriptname AmorousAdvOarQst Extends Quest Hidden

;BEGIN ALIAS PROPERTY aAmorousAdvAlias3
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_aAmorousAdvAlias3 Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY aForHag
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_aForHag Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY aMelee02
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_aMelee02 Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY aAmorousAdvAlias5
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_aAmorousAdvAlias5 Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY aAmorousAdvAlias4
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_aAmorousAdvAlias4 Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY aMelee03
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_aMelee03 Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY aMissile03
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_aMissile03 Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY aMelee05
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_aMelee05 Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY aMelee04
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_aMelee04 Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY aSham02
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_aSham02 Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY aAmorousAdvAlias2
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_aAmorousAdvAlias2 Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY aSham01
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_aSham01 Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY aForMelee
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_aForMelee Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY aForMissile
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_aForMissile Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY aForSham
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_aForSham Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY aSham03
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_aSham03 Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY aMissile02
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_aMissile02 Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY aAmorousAdvAlias1
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_aAmorousAdvAlias1 Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY aMissile01
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_aMissile01 Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY aMelee01
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_aMelee01 Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY aMissile04
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_aMissile04 Auto
;END ALIAS PROPERTY

;BEGIN FRAGMENT Fragment_2
Function Fragment_2()
;BEGIN CODE
;stage 20
SetObjectiveCompleted(10, 1)
SetObjectiveDisplayed(20, 1)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_4
Function Fragment_4()
;BEGIN CODE
;Stage 30
SetObjectiveCompleted(20, 1)
SetObjectiveDisplayed(30, 1)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_7
Function Fragment_7()
;BEGIN CODE
;stage 70
SetObjectiveCompleted(60, 1)
SetObjectiveDisplayed(70, 1)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_0
Function Fragment_0()
;BEGIN CODE
;stage 10
SetObjectiveDisplayed(10, 1)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_5
Function Fragment_5()
;BEGIN CODE
;Stage 40
SetObjectiveCompleted(30, 1)
SetObjectiveDisplayed(40, 1)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_8
Function Fragment_8()
;BEGIN CODE
;Stage 80
SetObjectiveCompleted(70, 1)
Alias_aAmorousAdvAlias2.GetActorReference().AddItem(Alias_aAmorousAdvAlias5.GetReference())
SetStage(200)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_9
Function Fragment_9()
;BEGIN CODE
;stage 200
If alias_aForHag.getReference().IsEnabled()
    alias_aForHag.getReference().Disable()
EndIf
If alias_aForSham.getReference().IsEnabled()
    alias_aForSham.getReference().Disable()
EndIf
If alias_aForMelee.getReference().IsEnabled()
    alias_aForMelee.getReference().Disable()
EndIf
If alias_aForMissile.getReference().IsEnabled()
    alias_aForMissile.getReference().Disable()
EndIf
If alias_aAmorousAdvAlias4.getReference().IsEnabled()
    alias_aAmorousAdvAlias4.getReference().Disable()
EndIf
If alias_aAmorousAdvAlias5.getReference().IsEnabled()
    alias_aAmorousAdvAlias5.getReference().Disable()
EndIf
Stop()
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_3
Function Fragment_3()
;BEGIN AUTOCAST TYPE AmorousAdvOarQstUtil
Quest __temp = self as Quest
AmorousAdvOarQstUtil kmyQuest = __temp as AmorousAdvOarQstUtil
;END AUTOCAST
;BEGIN CODE
;Stage 50
If alias_aForHag.getReference().IsDisabled()
    alias_aForHag.getReference().Enable()
EndIf
If alias_aForSham.getReference().IsDisabled()
    alias_aForSham.getReference().Enable()
EndIf
If alias_aForMelee.getReference().IsDisabled()
    alias_aForMelee.getReference().Enable()
EndIf
If alias_aForMissile.getReference().IsDisabled()
    alias_aForMissile.getReference().Enable()
EndIf
If alias_aAmorousAdvAlias4.getReference().IsDisabled()
    alias_aAmorousAdvAlias4.getReference().Enable()
EndIf
If alias_aMelee01.getReference().IsDisabled()
    alias_aMelee01.getReference().Enable()
EndIf
If alias_aMelee02.getReference().IsDisabled()
    alias_aMelee02.getReference().Enable()
EndIf
If alias_aMelee03.getReference().IsDisabled()
    alias_aMelee03.getReference().Enable()
EndIf
If alias_aMelee04.getReference().IsDisabled()
    alias_aMelee04.getReference().Enable()
EndIf
If alias_aMelee05.getReference().IsDisabled()
    alias_aMelee05.getReference().Enable()
EndIf
If alias_aMissile01.getReference().IsDisabled()
    alias_aMissile01.getReference().Enable()
EndIf
If alias_aMissile02.getReference().IsDisabled()
    alias_aMissile02.getReference().Enable()
EndIf
If alias_aMissile03.getReference().IsDisabled()
    alias_aMissile03.getReference().Enable()
EndIf
If alias_aMissile04.getReference().IsDisabled()
    alias_aMissile04.getReference().Enable()
EndIf
If alias_aSham01.getReference().IsDisabled()
    alias_aSham01.getReference().Enable()
EndIf
If alias_aSham02.getReference().IsDisabled()
    alias_aSham02.getReference().Enable()
EndIf
If alias_aSham03.getReference().IsDisabled()
    alias_aSham03.getReference().Enable()
EndIf
SetObjectiveCompleted(40, 1)
SetObjectiveDisplayed(50, 1)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_6
Function Fragment_6()
;BEGIN CODE
;stage 60
SetObjectiveCompleted(50, 1)
SetObjectiveDisplayed(60, 1)
;END CODE
EndFunction
;END FRAGMENT

;END FRAGMENT CODE - Do not edit anything between this and the begin comment
