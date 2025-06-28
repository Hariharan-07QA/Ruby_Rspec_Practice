class ProgrammingLanguage
  attr_reader:name
  def initialize(name='Ruby')
    @name =name
  end
end

RSpec.describe ProgrammingLanguage do

  let(:language){language=ProgrammingLanguage.new('python')}

  it 'should store the name of the language' do
    expect(language.name).to eq('python')
  end

  context 'with no argument' do
   let(:language){language=ProgrammingLanguage.new}
    it 'should default Ruby as the name' do
      expect(language.name).to eq('Ruby')
    end
  end  
end