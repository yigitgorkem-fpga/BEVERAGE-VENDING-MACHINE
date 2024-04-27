library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.std_logic_unsigned.all; 

entity tb_beverage_vending_machine is
end tb_beverage_vending_machine;



architecture Behavioral of tb_beverage_vending_machine is

----------------------------------------COMPONENET-----------------------------------------------------------------------------------------------------------------------
component beverage_vending_machine is

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


end component;


----------------------------------------------DEFINING SIGNALS--------------------------------------------------------------------------------------



signal clk :  std_logic; -- Becasuse we will work with Finite State Macine, we need to indicate clk and reset inputs at entity
signal rst:  std_logic;

signal  button :  std_logic;
signal  hot_drink :  std_logic;
signal cold_drink :  std_logic;

signal sugared_in :  std_logic;
signal sugarless_in :  std_logic;


--------------------- STEPS FOR TEA -----------------------------

signal tea_in :  std_logic;

signal brewed_tea_in :  std_logic;
signal sugared_brewed_tea_provided :  std_logic;
signal sugarless_brewed_tea_provided :  std_logic;


signal weak_tea_in :  std_logic;
signal sugared_weak_tea_provided :  std_logic;
signal sugarless_weak_tea_provided :  std_logic;

signal sage_tea_in :  std_logic;
signal sugared_sage_tea_provided :  std_logic;
signal sugarless_sage_tea_provided :  std_logic;



-------------------------------------------------------------------

---------------------- STEPS FOR COFFEE ---------------------------
signal coffee_in :  std_logic;


signal Turkish_coffee_in :  std_logic;
signal sugared_Turkish_coffee_provided :  std_logic;
signal sugarless_Turkish_coffee_provided :  std_logic;


signal espresso_in :  std_logic;
signal sugared_espresso_provided :  std_logic;
signal sugarless_espresso_provided :  std_logic;

signal mocha_in :  std_logic;
signal sugared_mocha_provided :  std_logic;
signal sugarless_mocha_provided :  std_logic;

signal latte_in:  std_logic;
signal sugared_latte_provided :  std_logic;
signal sugarless_latte_provided :  std_logic;


---------------------------------------------------------------------

--------------------- STEPS FOR HOT CHOCKLATE -----------------------


signal hot_chocklate_in :  std_logic;
signal sugared_hot_chocklate_provided :  std_logic;
signal sugarless_hot_chocklate_provided :  std_logic;


-------------------------------------------------------------------

--------------------- STEPS FOR SALEP -----------------------------

signal salep_in :  std_logic;

signal cinnamoned_salep_in :  std_logic;
signal sugared_cinnamoned_salep_provided :  std_logic;
signal sugarless_cinnamoned_salep_provided :  std_logic;

signal cinnamonless_salep_in :  std_logic;
signal sugared_cinnamonless_salep_provided :  std_logic;
signal sugarless_cinnamonless_salep_provided :  std_logic;


-------------------------------------------------------------------

--------------------- STEPS FOR CARBONATED BEVERAGE -----------------------------

signal carbonated_baverage_in :  std_logic;

signal coke_in :  std_logic;
signal coke_provided :  std_logic;

signal soda_water_in :  std_logic;
signal soda_water_provided :  std_logic;

---------------------------------------------------------------------------------

--------------------- STEPS FOR FRUIT JUICE ------------------------------------

signal fruit_juice_in:  std_logic;

signal apricot_in :  std_logic;
signal apricot_provided : std_logic;

signal peach_in :  std_logic;
signal peach_provided :  std_logic;

signal cherry_in :  std_logic;
signal cherry_provided :  std_logic;

---------------------------------------------------------------------------------

--------------------- STEPS FOR LEMONADE --------------------------------------

signal lemonade_in : std_logic;

signal sugared_lemonade_provided :  std_logic;
signal sugarless_lemonade_provided :  std_logic;

--------------------------------------------------------------------------------

--------------------- STEPS FOR AYRAN -----------------------------------------

signal ayran_in : std_logic;

signal salty_ayran_in :  std_logic;
signal salty_ayran_provided:  std_logic;

signal saltless_ayran_in :  std_logic;
signal saltless_ayran_provided :  std_logic;

-----------------------------------------------------------------------------------------------------------------------------------

constant clock_period : time :=20ns;

begin

clock_process : process 
begin

clk<='1';
wait for clock_period/2;

