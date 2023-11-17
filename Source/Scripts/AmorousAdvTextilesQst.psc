;BEGIN FRAGMENT CODE - Do not edit anything between this and the end comment
;NEXT FRAGMENT INDEX 11
Scriptname AmorousAdvTextilesQst Extends Quest Hidden

;BEGIN ALIAS PROPERTY aPlayer
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_aPlayer Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY aChest
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_aChest Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY aTaarie
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_aTaarie Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY aNote
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_aNote Auto
;END ALIAS PROPERTY

;BEGIN FRAGMENT Fragment_0
Function Fragment_0()
;BEGIN CODE
;Stage 10
Alias_aChest.GetReference().AddItem(pPearlTex,4)
Alias_aChest.GetReference().AddItem(pTuskTex,2)
Alias_aChest.GetReference().AddItem(pNirnTex,1)
If alias_aChest.getReference().IsDisabled()
    alias_aChest.getReference().Enable()
EndIf
SetStage(20)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_6
Function Fragment_6()
;BEGIN CODE
;Stage 50
;Brought 1 red nirn
SetObjectiveCompleted(35,1)
Game.GetPlayer().RemoveItem(pNirnTex,1)
texCount.Value += 1

if texCount.Value >= 4
SetStage(70)
endif
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_8
Function Fragment_8()
;BEGIN CODE
;stage 200
CompleteAllObjectives()
Stop()
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_2
Function Fragment_2()
;BEGIN CODE
;stage 20
AATextilesQstUtil.PearlCounted()
AATextilesQstUtil.TuskCounted()
AATextilesQstUtil.NirnCounted()
SetObjectiveDisplayed(40,1)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_7
Function Fragment_7()
;BEGIN CODE
;Stage 60
;Brought Hags Linen
SetObjectiveCompleted(45,1)
texCount.Value += 1

if texCount.Value >= 4
SetStage(70)
endif
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_3
Function Fragment_3()
;BEGIN CODE
;Stage 30
;Brought 3 Pearls
SetObjectiveCompleted(15,1)
Game.GetPlayer().RemoveItem(pPearlTex,3)
texCount.Value += 1

if texCount.Value >= 4
SetStage(70)
endif
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_5
Function Fragment_5()
;BEGIN CODE
;Stage 30
;Brought 1 powdered mammoth
SetObjectiveCompleted(25,1)
Game.GetPlayer().RemoveItem(pTuskTex,1)
texCount.Value += 1

if texCount.Value >= 4
SetStage(70)
endif
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_9
Function Fragment_9()
;BEGIN CODE
;Stage 70

SetStage(200)
;END CODE
EndFunction
;END FRAGMENT

;END FRAGMENT CODE - Do not edit anything between this and the begin comment

Ingredient Property pNirnTex Auto
Ingredient Property pPearlTex Auto
Ingredient Property pTuskTex Auto

GlobalVariable Property texCount  Auto 

AmorousAdvTextilesQstUtil Property AATextilesQstUtil Auto


