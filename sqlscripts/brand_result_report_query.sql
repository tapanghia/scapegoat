(select brand_name as "Brand Name", base_rnd_name as "Base Research Project", period as "period", units_sold as "value", "BUnits Sold" as "label" from brand_result where period = $P{period} and team like $P{teamName})
UNION
(select brand_name as "Brand Name", base_rnd_name as "Base Research Project", period as "period", ave_retail_price as "value", "CAverage Retail Price" as "label" from brand_result where period = $P{period} and team like $P{teamName})
UNION
(select brand_name as "Brand Name", base_rnd_name as "Base Research Project", period as "period", revenues as "value", "DRevenues" as "label" from brand_result where period = $P{period} and team like $P{teamName})
UNION
(select brand_name as "Brand Name", base_rnd_name as "Base Research Project", period as "period", units_produced as "value", "FUnits Produced" as "label" from brand_result where period = $P{period} and team like $P{teamName})
UNION
(select brand_name as "Brand Name", base_rnd_name as "Base Research Project", period as "period", transfer_price as "value", "GTransfer price" as "label" from brand_result where period = $P{period} and team like $P{teamName})
UNION
(select brand_name as "Brand Name", base_rnd_name as "Base Research Project", period as "period", cost_of_goods_sold as "value", "HCost of goods sold" as "label" from brand_result where period = $P{period} and team like $P{teamName})
UNION
(select brand_name as "Brand Name", base_rnd_name as "Base Research Project", period as "period", units_in_inventory as "value", "IUnits in inventory" as "label" from brand_result where period = $P{period} and team like $P{teamName})
UNION
(select brand_name as "Brand Name", base_rnd_name as "Base Research Project", period as "period", inventory_holding_cost as "value", "JInventory holding cost" as "label" from brand_result where period = $P{period} and team like $P{teamName})
UNION
(select brand_name as "Brand Name", base_rnd_name as "Base Research Project", period as "period", disposal_loss as "value", "KInventory disposal loss" as "label" from brand_result where period = $P{period} and team like $P{teamName})
UNION
(select brand_name as "Brand Name", base_rnd_name as "Base Research Project", period as "period", contribution_before_marketing as "value", "LContribution before marketing" as "label" from brand_result where period = $P{period} and team like $P{teamName})
UNION
(select brand_name as "Brand Name", base_rnd_name as "Base Research Project", period as "period", adv_expense as "value", "NAdvertising expenditures" as "label" from brand_result where period = $P{period} and team like $P{teamName})
UNION
(select brand_name as "Brand Name", base_rnd_name as "Base Research Project", period as "period", adv_research_expense as "value", "OAdvertising research expenditures" as "label" from brand_result where period = $P{period} and team like $P{teamName})
UNION
(select brand_name as "Brand Name", base_rnd_name as "Base Research Project", period as "period", sales_force_expense as "value", "PSales Force" as "label" from brand_result where period = $P{period} and team like $P{teamName})
UNION
(select brand_name as "Brand Name", base_rnd_name as "Base Research Project", period as "period", contributing_after_marketing as "value", "QContribution after marketing" as "label" from brand_result where period = $P{period} and team like $P{teamName})
UNION
(select brand_name as "Brand Name", base_rnd_name as "Base Research Project", period as "period", -1 as "value", "ASales" as "label" from brand_result where period = $P{period} and team like $P{teamName})
UNION
(select brand_name as "Brand Name", base_rnd_name as "Base Research Project", period as "period", -1 as "value", "EProduction" as "label" from brand_result where period = $P{period} and team like $P{teamName})
UNION
(select brand_name as "Brand Name", base_rnd_name as "Base Research Project", period as "period", -1 as "value", "MMarketing" as "label" from brand_result where period = $P{period} and team like $P{teamName})