clk<='0';
wait for clock_period/2;

end process;


------------------------------------------------------------------------------------------------------------------------------


uut : beverage_vending_machine port map(


clk => clk,
rst =>  rst,
button =>  button,
sugared_in =>  sugared_in,
hot_drink =>  hot_drink,
cold_drink =>cold_drink, 

sugarless_in =>  sugarless_in,
tea_in =>  tea_in,
brewed_tea_in =>  brewed_tea_in,
sugared_brewed_tea_provided =>  sugared_brewed_tea_provided,
sugarless_brewed_tea_provided =>  sugarless_brewed_tea_provided,
weak_tea_in =>  weak_tea_in,
sugared_weak_tea_provided  => sugared_weak_tea_provided,
sugarless_weak_tea_provided  => sugarless_weak_tea_provided,
sage_tea_in  => sage_tea_in,
sugared_sage_tea_provided =>  sugared_sage_tea_provided,
sugarless_sage_tea_provided =>  sugarless_sage_tea_provided,

coffee_in =>  coffee_in,
Turkish_coffee_in  => Turkish_coffee_in,
sugared_Turkish_coffee_provided =>  sugared_Turkish_coffee_provided,
sugarless_Turkish_coffee_provided =>  sugarless_Turkish_coffee_provided,
espresso_in =>  espresso_in,
sugared_espresso_provided  =>  sugared_espresso_provided,
sugarless_espresso_provided =>  sugarless_espresso_provided,
mocha_in =>  mocha_in,
sugared_mocha_provided => sugared_mocha_provided,
sugarless_mocha_provided =>  sugarless_mocha_provided,
latte_in  =>  latte_in,
sugared_latte_provided  =>  sugared_latte_provided,
sugarless_latte_provided  =>  sugarless_latte_provided,

hot_chocklate_in  => hot_chocklate_in,
sugared_hot_chocklate_provided  => sugared_hot_chocklate_provided,
sugarless_hot_chocklate_provided  => sugarless_hot_chocklate_provided,

salep_in  => salep_in,
cinnamoned_salep_in  => cinnamoned_salep_in,
sugared_cinnamoned_salep_provided  => sugared_cinnamoned_salep_provided,
sugarless_cinnamoned_salep_provided  =>  sugarless_cinnamoned_salep_provided,
cinnamonless_salep_in =>  cinnamonless_salep_in,
sugared_cinnamonless_salep_provided  =>  sugared_cinnamonless_salep_provided,
sugarless_cinnamonless_salep_provided  => sugarless_cinnamonless_salep_provided,

carbonated_baverage_in  => carbonated_baverage_in,
coke_in  => coke_in,
coke_provided =>  coke_provided,
soda_water_in  => soda_water_in,
soda_water_provided =>  soda_water_provided,

fruit_juice_in  =>  fruit_juice_in ,
apricot_in =>  apricot_in,
apricot_provided =>  apricot_provided,
peach_in=>peach_in,
cherry_in =>  cherry_in,
cherry_provided =>  cherry_provided,

lemonade_in  => lemonade_in,
sugared_lemonade_provided  =>  sugared_lemonade_provided,
sugarless_lemonade_provided  => sugarless_lemonade_provided,

ayran_in =>  ayran_in,
salty_ayran_in =>  salty_ayran_in,
salty_ayran_provided =>  salty_ayran_provided,
saltless_ayran_in  => saltless_ayran_in,
saltless_ayran_provided =>  saltless_ayran_provided



);



stim_process: process

begin 

rst<='1';

button <='0';
hot_drink <='0';
cold_drink<='0';

sugared_in <='0';
sugarless_in <='0';



--------------------- STEPS FOR TEA -----------------------------

tea_in <='0';
brewed_tea_in <='0';
weak_tea_in <='0';
sage_tea_in <='0';



-------------------------------------------------------------------

---------------------- STEPS FOR COFFEE ---------------------------
coffee_in <='0';
Turkish_coffee_in <='0';
espresso_in <='0';
mocha_in <='0';
latte_in<='0';


---------------------------------------------------------------------

--------------------- STEPS FOR HOT CHOCKLATE -----------------------


hot_chocklate_in <='0';


-------------------------------------------------------------------

--------------------- STEPS FOR SALEP -----------------------------

salep_in <='0';
cinnamoned_salep_in <='0';
cinnamonless_salep_in <='0';


