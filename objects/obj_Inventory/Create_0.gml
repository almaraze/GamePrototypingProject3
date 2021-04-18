/// @description Setting up variables

globalvar playerInventory, playerInventoryWidth, playerInventoryHeight;
playerInventoryWidth = 5;  // Name, Amount, Description, Sprite, Script
//playerInventoryHeight = 1; 
playerInventory = ds_grid_create(playerInventoryWidth, 1);

scr_redrawInventory();
