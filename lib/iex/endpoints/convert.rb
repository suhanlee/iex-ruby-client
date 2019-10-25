module IEX
	module Endpoints
		module Convert
			def convert(options = {})
				get("fix/convert", options).map do |data|
					IEX::Resources::Convert.new(data)
				end
			rescue Faraday::ResourceNotFound => e
				raise IEX::Errors::SymbolNotFoundError.new(symbol, e.response[:body])
			end
		end
	end
end
