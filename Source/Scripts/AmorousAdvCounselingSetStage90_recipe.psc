Scriptname AmorousAdvCounselingSetStage90_recipe extends ReferenceAlias  

Event OnRead()
	if SexLabAmorousAdventuresCounseling.GetStage() == 80
		SexLabAmorousAdventuresCounseling.SetStage(90)
	endif
EndEvent

Quest Property SexLabAmorousAdventuresCounseling  Auto 
