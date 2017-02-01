require 'rails_helper'

describe "perform" do
  let(:size_converter) {SizeConverter.new}
  
  context 'converting from US to UK' do
    it 'should convert 00 to 2' do 
      expect(size_converter.perform(from: "US", size: "00", to: "UK")).to eq "2"
    end
    
    it 'should convert 22 to 26' do
      expect(size_converter.perform(from: "US", size: "22", to: "UK")).to eq "26"
    end
  end
  
  context 'converting from UK to US' do
    it 'should convert 2 to 00' do 
      expect(size_converter.perform(from: "UK", size: "2", to: "US")).to eq "00"
    end
    
    it 'should convert 26 to 22' do
      expect(size_converter.perform(from: "UK", size: "26", to: "US")).to eq "22"
    end
  end
  
  context 'converting from UK to FR' do
    it 'should convert 2 to 30' do 
      expect(size_converter.perform(from: "UK", size: "2", to: "FR")).to eq "30"
    end
    
    it 'should convert 26 to 54' do
      expect(size_converter.perform(from: "UK", size: "26", to: "FR")).to eq "54"
    end
  end
  
  context 'converting from FR to UK' do
    it 'should convert 30 to 2' do 
      expect(size_converter.perform(from: "FR", size: "30", to: "UK")).to eq "2"
    end
    
    it 'should convert 54 to 26' do
      expect(size_converter.perform(from: "FR", size: "54", to: "UK")).to eq "26"
    end
  end
  
  context 'converting from UK to IT' do
    it 'should convert 2 to 34' do 
      expect(size_converter.perform(from: "UK", size: "2", to: "IT")).to eq "34"
    end
    
    it 'should convert 26 to 58' do
      expect(size_converter.perform(from: "UK", size: "26", to: "IT")).to eq "58"
    end
  end
  
  context 'converting from IT to UK' do
    it 'should convert 34 to 2' do 
      expect(size_converter.perform(from: "IT", size: "34", to: "UK")).to eq "2"
    end
    
    it 'should convert 58 to 26' do
      expect(size_converter.perform(from: "IT", size: "58", to: "UK")).to eq "26"
    end
  end
end