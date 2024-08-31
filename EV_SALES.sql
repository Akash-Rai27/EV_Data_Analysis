USE EV_Sales;

SELECT * FROM [dbo].['EV Maker by Place'] ;
SELECT * FROM [dbo].[OperationalPC];
SELECT * FROM [dbo].['Vehicle Class - All'];
SELECT * FROM [dbo].['ev_cat_01-24'];
SELECT * FROM [dbo].['ev_sales_by_makers_and_cat_15-24'];

SELECT [Place], COUNT([EV Maker]) AS 'No_of_EV_Makers' FROM [dbo].['EV Maker by Place'] GROUP BY [Place] ORDER BY 'No_of_EV_Makers' DESC;

SELECT [State], COUNT([EV Maker]) AS 'No_of_EV_Makers' FROM [dbo].['EV Maker by Place'] GROUP BY [State] ORDER BY 'No_of_EV_Makers' DESC;

SELECT e.[EV Maker],o.[No# of Operational PCS] FROM [dbo].['EV Maker by Place'] e JOIN [dbo].[OperationalPC] O on e.State=o.State;

SELECT e.[Place],SUM(o.[No# of Operational PCS]) AS Total_no_of_operational_pieces FROM [dbo].['EV Maker by Place'] e 
JOIN [dbo].[OperationalPC] O on e.State=o.State GROUP BY e.[Place] ORDER BY Total_no_of_operational_pieces DESC,Place DESC;

SELECT e.[Place],e.[EV Maker],SUM(o.[No# of Operational PCS]) AS Total_no_of_operational_pieces FROM [dbo].['EV Maker by Place'] e 
JOIN [dbo].[OperationalPC] O on e.State=o.State GROUP BY e.[Place],e.[EV Maker] ORDER BY Total_no_of_operational_pieces DESC,Place DESC;

