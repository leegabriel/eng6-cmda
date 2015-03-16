% extract data in single column cells, includes data type and comod
% descript
[Dates,AllCom,NonFuel,FoodAndBeverage,Food,Beverage,...
Industrial,AgriculturalRawMaterials,Metals,FuelEnergy,...
CrudeOil,Aluminum,Bananas,BarleyCanadian,Beef,Coal,...
CocoaBeans,CoffeeArabicas,CoffeeRobusta,RapeseedOil,Copper,Cotton,...
FishmealPeru,Groundnuts,HidesHeavy,ChinaImport,Lamb,Lead,SoftLogs,...
HardLogs,MaizeCorn,NaturalGasRussian,NaturalGasIndonesian,...
NaturalGasLouisiana,Nickel,CrudeOilAvg,CrudeOilUK,OilDubai,CrudeOilInt,...
OliveOil,Oranges,PalmOil,PoultryChicken,SwinePork,Rice,Rubber,...
FishSalmon,HardSawnwood,SoftSawnwood,Shrimp,SoybeanMeal,SoybeanOil,SoybeansUS,...
SugarEuro,SugarFreeMarket,SugarUS,SunflowerOil,TeaMombasa,Tin,Uranium,...
Wheat,WoolCoarse,WoolFine,Zinc]...
=importfile1('project2Data.xls','ExternalData',[1,3,5],[1,3,426]);

AllCom=[Dates,AllCom]; %combine data and dates
NonFuel=[Dates,NonFuel];
FoodAndBeverage=[Dates,FoodAndBeverage];
Food=[Dates,Food];
Beverage=[Dates,Beverage];
Industrial=[Dates,Industrial];
AgriculturalRawMaterials=[Dates,AgriculturalRawMaterials];
Metals=[Dates,Metals];
FuelEnergy=[Dates,FuelEnergy];
CrudeOil=[Dates,CrudeOil];
Aluminum=[Dates,Aluminum];
Bananas=[Dates,Bananas];
BarleyCanadian=[Dates,BarleyCanadian];
Beef=[Dates,Beef];
Coal=[Dates,Coal];
CocoaBeans=[Dates,CocoaBeans];
CoffeeArabicas=[Dates,CoffeeArabicas];
CoffeeRobusta=[Dates,CoffeeRobusta];
RapeseedOil=[Dates,RapeseedOil];
Copper=[Dates,Copper];
Cotton=[Dates,Cotton];
FishmealPeru=[Dates,FishmealPeru];
Groundnuts=[Dates,Groundnuts];
HidesHeavy=[Dates,HidesHeavy];
ChinaImport=[Dates,ChinaImport];
Lamb=[Dates,Lamb];
Lead=[Dates,Lead];
SoftLogs=[Dates,SoftLogs];
HardLogs=[Dates,HardLogs];
MaizeCorn=[Dates,MaizeCorn];
NaturalGasRussian=[Dates,NaturalGasRussian];
NaturalGasIndonesian=[Dates,NaturalGasIndonesian];
NaturalGasLouisiana=[Dates,NaturalGasLouisiana];
Nickel=[Dates,Nickel];
CrudeOilAvg=[Dates,CrudeOilAvg];
CrudeOilUK=[Dates,CrudeOilUK];
OilDubai=[Dates,OilDubai];
CrudeOilInt=[Dates,CrudeOilInt];
OliveOil=[Dates,OliveOil];
Oranges=[Dates,Oranges];
PalmOil=[Dates,PalmOil];
SwinePork=[Dates,SwinePork];
PoultryChicken=[Dates,PoultryChicken];
Rice=[Dates,Rice];
Rubber=[Dates,Rubber];
FishSalmon=[Dates,FishSalmon];
HardSawnwood=[Dates,HardSawnwood];
SoftSawnwood=[Dates,SoftSawnwood];
Shrimp=[Dates,Shrimp];
SoybeanMeal=[Dates,SoybeanMeal];
SoybeanOil=[Dates,SoybeanOil];
SoybeansUS=[Dates,SoybeansUS];
SugarEuro=[Dates,SugarEuro];
SugarFreeMarket=[Dates,SugarFreeMarket];
SugarUS=[Dates,SugarUS];
SunflowerOil=[Dates,SunflowerOil];
TeaMombasa=[Dates,TeaMombasa];
Tin=[Dates,Tin];
Uranium=[Dates,Uranium];
Wheat=[Dates,Wheat];
WoolCoarse=[Dates,WoolCoarse];
WoolFine=[Dates,WoolFine];
Zinc=[Dates,Zinc];

