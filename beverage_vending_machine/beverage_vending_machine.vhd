library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.std_logic_unsigned.all; 

--This beverage vending machine will not run with money, all beverages are free. People just need to select beverages 
--according to their pleasures

entity beverage_vending_machine is

port(

clk : in std_logic; -- Becasuse we will work with Finite State Macine, we need to indicate clk and reset inputs at entity
rst: in std_logic;
button : in std_logic;

hot_drink : in std_logic;
cold_drink:in std_logic;

sugared_in : in std_logic;
sugarless_in : in std_logic;


--------------------- STEPS FOR TEA -----------------------------

tea_in : in std_logic;

brewed_tea_in : in std_logic;
sugared_brewed_tea_provided : out std_logic;
sugarless_brewed_tea_provided : out std_logic;


weak_tea_in : in std_logic;
sugared_weak_tea_provided : out std_logic;
sugarless_weak_tea_provided : out std_logic;

sage_tea_in : in std_logic;
sugared_sage_tea_provided : out std_logic;
sugarless_sage_tea_provided : out std_logic;



-------------------------------------------------------------------

---------------------- STEPS FOR COFFEE ---------------------------
coffee_in : in std_logic;


Turkish_coffee_in : in std_logic;
sugared_Turkish_coffee_provided : out std_logic;
sugarless_Turkish_coffee_provided : out std_logic;


espresso_in : in std_logic;
sugared_espresso_provided : out std_logic;
sugarless_espresso_provided : out std_logic;

mocha_in : in std_logic;
sugared_mocha_provided : out std_logic;
sugarless_mocha_provided : out std_logic;

latte_in: in std_logic;
sugared_latte_provided : out std_logic;
sugarless_latte_provided : out std_logic;


---------------------------------------------------------------------

--------------------- STEPS FOR HOT CHOCKLATE -----------------------


hot_chocklate_in : in std_logic;
sugared_hot_chocklate_provided : out std_logic;
sugarless_hot_chocklate_provided : out std_logic;


-------------------------------------------------------------------

--------------------- STEPS FOR SALEP -----------------------------

salep_in : in std_logic;

cinnamoned_salep_in : in std_logic;
sugared_cinnamoned_salep_provided : out std_logic;
sugarless_cinnamoned_salep_provided : out std_logic;

cinnamonless_salep_in : in std_logic;
sugared_cinnamonless_salep_provided : out std_logic;
sugarless_cinnamonless_salep_provided : out std_logic;


-------------------------------------------------------------------

--------------------- STEPS FOR CARBONATED BEVERAGE -----------------------------

carbonated_baverage_in : in std_logic;

coke_in : in std_logic;
coke_provided : out std_logic;

soda_water_in : in std_logic;
soda_water_provided : out std_logic;

---------------------------------------------------------------------------------

--------------------- STEPS FOR FRUIT JUICE ------------------------------------

fruit_juice_in: in std_logic;

apricot_in : in std_logic;
apricot_provided : out std_logic;

peach_in : in std_logic;
peach_provided : out std_logic;

cherry_in : in std_logic;
cherry_provided : out std_logic;

---------------------------------------------------------------------------------

--------------------- STEPS FOR LEMONADE --------------------------------------

lemonade_in :in std_logic;

sugared_lemonade_provided : out std_logic;
sugarless_lemonade_provided : out std_logic;

--------------------------------------------------------------------------------

--------------------- STEPS FOR AYRAN -----------------------------------------

ayran_in :in std_logic;

salty_ayran_in : in std_logic;
salty_ayran_provided: out std_logic;

saltless_ayran_in : in std_logic;
saltless_ayran_provided : out std_logic


--------------------------------------------------------------------------------




);


end entity;

architecture arch of beverage_vending_machine is


