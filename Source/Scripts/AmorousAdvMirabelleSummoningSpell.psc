Scriptname AmorousAdvMirabelleSummoningSpell extends activemagiceffect  

Actor Property AmorousAdvMirabelleErvine Auto
ObjectReference Property AmorousAdvMirabelleCellMarker Auto
Activator Property SummonTargetFXActivator Auto
Activator Property BanishTargetFXActivator Auto

Event OnEffectStart(Actor akTarget, Actor akCaster)

	;If AmorousAdvMirabelleErvine.IsEnabled()
	;	AmorousAdvMirabelleErvine.Disable(true)
	;EndIf

	akCaster.PlaceAtMe(SummonTargetFXActivator)
	Utility.Wait(0.3)
	AmorousAdvMirabelleErvine.MoveTo(akCaster)
	If AmorousAdvMirabelleErvine.IsDisabled()
		AmorousAdvMirabelleErvine.Enable(true)
	EndIf
	Utility.Wait(0.2)

EndEvent

Event OnEffectFinish(Actor akTarget, Actor akCaster) 

	AmorousAdvMirabelleErvine.PlaceAtMe(BanishTargetFXActivator)
	If AmorousAdvMirabelleErvine.IsEnabled()
		AmorousAdvMirabelleErvine.Disable(true)
	EndIf
	AmorousAdvMirabelleErvine.MoveTo(AmorousAdvMirabelleCellMarker)

EndEvent