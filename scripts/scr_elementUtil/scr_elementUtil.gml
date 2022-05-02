
function combineElements(e1, e2) {
		return obj_elementManager.elementCombinations[# e1, e2];
}

function applyElement(tile, e2) {
		tile.element = combineElements(tile.element, e2);
		
		var unit = getUnit(tile.xx, tile.yy) 
		
		if (unit != noone) applyElementStatus(unit, e2);
}

function applyElementStatus(unit, e2) {
	sdm(string(unit.xx) + " "+string(unit.yy));
	
	unit.element = combineElements(unit.element, e2);
}

//function applyElementStatusToTile()
