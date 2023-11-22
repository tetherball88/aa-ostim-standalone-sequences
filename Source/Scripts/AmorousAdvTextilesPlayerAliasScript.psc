Scriptname AmorousAdvTextilesPlayerAliasScript extends ReferenceAlias  

Quest Property pAATextilesQst Auto Conditional
Ingredient Property pNirn Auto Conditional
Ingredient Property pPearl Auto Conditional
Ingredient Property pTusk Auto Conditional
AmorousAdvTextilesQstUtil Property pAATextilesQstUtil Auto Conditional

Event OnInit()

	AddInventoryEventFilter(pNirn)
	AddInventoryEventFilter(pTusk)
	AddInventoryEventFilter(pPearl)

endEvent

Event OnItemAdded(Form akBaseItem, int aiItemCount, ObjectReference akItemReference, ObjectReference akSourceContainer)

	if pAATextilesQst.GetStageDone(20) == 1
		if pAATextilesQst.GetStageDone(30) == 0
			if akBaseItem == pPearl
				pAATextilesQstUtil.PearlCounted()
			endif
		endif
	endif

	if pAATextilesQst.GetStageDone(20) == 1
		if pAATextilesQst.GetStageDone(40) == 0
			if akBaseItem == pTusk
				pAATextilesQstUtil.TuskCounted()
			endif	
		endif
	endif

	if pAATextilesQst.GetStageDone(20) == 1
		if pAATextilesQst.GetStageDone(50) == 0
			if akBaseItem == pNirn
				pAATextilesQstUtil.NirnCounted()
			endif
		endif
	endif

endEvent

Event OnItemRemoved(Form akBaseItem, int aiItemCount, ObjectReference akItemReference, ObjectReference akDestContainer)

	if pAATextilesQst.GetStageDone(20) == 1
		if pAATextilesQst.GetStageDone(30) == 0
			if akBaseItem == pPearl
				pAATextilesQstUtil.PearlCounted()
			endif
		endif
	endif

	if pAATextilesQst.GetStageDone(20) == 1
		if pAATextilesQst.GetStageDone(40) == 0
			if akBaseItem == pTusk
				pAATextilesQstUtil.TuskCounted()
			endif
		endif
	endif

	if pAATextilesQst.GetStageDone(20) == 1
		if pAATextilesQst.GetStageDone(50) == 0
			if akBaseItem == pNirn
				pAATextilesQstUtil.NirnCounted()
			endif
		endif
	endif

endEvent

