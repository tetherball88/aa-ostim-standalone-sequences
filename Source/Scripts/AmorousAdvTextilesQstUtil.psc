Scriptname AmorousAdvTextilesQstUtil extends Quest  Conditional

Ingredient Property pNirn Auto Conditional
Ingredient Property pPearl Auto Conditional
Ingredient Property pTusk Auto Conditional
GlobalVariable Property pAATextilesPearlCount Auto Conditional
GlobalVariable Property pAATextilesTuskCount Auto Conditional
GlobalVariable Property pAATextilesNirnCount Auto Conditional
Quest Property pAATextilesQst Auto Conditional

Function PearlCounted()

	float CurrentCount = Game.GetPlayer().GetItemCount(pPearl)

	pAATextilesPearlCount.Value = CurrentCount
	UpdateCurrentInstanceGlobal(pAATextilesPearlCount)
	if CurrentCount >= 2
		pAATextilesQst.SetObjectiveCompleted(10,1)
		pAATextilesQst.SetObjectiveDisplayed(15,true,true)
	elseif CurrentCount < 2
		pAATextilesQst.SetObjectiveCompleted(10,0)
		pAATextilesQst.SetObjectiveDisplayed(15,0)
		pAATextilesQst.SetObjectiveDisplayed(10,true,true)	
	endif

endFunction

Function TuskCounted()

	float CurrentCount = Game.GetPlayer().GetItemCount(pTusk)

	pAATextilesTuskCount.Value = CurrentCount
	UpdateCurrentInstanceGlobal(pAATextilesTuskCount)
	if CurrentCount >= 1
		pAATextilesQst.SetObjectiveCompleted(20,1)
		pAATextilesQst.SetObjectiveDisplayed(25,true,true)
	elseif CurrentCount < 1
		pAATextilesQst.SetObjectiveCompleted(20,0)
		pAATextilesQst.SetObjectiveDisplayed(25,0)
		pAATextilesQst.SetObjectiveDisplayed(20,true,true)	
	endif

endFunction

Function NirnCounted()

	float CurrentCount = Game.GetPlayer().GetItemCount(pNirn)

	pAATextilesNirnCount.Value = CurrentCount
	UpdateCurrentInstanceGlobal(pAATextilesNirnCount)
	if CurrentCount >= 1
		pAATextilesQst.SetObjectiveCompleted(30,1)
		pAATextilesQst.SetObjectiveDisplayed(35,true,true)
	elseif CurrentCount < 1
		pAATextilesQst.SetObjectiveCompleted(30,0)
		pAATextilesQst.SetObjectiveDisplayed(35,0)
		pAATextilesQst.SetObjectiveDisplayed(30,true,true)	
	endif

endFunction

