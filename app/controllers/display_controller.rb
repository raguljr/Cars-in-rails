class DisplayController < ApplicationController
  def show
  	#@tab=Transaction.joins(:customer , :variant)
  	@tab=Transaction
  	.joins(:customer , [{variant: :model}],[{model: :car}])
  	#@tab=Transaction.joins([{variant: :model}],:customer)

  	

  	@que=Transaction.joins(:customer , [{variant: :model}]).where(Models:{Name: 'i20'}).count

  	puts @que.inspect

  	@que1=Transaction
  	.joins(:customer , [{variant: :model}])
  	.where(Models:{Name: 'i20'})

  	@que2=Transaction.joins(:customer , :variant ,[{variant: :model}]).maximum("Models.Name")

  

  	@que3=Transaction
  	.joins(:customer , [{variant: :model}],[{model: :car}])
  	.where(Cars:{Name: 'Hyundai'}).sum("Transactions.Cost")

  end
end