type state_type is (IDLE,SELECTION, HOT_DRINKS, TEA,COFFEE, HOT_CHOCKLATE,SALEP, BREWED_TEA, WEAK_TEA,SAGE_TEA, SUGARLESS_BREWED_TEA,SUGARED_BREWED_TEA,SUGARED_WEAK_TEA,SUGARLESS_WEAK_TEA,SUGARED_SAGE_TEA,SUGARLESS_SAGE_TEA,TURKISH_COFFEE,ESPRESSO,MOCHA,LATTE,SUGARED_TURKISH_COFFEE,SUGARLESS_TURKISH_COFFEE,SUGARED_ESPRESSO,SUGARLESS_ESPRESSO,SUGARED_MOCHA,SUGARLESS_MOCHA,SUGARED_LATTE,SUGARLESS_LATTE,SUGARED_HOT_CHOCKLATE,SUGARLESS_HOT_CHOCKLATE, CINNAMONED_SALEP,CINNAMONLESS_SALEP, SUGARED_CINNAMONED_SALEP, SUGARLESS_CINNAMONED_SALEP, SUGARED_CINNAMONLESS_SALEP, SUGARLESS_CINNAMONLESS_SALEP, COLD_DRINKS, CARBONATED_BAVEREGE,COKE,SODA_WATER,FRUIT_JUICE,APRICOT_JUICE, PEACH_JUICE, CHERRY_JUICE,LEMONADE,SUGARED_LEMONADE,SUGARLESS_LEMONADE, AYRAN, SALTY_AYRAN, SALTLESS_AYRAN);                                                                                                                                                                                            
signal state: state_type;

begin

process(clk,rst)


begin

if(rst='1') then

state<=IDLE;


--TEA


sugared_brewed_tea_provided <='0';
sugarless_brewed_tea_provided <='0';

sugared_weak_tea_provided  <='0';
sugarless_weak_tea_provided <='0';

sugared_sage_tea_provided <='0';
sugarless_sage_tea_provided <='0';

--COFFEE

sugared_Turkish_coffee_provided  <='0';
sugarless_Turkish_coffee_provided  <='0';

sugared_espresso_provided  <='0';
sugarless_espresso_provided <='0';

sugared_mocha_provided  <='0';
sugarless_mocha_provided <='0';

sugared_latte_provided  <='0';
sugarless_latte_provided  <='0';

--HOT_CHOCKLATE

sugared_hot_chocklate_provided <='0';
sugarless_hot_chocklate_provided <='0';

--SALEP

sugared_cinnamoned_salep_provided <='0';
sugarless_cinnamoned_salep_provided <='0';

sugared_cinnamonless_salep_provided <='0';
sugarless_cinnamonless_salep_provided <='0';

--CARBONATED_BAVEREGE

coke_provided <='0';
soda_water_provided <='0';


--FRUIT_JUICE

apricot_provided <='0';
peach_provided <='0';
cherry_provided <='0';

--LEMONADE

sugared_lemonade_provided <='0';
sugarless_lemonade_provided <='0';

--AYRAN

salty_ayran_provided <='0';
saltless_ayran_provided <='0';






--------------------------------------------------------------------------------------------------------------------
elsif(rising_edge(clk)) then

case state is 

when IDLE =>

--TEA

sugared_brewed_tea_provided <='0';
sugarless_brewed_tea_provided <='0';

sugared_weak_tea_provided  <='0';
sugarless_weak_tea_provided <='0';

sugared_sage_tea_provided <='0';
sugarless_sage_tea_provided <='0';

--COFFEE

sugared_Turkish_coffee_provided  <='0';
sugarless_Turkish_coffee_provided  <='0';

sugared_espresso_provided  <='0';
sugarless_espresso_provided <='0';

sugared_mocha_provided  <='0';
sugarless_mocha_provided <='0';

sugared_latte_provided  <='0';
sugarless_latte_provided  <='0';

--HOT_CHOCKLATE

sugared_hot_chocklate_provided <='0';
sugarless_hot_chocklate_provided <='0';

--SALEP

sugared_cinnamoned_salep_provided <='0';
sugarless_cinnamoned_salep_provided <='0';

sugared_cinnamonless_salep_provided <='0';
sugarless_cinnamonless_salep_provided <='0';

--CARBONATED_BAVEREGE

coke_provided <='0';
soda_water_provided <='0';


--FRUIT_JUICE

apricot_provided <='0';
peach_provided   <='0';
cherry_provided  <='0';

--LEMONADE