-------------------------------------------------------------------

--------------------- STEPS FOR CARBONATED BEVERAGE -----------------------------

carbonated_baverage_in <='0';
coke_in <='0';
soda_water_in <='0';

---------------------------------------------------------------------------------

--------------------- STEPS FOR FRUIT JUICE ------------------------------------

fruit_juice_in<='0';
apricot_in <='0';
cherry_in <='0';
peach_in <='0';
cherry_in <='0';

---------------------------------------------------------------------------------

--------------------- STEPS FOR LEMONADE --------------------------------------

lemonade_in <='0';


--------------------------------------------------------------------------------

--------------------- STEPS FOR AYRAN -----------------------------------------

ayran_in <='0';
salty_ayran_in <='0';
saltless_ayran_in <='0';

wait for 100ns;


rst<='0';
wait for clock_period*2;



--------------------------PROBABILITIES----------------------------------------------


--SUGARED BREWED TEA CASE

button<='1';
wait for clock_period;
hot_drink<='1';
wait for clock_period;
hot_drink<='0';
wait for clock_period;
tea_in<='1';
wait for clock_period;
tea_in<='0';
wait for clock_period;
brewed_tea_in<='1';
wait for clock_period;
brewed_tea_in<='0';
wait for clock_period;
sugared_in<='1';
wait for clock_period;
sugared_in<='0';
button<='0';

wait for clock_period*10;


----------------------------------------------------------------------------------------------------

--SUGARLESS BREWED TEA CASE

button<='1';
wait for clock_period;
hot_drink<='1';
wait for clock_period;
hot_drink<='0';
wait for clock_period;
tea_in<='1';
wait for clock_period;
tea_in<='0';
wait for clock_period;
brewed_tea_in<='1';
wait for clock_period;
brewed_tea_in<='0';
wait for clock_period;
sugarless_in<='1';
wait for clock_period;
sugarless_in<='0';
button<='0';

wait for clock_period*10;


-----------------------------------------------------------------------------------------------------------------------

----------------------------------------------------------------------------------------------------

--SUGARED WEAK TEA CASE

button<='1';
wait for clock_period;
hot_drink<='1';
wait for clock_period;
hot_drink<='0';
wait for clock_period;
tea_in<='1';
wait for clock_period;
tea_in<='0';
wait for clock_period;
weak_tea_in<='1';
wait for clock_period;
weak_tea_in<='0';
wait for clock_period;
sugared_in<='1';
wait for clock_period;
sugared_in<='0';
button<='0';

wait for clock_period*10;


-----------------------------------------------------------------------------------------------------------------------

----------------------------------------------------------------------------------------------------

--SUGARLES WEAK TEA CASE

button<='1';
wait for clock_period;
hot_drink<='1';
wait for clock_period;
hot_drink<='0';
wait for clock_period;
tea_in<='1';
wait for clock_period;
tea_in<='0';
wait for clock_period;
weak_tea_in<='1';
wait for clock_period;
weak_tea_in<='0';
wait for clock_period;
sugarless_in<='1';
wait for clock_period;
sugarless_in<='0';
button<='0';

wait for clock_period*10;


-----------------------------------------------------------------------------------------------------------------------

-----------------------------------------------------------------------------------------------------------------------

--SUGARED SAGE TEA CASE

button<='1';
wait for clock_period;
hot_drink<='1';
wait for clock_period;
hot_drink<='0';
wait for clock_period;
tea_in<='1';
wait for clock_period;
tea_in<='0';
wait for clock_period;
sage_tea_in<='1';
wait for clock_period;
sage_tea_in<='0';
wait for clock_period;
sugared_in<='1';
wait for clock_period;
sugared_in<='0';
button<='0';

wait for clock_period*10;


-----------------------------------------------------------------------------------------------------------------------

-----------------------------------------------------------------------------------------------------------------------

--SUGARLESS SAGE TEA CASE

button<='1';
wait for clock_period;
hot_drink<='1';
wait for clock_period;
hot_drink<='0';
wait for clock_period;
tea_in<='1';
wait for clock_period;
tea_in<='0';
wait for clock_period;
sage_tea_in<='1';
wait for clock_period;
sage_tea_in<='0';
wait for clock_period;
sugared_in<='1';
wait for clock_period;
sugared_in<='0';
button<='0';

wait for clock_period*10;


-----------------------------------------------------------------------------------------------------------------------

