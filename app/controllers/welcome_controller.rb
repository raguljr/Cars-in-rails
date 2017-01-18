class WelcomeController < ApplicationController
  def index
  	#@customer=Transaction.all
  	# puts @customer.inspect

  	#@trans=Variant.select(' transactions.customer_id,transactions.cost, variants.name').joins(:transactions)
  	@trans=Transaction.find_by_sql("select Customers.Name as cust_name,variants.name as varn,Models.Name,Cars.Name as carn,variants.cost,manufacturers.name as man,transactions.Secondchoice as cho from transactions 
inner join customers on transactions.customer_id=Customers.id 
inner join variants on variants.id=transactions.variant_id 
inner join models on models.id=variants.model_id
inner join cars on cars.id=models.car_id
inner join manufacturers on manufacturers.id=cars.manufacturer_id")
  	#@trans=Variant.joins(:transactions)
  	#puts @trans.inspect

  	@cs=Transaction.find_by_sql("select count(Customers.Name) as cc from transactions 
inner join customers on transactions.customer_id=Customers.id 
inner join variants on variants.id=transactions.variant_id 
inner join models on models.id=variants.model_id where Models.Name='i20'")
  	puts @cs.inspect

  	@tots=Transaction.find_by_sql("select sum(variants.cost) as ccc,count(*) as cou from transactions 
inner join customers on transactions.customer_id=Customers.id 
inner join variants on variants.id=transactions.variant_id 
inner join models on models.id=variants.model_id
inner join cars on cars.id=models.car_id where Cars.Name='Hyundai'
")

  	@ch=Transaction.find_by_sql("select max(Models.Name) as cccc from transactions 
inner join customers on transactions.customer_id=Customers.id 
inner join variants on variants.id=transactions.variant_id 
inner join models on models.id=variants.model_id
inner join cars on cars.id=models.car_id
inner join manufacturers on manufacturers.id=cars.manufacturer_id")

  	@sch=Transaction.find_by_sql("select transactions.Secondchoice as choice,Customers.name as cus from transactions 
inner join customers on transactions.customer_id=Customers.id 
inner join variants on variants.id=transactions.variant_id 
inner join models on models.id=variants.model_id
inner join cars on cars.id=models.car_id
inner join manufacturers on manufacturers.id=cars.manufacturer_id where Models.Name='i20'")

  end
end