sugared_lemonade_provided <='0';
sugarless_lemonade_provided <='0';

--AYRAN

salty_ayran_provided    <='0';
saltless_ayran_provided <='0';

if(button='1') then

	state<=SELECTION;

else

	state<=IDLE;
	
end if;

----------------------------------------------------------

when SELECTION=>

if(hot_drink='1') then

	state<=HOT_DRINKS;
	
elsif(cold_drink='1') then

	state<=COLD_DRINKS;
	
end if;

---------------------------------------------------------

when HOT_DRINKS=>

if(tea_in='1') then

   
	state<=TEA;
	

elsif(coffee_in='1') then

	state<=COFFEE;

elsif(hot_chocklate_in='1') then

	state<=HOT_CHOCKLATE;

elsif(salep_in='1') then

	state<=SALEP;

end if;
----------------------- TEA ----------------------------------------

when TEA=>

if(brewed_tea_in='1') then 

	state<=BREWED_TEA;

elsif(weak_tea_in='1') then

	state<=WEAK_TEA;

elsif(sage_tea_in='1')then

	state<=SAGE_TEA;
end if;
-------------------------------------------------------------------------
when BREWED_TEA=>

if(sugared_in='1') then 
    sugared_brewed_tea_provided<='1';
	state<=SUGARED_BREWED_TEA;

elsif(sugarless_in='1') then
	sugarless_brewed_tea_provided<='1';
	state<=SUGARLESS_BREWED_TEA;

end if;



when SUGARED_BREWED_TEA =>

	sugared_brewed_tea_provided<='0';
	state<=IDLE;
	

when SUGARLESS_BREWED_TEA=>

	sugarless_brewed_tea_provided<='0';
	state<=IDLE;


-----------------------------------------------------------------
----------------------------------------------------------------
when WEAK_TEA=>

if(sugared_in='1') then 

	sugared_weak_tea_provided<='1';
	state<=SUGARED_WEAK_TEA;

elsif(sugarless_in='1') then
	
	sugarless_weak_tea_provided<='1';
	state<=SUGARLESS_WEAK_TEA;

end if;


when SUGARED_WEAK_TEA=>
	
	sugared_weak_tea_provided<='0';
	state<=IDLE;
	

when SUGARLESS_WEAK_TEA=>
	
	sugarless_weak_tea_provided<='0';
	state<=IDLE;
	
------------------------------------------------------------------
------------------------------------------------------------------

when SAGE_TEA=>

if(sugared_in='1') then 
	
	sugared_sage_tea_provided<='1';
	state<=SUGARED_SAGE_TEA;

elsif(sugarless_in='1') then
	
	sugarless_sage_tea_provided<='1';
	state<=SUGARLESS_SAGE_TEA;

end if;



when SUGARED_SAGE_TEA=>

	sugared_sage_tea_provided<='0';
	state<=IDLE;
	


when SUGARLESS_SAGE_TEA=>

	sugarless_sage_tea_provided<='0';
	state<=IDLE;


-------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------

---------------------------------COFFFE----------------------------------------------

when COFFEE=>

if(Turkish_coffee_in='1') then 

	state<=TURKISH_COFFEE;

elsif(espresso_in='1') then 

	state<=ESPRESSO;

elsif(mocha_in='1') then 

	state<=MOCHA;

elsif(latte_in='1') then 

	state<=LATTE;

end if;
----------------------------------------------------------------------------------------


when TURKISH_COFFEE=>

if(sugared_in='1') then 

	sugared_Turkish_coffee_provided<='1';
	state<=SUGARED_TURKISH_COFFEE;

elsif(sugarless_in='1') then 

	sugarless_Turkish_coffee_provided<='1';
	state<=SUGARLESS_TURKISH_COFFEE;	

end if;

when SUGARED_TURKISH_COFFEE=>

	sugared_Turkish_coffee_provided<='0';
	state<=IDLE;
	


when SUGARLESS_TURKISH_COFFEE=>

	sugarless_Turkish_coffee_provided<='0';
	state<=IDLE;


-----------------------------------------------------------------------------------------

----------------------------------------------------------------------------------------


when ESPRESSO=>