-----------------------------------------------------------------------------------------------------------------------

--SUGARED TURKISH COFFEE CASE

button<='1';
wait for clock_period;
hot_drink<='1';
wait for clock_period;
hot_drink<='0';
wait for clock_period;
coffee_in<='1';
wait for clock_period;
coffee_in<='0';
wait for clock_period;
Turkish_coffee_in<='1';
wait for clock_period;
Turkish_coffee_in<='0';
wait for clock_period;
sugared_in<='1';
wait for clock_period;
sugared_in<='0';
button<='0';

wait for clock_period*10;


-----------------------------------------------------------------------------------------------------------------------



-----------------------------------------------------------------------------------------------------------------------

--SUGARLESS TURKISH COFFEE CASE

button<='1';
wait for clock_period;
hot_drink<='1';
wait for clock_period;
hot_drink<='0';
wait for clock_period;
coffee_in<='1';
wait for clock_period;
coffee_in<='0';
wait for clock_period;
Turkish_coffee_in<='1';
wait for clock_period;
Turkish_coffee_in<='0';
wait for clock_period;
sugarless_in<='1';
wait for clock_period;
sugarless_in<='0';
button<='0';

wait for clock_period*10;


-----------------------------------------------------------------------------------------------------------------------


-----------------------------------------------------------------------------------------------------------------------

--SUGARED ESPRESSO CASE

button<='1';
wait for clock_period;
hot_drink<='1';
wait for clock_period;
hot_drink<='0';
wait for clock_period;
coffee_in<='1';
wait for clock_period;
coffee_in<='0';
wait for clock_period;
espresso_in<='1';
wait for clock_period;
espresso_in<='0';
wait for clock_period;
sugared_in<='1';
wait for clock_period;
sugared_in<='0';
button<='0';

wait for clock_period*10;


-----------------------------------------------------------------------------------------------------------------------



-----------------------------------------------------------------------------------------------------------------------

--SUGARLESS ESPRESSO CASE

button<='1';
wait for clock_period;
hot_drink<='1';
wait for clock_period;
hot_drink<='0';
wait for clock_period;
coffee_in<='1';
wait for clock_period;
coffee_in<='0';
wait for clock_period;
espresso_in<='1';
wait for clock_period;
espresso_in<='0';
wait for clock_period;
sugarless_in<='1';
wait for clock_period;
sugarless_in<='0';
button<='0';

wait for clock_period*10;


-----------------------------------------------------------------------------------------------------------------------


-----------------------------------------------------------------------------------------------------------------------

--SUGARED MOCHA CASE

button<='1';
wait for clock_period;
hot_drink<='1';
wait for clock_period;
hot_drink<='0';
wait for clock_period;
coffee_in<='1';
wait for clock_period;
coffee_in<='0';
wait for clock_period;
mocha_in<='1';
wait for clock_period;
mocha_in<='0';
wait for clock_period;
sugared_in<='1';
wait for clock_period;
sugared_in<='0';
button<='0';

wait for clock_period*10;


-----------------------------------------------------------------------------------------------------------------------

-----------------------------------------------------------------------------------------------------------------------

--SUGARLESS MOCHA CASE

button<='1';
wait for clock_period;
hot_drink<='1';
wait for clock_period;
hot_drink<='0';
wait for clock_period;
coffee_in<='1';
wait for clock_period;
coffee_in<='0';
wait for clock_period;
mocha_in<='1';
wait for clock_period;
mocha_in<='0';
wait for clock_period;
sugarless_in<='1';
wait for clock_period;
sugarless_in<='0';
button<='0';

wait for clock_period*10;


-----------------------------------------------------------------------------------------------------------------------

-----------------------------------------------------------------------------------------------------------------------

--SUGARED LATTE CASE

button<='1';
wait for clock_period;
hot_drink<='1';
wait for clock_period;
hot_drink<='0';
wait for clock_period;
coffee_in<='1';
wait for clock_period;
coffee_in<='0';
wait for clock_period;
latte_in<='1';
wait for clock_period;
latte_in<='0';
wait for clock_period;
sugared_in<='1';
wait for clock_period;
sugared_in<='0';
button<='0';

wait for clock_period*10;


-----------------------------------------------------------------------------------------------------------------------


-----------------------------------------------------------------------------------------------------------------------

--SUGARLESS LATTE CASE

