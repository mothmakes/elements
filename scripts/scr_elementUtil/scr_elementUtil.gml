
function combineElements(e1, e2) {
		return obj_elementManager.elementCombinations[# e1, e2];
}

function applyElement(tile, e2) {
		tile.element = combineElements(tile.element, e2);
}