if(sugared_in='1') then 

	sugared_espresso_provided<='1';
	state<=SUGARED_ESPRESSO;

elsif(sugarless_in='1') then 

	sugarless_espresso_provided<='1';
	state<=SUGARLESS_ESPRESSO;	

end if;

when SUGARED_ESPRESSO=>

	sugared_espresso_provided<='0';
	state<=IDLE;
	


when SUGARLESS_ESPRESSO=>

	sugared_espresso_provided<='0';
	state<=IDLE;

----------------------------------------------------------------------------------------


when MOCHA=>

if(sugared_in='1') then 
    
    sugared_mocha_provided<='1';
	state<=SUGARED_MOCHA;

elsif(sugarless_in='1') then 

    sugarless_mocha_provided<='1';
	state<=SUGARLESS_MOCHA;	

end if;

when SUGARED_MOCHA=>

    sugared_mocha_provided<='0';
	state<=IDLE;
	


when SUGARLESS_MOCHA=>

    sugarless_mocha_provided<='0';
	state<=IDLE;

----------------------------------------------------------------------------------------


when LATTE=>

if(sugared_in='1') then 

    sugared_latte_provided<='1';
	state<=SUGARED_LATTE;

elsif(sugarless_in='1') then 

    sugarless_latte_provided<='1';
	state<=SUGARLESS_LATTE;	

end if;

when SUGARED_LATTE=>

    sugared_latte_provided<='0';
	state<=IDLE;
	


when SUGARLESS_LATTE=>

    sugarless_latte_provided<='0';
	state<=IDLE;

------------------------------HOT CHOCKLATE------------------------------------------------

when HOT_CHOCKLATE=>

if(sugared_in='1') then 
    
    sugared_hot_chocklate_provided<='1';
	state<=SUGARED_HOT_CHOCKLATE;

elsif(sugarless_in='1') then 
    
    sugarless_hot_chocklate_provided<='1';
	state<=SUGARLESS_HOT_CHOCKLATE;	

end if;

when SUGARED_HOT_CHOCKLATE=>

    sugared_hot_chocklate_provided<='0';
	state<=IDLE;
	


when SUGARLESS_HOT_CHOCKLATE=>

    sugarless_hot_chocklate_provided<='0';
	state<=IDLE;
	
---------------------------------------------------------------------------------------------
----------------------- SALEP ----------------------------------------

when SALEP=>

if(cinnamoned_salep_in='1') then 
    
	state<=CINNAMONED_SALEP;

elsif(cinnamonless_salep_in='1') then

	state<=CINNAMONLESS_SALEP;

end if;
-------------------------------------------------------------------------
when CINNAMONED_SALEP=>

if(sugared_in='1') then 
    
    sugared_cinnamoned_salep_provided<='1';
	state<=SUGARED_CINNAMONED_SALEP;

elsif(sugarless_in='1') then

    sugarless_cinnamoned_salep_provided<='1';
	state<=SUGARLESS_CINNAMONED_SALEP;

end if;



when SUGARED_CINNAMONED_SALEP=>

    sugared_cinnamoned_salep_provided<='0';
	state<=IDLE;
	


when SUGARLESS_CINNAMONED_SALEP=>

    sugarless_cinnamoned_salep_provided<='0';
	state<=IDLE;


----------------------------------------------------------------
when CINNAMONLESS_SALEP=>

if(sugared_in='1') then 
    sugared_cinnamonless_salep_provided<='1';
	state<=SUGARED_CINNAMONLESS_SALEP;

elsif(sugarless_in='1') then
    sugarless_cinnamoned_salep_provided<='1';
	state<=SUGARLESS_CINNAMONLESS_SALEP;

end if;


when SUGARED_CINNAMONLESS_SALEP=>

    sugared_cinnamonless_salep_provided<='0';
	state<=IDLE;
	

when SUGARLESS_CINNAMONLESS_SALEP=>

    sugarless_cinnamonless_salep_provided<='0';
	state<=IDLE;
	
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------

------------------------------COLD DRINKS---------------------------------------

when COLD_DRINKS=>

if(carbonated_baverage_in='1') then

	state<=CARBONATED_BAVEREGE;
	