%* attempt to turn into structure for easy load up.
% Zeus=[AllCom,NonFuel,FoodAndBeverage,Food,Beverage,...
% Industrial,AgriculturalRawMaterials,Metals,FuelEnergy,...
% CrudeOil,Aluminum,Bananas,BarleyCanadian,Beef,Coal,...
% CocoaBeans,CoffeeArabicas,CoffeeRobusta,RapeseedOil,Copper,Cotton,...
% FishmealPeru,Groundnuts,HidesHeavy,ChinaImport,Lamb,Lead,SoftLogs,...
% HardLogs,MaizeCorn,NaturalGasRussian,NaturalGasIndonesian,...
% NaturalGasLouisiana,Nickel,CrudeOilAvg,CrudeOilUK,OilDubai,CrudeOilInt,...
% OliveOil,Oranges,PalmOil,SwinePork,PoultryChicken,Rice,Rubber,FishSalmon,...
% HardSawnwood,SoftSawnwood,Shrimp,SoybeanMeal,SoybeanOil,SoybeansUS,...
% SugarEuro,SugarFreeMarket,SugarUS,SunflowerOil,TeaMombasa,Tin,Uranium,...
% Wheat,WoolCoarse,WoolFine,Zinc];
% 
% Zeusc={'AllCom','NonFuel','FoodAndBeverage','Food','Beverage','Industrial',...
% 'AgriculturalRawMaterials','Metals','FuelEnergy','CrudeOil','Aluminum','Bananas',...
% 'BarleyCanadian','Beef','Coal','CocoaBeans','CoffeeArabicas','CoffeeRobusta',...
% 'RapeseedOil','Copper','Cotton','FishmealPeru','Groundnuts','HidesHeavy','ChinaImport','Lamb','Lead',...
% 'SoftLogs','HardLogs','MaizeCorn','NaturalGasRussian','NaturalGasIndonesian',...
% 'NaturalGasLouisiana','Nickel','CrudeOilAvg','CrudeOilUK','OilDubai','CrudeOilInt',...
% 'OliveOil','Oranges','PalmOil','SwinePork','PoultryChicken','Rice','Rubber',...
% 'FishSalmon','HardSawnwood','SoftSawnwood','Shrimp','SoybeanMeal',...
% 'SoybeanOil','SoybeansUS','SugarEuro','SugarFreeMarket','SugarUS','SunflowerOil','TeaMombasa','Tin','Uranium',...
% 'Wheat','WoolCoarse','WoolFine','Zinc'};

% ZeusData=cell2struct(Zeus,Zeusc,1)

% Zeus=struct('Dates',Dates,'AllCom',AllCom,'NonFuel',NonFuel,'FoodAndBeverage',...
% FoodAndBeverage,'Food',Food,'Beverage',Beverage,'Industrial',Industrial,...
% 'AgriculturalRawMaterials',AgriculturalRawMaterials,'Metals',Metals,...
% 'FuelEnergy',FuelEnergy,'CrudeOil',CrudeOil,'Aluminum',Aluminum,'Bananas',...
% Bananas,'BarleyCanadian',BarleyCanadian,'Beef',Beef,'Coal',Coal,...
% 'CocoaBeans',CocoaBeans,'CoffeeArabicas',CoffeeArabicas,'CoffeeRobusta',...
% CoffeeRobusta,'RapeseedOil',RapeseedOil,'Copper',Copper,'FishmealPeru',...
% FishmealPeru,'Groundnuts',Groundnuts,'HidesHeavy',HidesHeavy,'ChinaImport',...
% ChinaImport,'Lead',Lead,'SoftLogs',SoftLogs,'HardLogs',HardLogs,'MaizeCorn',...
% MaizeCorn,'NaturalGasRussian',NaturalGasRussian,'NaturalGasIndonesian',...
% NaturalGasIndonesian,'NaturalGasLouisiana',NaturalGasLouisiana,'Nickel',...
% Nickel,'CrudeOilAvg',CrudeOilAvg,'CrudeOilUK',CrudeOilUK,'OilDubai',OilDubai,...
% 'CrudeOilInt',CrudeOilInt,'OliveOil',OliveOil,'Oranges',Oranges,'PalmOil',...
% PalmOil,'SwinePork',SwinePork,'PoultryChicken',PoultryChicken,'Rice',Rice,...
% 'Rubber',Rubber,'FishSalmon',FishSalmon,'HardSawnwood',HardSawnwood,...
% 'SoftSawnwood',SoftSawnwood,'Shrimp',Shrimp,'SoybeanMeal',SoybeanMeal,...
% 'SoybeanOil',SoybeanOil,'SoybeansUS',SoybeansUS,'SugarEuro',SugarEuro,...
% 'SugarFreeMarket',SugarFreeMarket,'SugarUS',SugarUS,'SunflowerOil',...
% SunflowerOil,'TeaMombasa',TeaMombasa,'Tin',Tin,'Uranium',Uranium,...
% 'Wheat',Wheat,'WoolCoarse',WoolCoarse,'WoolFine',WoolFine,'Zinc',Zinc)





























































    
