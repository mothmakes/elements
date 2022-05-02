


elementCombinations = ds_grid_create(ELEMENTS_LENGTH, ELEMENTS_LENGTH);

//NEUTRAL INTERACTIONS
ds_grid_set(elementCombinations, elements.NEUTRAL, elements.NEUTRAL, elements.NEUTRAL);
ds_grid_set(elementCombinations, elements.NEUTRAL, elements.FIRE, elements.FIRE);
ds_grid_set(elementCombinations, elements.NEUTRAL, elements.WATER, elements.WATER);
ds_grid_set(elementCombinations, elements.NEUTRAL, elements.COLD, elements.COLD);
ds_grid_set(elementCombinations, elements.NEUTRAL, elements.EARTH, elements.EARTH);
ds_grid_set(elementCombinations, elements.NEUTRAL, elements.AIR, elements.AIR);

//FIRE INTERACTIONS
ds_grid_set(elementCombinations, elements.FIRE, elements.NEUTRAL, elements.FIRE);
ds_grid_set(elementCombinations, elements.FIRE, elements.FIRE, elements.FIRE);
ds_grid_set(elementCombinations, elements.FIRE, elements.WATER, elements.WATER);
ds_grid_set(elementCombinations, elements.FIRE, elements.COLD, elements.COLD);
ds_grid_set(elementCombinations, elements.FIRE, elements.EARTH, elements.EARTH);
ds_grid_set(elementCombinations, elements.FIRE, elements.AIR, elements.AIR);

//WATER INTERACTIONS
ds_grid_set(elementCombinations, elements.WATER, elements.NEUTRAL, elements.WATER);
ds_grid_set(elementCombinations, elements.WATER, elements.FIRE, elements.FIRE);
ds_grid_set(elementCombinations, elements.WATER, elements.WATER, elements.WATER);
ds_grid_set(elementCombinations, elements.WATER, elements.COLD, elements.COLD);
ds_grid_set(elementCombinations, elements.WATER, elements.EARTH, elements.EARTH);
ds_grid_set(elementCombinations, elements.WATER, elements.AIR, elements.AIR);

//COLD INTERACTIONS
ds_grid_set(elementCombinations, elements.COLD, elements.NEUTRAL, elements.COLD);
ds_grid_set(elementCombinations, elements.COLD, elements.FIRE, elements.FIRE);
ds_grid_set(elementCombinations, elements.COLD, elements.WATER, elements.WATER);
ds_grid_set(elementCombinations, elements.COLD, elements.COLD, elements.COLD);
ds_grid_set(elementCombinations, elements.COLD, elements.EARTH, elements.EARTH);
ds_grid_set(elementCombinations, elements.COLD, elements.AIR, elements.AIR);

//EARTH INTERACTIONS
ds_grid_set(elementCombinations, elements.COLD, elements.NEUTRAL, elements.COLD);
ds_grid_set(elementCombinations, elements.COLD, elements.FIRE, elements.FIRE);
ds_grid_set(elementCombinations, elements.COLD, elements.WATER, elements.WATER);
ds_grid_set(elementCombinations, elements.COLD, elements.COLD, elements.COLD);
ds_grid_set(elementCombinations, elements.COLD, elements.EARTH, elements.EARTH);
ds_grid_set(elementCombinations, elements.COLD, elements.AIR, elements.AIR);

//AIR INTERACTIONS
ds_grid_set(elementCombinations, elements.AIR, elements.NEUTRAL, elements.AIR);
ds_grid_set(elementCombinations, elements.AIR, elements.FIRE, elements.FIRE);
ds_grid_set(elementCombinations, elements.AIR, elements.WATER, elements.WATER);
ds_grid_set(elementCombinations, elements.AIR, elements.COLD, elements.COLD);
ds_grid_set(elementCombinations, elements.AIR, elements.EARTH, elements.EARTH);
ds_grid_set(elementCombinations, elements.AIR, elements.AIR, elements.AIR);


