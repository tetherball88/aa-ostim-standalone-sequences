Scriptname AmorousAdvMiragelleSetStage80 extends ReferenceAlias  

Event OnRead()
	if SexLabAmorousAdventuresMirabelle.GetStage() == 70
		SexLabAmorousAdventuresMirabelle.SetStage(80)
		PlayerRef.AddSpell(AmorousAdvSummonMirabelleSpell)
	endif
EndEvent

Quest Property SexLabAmorousAdventuresMirabelle  Auto 
Spell Property AmorousAdvSummonMirabelleSpell Auto
Actor Property PlayerRef Auto

