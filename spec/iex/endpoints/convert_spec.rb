require 'spec_helper'

describe IEX::Api::Client do
	include_context 'client'

	context 'known currency', vcr: { cassette_name: 'convert/USDCAD' } do
		subject do
			client.convert
		end
		let(:convert) { subject.first }
		it 'retrieves a price' do
			expect(convert).to eq 119.36
		end
	end
end