elsif(fruit_juice_in='1') then

	state<=FRUIT_JUICE;

elsif(lemonade_in='1') then

	state<=LEMONADE;

elsif(ayran_in='1') then

	state<=AYRAN;

end if;

------------------------------CARBONATED_BAVEREGE------------------------------------------------

when CARBONATED_BAVEREGE=>

if(coke_in='1') then 

    coke_provided<='1';
	state<=COKE;

elsif(soda_water_in='1') then 

    soda_water_provided<='1';
	state<=SODA_WATER;	

end if;


when COKE=>
    
    coke_provided<='0';
	state<=IDLE;


when SODA_WATER=>
    
    soda_water_provided<='0';
	state<=IDLE;
	
------------------------------FRUIT_JUICE------------------------------------------------

when FRUIT_JUICE=>

if(apricot_in='1') then 
    
    apricot_provided<='1';
	state<=APRICOT_JUICE;

elsif(peach_in='1') then 

    peach_provided<='1';
	state<=PEACH_JUICE;	


elsif(cherry_in='1') then
    
    cherry_provided<='1';
	state<=CHERRY_JUICE;	

end if;

when APRICOT_JUICE=>
    
    apricot_provided<='0';
	state<=IDLE;


when PEACH_JUICE=>
    
    peach_provided<='0';
	state<=IDLE;

when CHERRY_JUICE=>
    
    cherry_provided<='0';
	state<=IDLE;
		
------------------------------LEMONADE------------------------------------------------

when LEMONADE=>

if(sugared_in='1') then 
    
    sugared_lemonade_provided<='1';
	state<=SUGARED_LEMONADE;

elsif(sugarless_in='1') then 

    sugarless_lemonade_provided<='1';
	state<=SUGARLESS_LEMONADE;	

end if;


when SUGARED_LEMONADE=>

    sugared_lemonade_provided<='0';
	state<=IDLE;


when SUGARLESS_LEMONADE=>

    sugarless_lemonade_provided<='0';
	state<=IDLE;
	
------------------------------AYRAN------------------------------------------------

when AYRAN=>

if(salty_ayran_in='1') then 

    salty_ayran_provided<='1';
	state<=SALTY_AYRAN;

elsif(saltless_ayran_in='1') then 

    saltless_ayran_provided<='1';
	state<=SALTLESS_AYRAN;	

end if;


when SALTY_AYRAN=>

    salty_ayran_provided<='0';
	state<=IDLE;


when SALTLESS_AYRAN=>

    saltless_ayran_provided<='0';
	state<=IDLE;
	
---------------------------------------------------------------------------------------------
	

when others =>

state<=IDLE;


--TEA

sugared_brewed_tea_provided <='0';
sugarless_brewed_tea_provided <='0';

sugared_weak_tea_provided  <='0';
sugarless_weak_tea_provided <='0';

sugared_sage_tea_provided <='0';
sugarless_sage_tea_provided <='0';

--COFFEE

sugared_Turkish_coffee_provided  <='0';
sugarless_Turkish_coffee_provided  <='0';

sugared_espresso_provided  <='0';
sugarless_espresso_provided <='0';

sugared_mocha_provided  <='0';
sugarless_mocha_provided <='0';

sugared_latte_provided  <='0';
sugarless_latte_provided  <='0';

--HOT_CHOCKLATE

sugared_hot_chocklate_provided <='0';
sugarless_hot_chocklate_provided <='0';

--SALEP

sugared_cinnamoned_salep_provided <='0';
sugarless_cinnamoned_salep_provided <='0';

sugared_cinnamonless_salep_provided <='0';
sugarless_cinnamonless_salep_provided <='0';

--CARBONATED_BAVEREGE

coke_provided <='0';
soda_water_provided <='0';


--FRUIT_JUICE

apricot_provided <='0';
peach_provided <='0';
cherry_provided <='0';

--LEMONADE

sugared_lemonade_provided <='0';
sugarless_lemonade_provided <='0';

--AYRAN

salty_ayran_provided <='0';
saltless_ayran_provided <='0';



end case;
end if;
end process;
end arch;
