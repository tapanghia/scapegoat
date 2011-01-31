(select team_name as "Team Name", period as "period", units_sold as "value", "BUnits Sold" as "label" from team_result where period = $P{period} and team_name like $P{teamName})
UNION
(select team_name as "Team Name", period as "period", revenues as "value", "CRevenues" as "label" from team_result where period = $P{period} and team_name like $P{teamName})
UNION
(select team_name as "Team Name", period as "period", units_produced as "value", "EUnits Produced" as "label" from team_result where period = $P{period} and team_name like $P{teamName})
UNION
(select team_name as "Team Name", period as "period", cost_of_goods_sold as "value", "FCost of goods sold" as "label" from team_result where period = $P{period} and team_name like $P{teamName})
UNION
(select team_name as "Team Name", period as "period", units_in_inventory as "value", "GUnits in inventory" as "label" from team_result where period = $P{period} and team_name like $P{teamName})
UNION
(select team_name as "Team Name", period as "period", inventory_holding_cost as "value", "HInventory holding cost" as "label" from team_result where period = $P{period} and team_name like $P{teamName})
UNION
(select team_name as "Team Name", period as "period", disposal_loss as "value", "IInventory disposal loss" as "label" from team_result where period = $P{period} and team_name like $P{teamName})
UNION
(select team_name as "Team Name", period as "period", contribution_before_marketing as "value", "JContribution before marketing" as "label" from team_result where period = $P{period} and team_name like $P{teamName})
UNION
(select team_name as "Team Name", period as "period", adv_expense as "value", "LAdvertising expenditures" as "label" from team_result where period = $P{period} and team_name like $P{teamName})
UNION
(select team_name as "Team Name", period as "period", adv_research_expense as "value", "MAdvertising research expenditures" as "label" from team_result where period = $P{period} and team_name like $P{teamName})
UNION
(select team_name as "Team Name", period as "period", sales_force_expense as "value", "NSales Force" as "label" from team_result where period = $P{period} and team_name like $P{teamName})
UNION
(select team_name as "Team Name", period as "period", contributing_after_marketing as "value", "OContribution after marketing" as "label" from team_result where period = $P{period} and team_name like $P{teamName})
UNION
(select team_name as "Team Name", period as "period", market_research_expense as "value", "QMarket research studies" as "label" from team_result where period = $P{period} and team_name like $P{teamName})
UNION
(select team_name as "Team Name", period as "period", rnd_expense as "value", "RResearch and development" as "label" from team_result where period = $P{period} and team_name like $P{teamName})
UNION
(select team_name as "Team Name", period as "period", net_contribution as "value", "SNet Contribution" as "label" from team_result where period = $P{period} and team_name like $P{teamName})
UNION
(select team_name as "Team Name", period as "period", -1 as "value", "ASales" as "label" from team_result where period = $P{period} and team_name like $P{teamName})
UNION
(select team_name as "Team Name", period as "period", -1 as "value", "DProduction" as "label" from team_result where period = $P{period} and team_name like $P{teamName})
UNION
(select team_name as "Team Name", period as "period", -1 as "value", "KMarketing" as "label" from team_result where period = $P{period} and team_name like $P{teamName})
UNION
(select team_name as "Team Name", period as "period", -1 as "value", "POther Expenses" as "label" from team_result where period = $P{period} and team_name like $P{teamName})
