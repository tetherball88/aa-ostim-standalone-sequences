Scriptname AmorousAdventuresLoversLostLover extends ReferenceAlias  

Event OnDeath(Actor akKiller)
	aalMain.RemoveMyLover(ThisLover.GetRef() as actor, False)
endEvent

AmorousAdventuresLoversMain Property aalMain  Auto  
ReferenceAlias Property ThisLover  Auto  