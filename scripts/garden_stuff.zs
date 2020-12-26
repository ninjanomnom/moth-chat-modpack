import minetweaker.item.IIngredient;
import minetweaker.item.IItemStack;

var latticeIngredients = [
    <ore:ingotIron>,
    <ore:ingotWroughtIron>,
    <minecraft:planks:0>,
    <minecraft:planks:1>,
    <minecraft:planks:2>,
    <minecraft:planks:3>,
    <minecraft:planks:4>,
    <minecraft:planks:5>
] as IIngredient[];

var outputLattices = [
    <GardenStuff:lattice:0>,
    <GardenStuff:lattice:2>,
    <GardenStuff:lattice_wood:0>,
    <GardenStuff:lattice_wood:1>,
    <GardenStuff:lattice_wood:2>,
    <GardenStuff:lattice_wood:3>,
    <GardenStuff:lattice_wood:4>,
    <GardenStuff:lattice_wood:5>
] as IItemStack[];

for i, ingr in latticeIngredients {
    var output = outputLattices[i];

    recipes.removeShaped(output);
    recipes.addShaped(output * 16,
        [
            [ingr, null, ingr],
            [null, ingr, null],
            [ingr, null, ingr]
        ]
    );
}
