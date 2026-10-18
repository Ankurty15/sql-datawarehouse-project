exec bronze.load_bronze;

alter procedure bronze.load_bronze as
begin
	begin try
		truncate table bronze.crm_cust_info
		Bulk insert bronze.crm_cust_info
		from 'C:\Users\ankur\Downloads\Source_crm\cust_info.csv'
		with (
			firstrow =2,
			fieldterminator = ',',
			tablock
		)

		truncate table bronze.crm_prd_info
		Bulk insert bronze.crm_prd_info
		from 'C:\Users\ankur\Downloads\Source_crm\prd_info.csv'
		with (
			firstrow =2,
			fieldterminator = ',',
			tablock
		)

		truncate table bronze.crm_sales_details
		Bulk insert bronze.crm_sales_details
		from 'C:\Users\ankur\Downloads\Source_crm\sales_details.csv'
		with (
			firstrow =2,
			fieldterminator = ',',
			tablock
		)

		truncate table bronze.erp_px_cat_g1v2
		Bulk insert bronze.erp_px_cat_g1v2
		from 'C:\Users\ankur\Downloads\Source_erp\px_cat_g1v2.csv'
		with (
			firstrow =2,
			fieldterminator = ',',
			tablock
		)

		truncate table bronze.erp_cust_az12
		Bulk insert bronze.erp_cust_az12
		from 'C:\Users\ankur\Downloads\Source_erp\cust_az12.csv'
		with (
			firstrow =2,
			fieldterminator = ',',
			tablock
		)

		truncate table bronze.erp_loc_a101
		Bulk insert bronze.erp_loc_a101
		from 'C:\Users\ankur\Downloads\Source_erp\loc_a101.csv'
		with (
			firstrow =2,
			fieldterminator = ',',
			tablock
		)
	end try
	begin catch
		print 'Error occured during loading bronze layer'
		print 'Error message' + Error_message();
		print 'Error number' + cast (Error_number() as nvarchar);
		print 'Error number' + cast (Error_state() as nvarchar);
	end catch
end