button<='1';
wait for clock_period;
hot_drink<='1';
wait for clock_period;
hot_drink<='0';
wait for clock_period;
coffee_in<='1';
wait for clock_period;
coffee_in<='0';
wait for clock_period;
latte_in<='1';
wait for clock_period;
latte_in<='0';
wait for clock_period;
sugarless_in<='1';
wait for clock_period;
sugarless_in<='0';
button<='0';

wait for clock_period*10;


-----------------------------------------------------------------------------------------------------------------------

-----------------------------------------------------------------------------------------------------------------------

--SUGARED HOT CHOCKLATE CASE

button<='1';
wait for clock_period;
hot_drink<='1';
wait for clock_period;
hot_drink<='0';
wait for clock_period;
hot_chocklate_in<='1';
wait for clock_period;
hot_chocklate_in<='0';
wait for clock_period;
sugared_in<='1';
wait for clock_period;
sugared_in<='0';
button<='0';

wait for clock_period*10;


-----------------------------------------------------------------------------------------------------------------------

-----------------------------------------------------------------------------------------------------------------------

--SUGARLESS HOT CHOCKLATE CASE

button<='1';
wait for clock_period;
hot_drink<='1';
wait for clock_period;
hot_drink<='0';
wait for clock_period;
hot_chocklate_in<='1';
wait for clock_period;
hot_chocklate_in<='0';
wait for clock_period;
sugarless_in<='1';
wait for clock_period;
sugarless_in<='0';
button<='0';

wait for clock_period*10;


-----------------------------------------------------------------------------------------------------------------------


-----------------------------------------------------------------------------------------------------------------------

--SUGARED CINNAMONED SALEP CASE

button<='1';
wait for clock_period;
hot_drink<='1';
wait for clock_period;
hot_drink<='0';
wait for clock_period;
salep_in<='1';
wait for clock_period;
salep_in<='0';
wait for clock_period;
cinnamoned_salep_in<='1';
wait for clock_period;
cinnamoned_salep_in<='0';
wait for clock_period;
sugared_in<='1';
wait for clock_period;
sugared_in<='0';
button<='0';

wait for clock_period*10;


-----------------------------------------------------------------------------------------------------------------------

-----------------------------------------------------------------------------------------------------------------------

--SUGARLESS CINNAMONED SALEP CASE

button<='1';
wait for clock_period;
hot_drink<='1';
wait for clock_period;
hot_drink<='0';
wait for clock_period;
salep_in<='1';
wait for clock_period;
salep_in<='0';
wait for clock_period;
cinnamoned_salep_in<='1';
wait for clock_period;
cinnamoned_salep_in<='0';
wait for clock_period;
sugarless_in<='1';
wait for clock_period;
sugarless_in<='0';
button<='0';

wait for clock_period*10;


-----------------------------------------------------------------------------------------------------------------------

-----------------------------------------------------------------------------------------------------------------------

--SUGARED CINNAMONLESS SALEP CASE

button<='1';
wait for clock_period;
hot_drink<='1';
wait for clock_period;
hot_drink<='0';
wait for clock_period;
salep_in<='1';
wait for clock_period;
salep_in<='0';
wait for clock_period;
cinnamonless_salep_in<='1';
wait for clock_period;
cinnamonless_salep_in<='0';
wait for clock_period;
sugared_in<='1';
wait for clock_period;
sugared_in<='0';
button<='0';

wait for clock_period*10;


-----------------------------------------------------------------------------------------------------------------------

-----------------------------------------------------------------------------------------------------------------------

--SUGARLESS CINNAMONLESS SALEP CASE

button<='1';
wait for clock_period;
hot_drink<='1';
wait for clock_period;
hot_drink<='0';
wait for clock_period;
salep_in<='1';
wait for clock_period;
salep_in<='0';
wait for clock_period;
cinnamonless_salep_in<='1';
wait for clock_period;
cinnamonless_salep_in<='0';
wait for clock_period;
sugarless_in<='1';
wait for clock_period;
sugarless_in<='0';
button<='0';

wait for clock_period*10;

-----------------------------------------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------------------------
--------------------------------------------COLD DRINKS----------------------------------------------------------------
-----------------------------------------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------------------------

-- COKE CASE

button<='1';
wait for clock_period;
cold_drink<='1';
wait for clock_period;
cold_drink<='0';
wait for clock_period;
carbonated_baverage_in<='1';
wait for clock_period;
carbonated_baverage_in<='0';
wait for clock_period;
coke_in<='1';
wait for clock_period;
coke_in<='0';
button<='0';

wait for clock_period*10;


-----------------------------------------------------------------------------------------------------------------------

-----------------------------------------------------------------------------------------------------------------------

-- SODA WATER CASE

button<='1';
wait for clock_period;
cold_drink<='1';
wait for clock_period;
cold_drink<='0';
wait for clock_period;
carbonated_baverage_in<='1';
wait for clock_period;
carbonated_baverage_in<='0';
wait for clock_period;
soda_water_in<='1';
wait for clock_period;
soda_water_in<='0';
button<='0';

wait for clock_period*10;



-----------------------------------------------------------------------------------------------------------------------

-----------------------------------------------------------------------------------------------------------------------

-- APRICOT JUICE CASE

button<='1';
wait for clock_period;
cold_drink<='1';
wait for clock_period;
cold_drink<='0';
wait for clock_period;
fruit_juice_in<='1';
wait for clock_period;
fruit_juice_in<='0';
wait for clock_period;
apricot_in<='1';
wait for clock_period;
apricot_in<='0';
button<='0';

wait for clock_period*10;



-----------------------------------------------------------------------------------------------------------------------

-----------------------------------------------------------------------------------------------------------------------

-- PEACH JUICE CASE

button<='1';
wait for clock_period;
cold_drink<='1';
wait for clock_period;
cold_drink<='0';
wait for clock_period;
fruit_juice_in<='1';
wait for clock_period;
fruit_juice_in<='0';
wait for clock_period;
peach_in<='1';
wait for clock_period;
peach_in<='0';
button<='0';

wait for clock_period*10;



-----------------------------------------------------------------------------------------------------------------------

-----------------------------------------------------------------------------------------------------------------------

-- CHERRY JUICE CASE

button<='1';
wait for clock_period;
cold_drink<='1';
wait for clock_period;
cold_drink<='0';
wait for clock_period;
fruit_juice_in<='1';
wait for clock_period;
fruit_juice_in<='0';
wait for clock_period;
cherry_in<='1';
wait for clock_period;
cherry_in<='0';
button<='0';

wait for clock_period*10;



-----------------------------------------------------------------------------------------------------------------------


-----------------------------------------------------------------------------------------------------------------------

-- SUGARED LEMONADE CASE

button<='1';
wait for clock_period;
cold_drink<='1';
wait for clock_period;
cold_drink<='0';
wait for clock_period;
lemonade_in<='1';
wait for clock_period;
lemonade_in<='0';
wait for clock_period;
sugared_in<='1';
wait for clock_period;
sugared_in<='0';
button<='0';

wait for clock_period*10;



-----------------------------------------------------------------------------------------------------------------------


-----------------------------------------------------------------------------------------------------------------------

-- SUGARLESS LEMONADE CASE

button<='1';
wait for clock_period;
cold_drink<='1';
wait for clock_period;
cold_drink<='0';
wait for clock_period;
lemonade_in<='1';
wait for clock_period;
lemonade_in<='0';
wait for clock_period;
sugarless_in<='1';
wait for clock_period;
sugarless_in<='0';
button<='0';

wait for clock_period*10;



-----------------------------------------------------------------------------------------------------------------------


-----------------------------------------------------------------------------------------------------------------------

-- SALTY AYRAN CASE

button<='1';
wait for clock_period;
cold_drink<='1';
wait for clock_period;
cold_drink<='0';
wait for clock_period;
ayran_in<='1';
wait for clock_period;
ayran_in<='0';
wait for clock_period;
salty_ayran_in<='1';
wait for clock_period;
salty_ayran_in<='0';
button<='0';

wait for clock_period*10;



-----------------------------------------------------------------------------------------------------------------------

-----------------------------------------------------------------------------------------------------------------------

-- SALTLESS AYRAN CASE

button<='1';
wait for clock_period;
cold_drink<='1';
wait for clock_period;
cold_drink<='0';
wait for clock_period;
ayran_in<='1';
wait for clock_period;
ayran_in<='0';
wait for clock_period;
saltless_ayran_in<='1';
wait for clock_period;
saltless_ayran_in<='0';
button<='0';

wait for clock_period*10;



-----------------------------------------------------------------------------------------------------------------------


wait;
end process;
end Behavioral;
