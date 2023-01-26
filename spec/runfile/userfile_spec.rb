describe Userfile do
  subject { described_class.load_file 'runfile' }

  describe '#inspect' do
    subject { described_class.new 'code', name: 'test', path: '/path' }

    it 'is inspectable' do
      expect(subject.inspect).to match_approval('userfile/inspect')
    end
  end

  context 'when initialized without a path' do
    subject { described_class.new 'title "hello"' }

    it 'calls eval without a path' do
      expect(subject.title).to eq 'hello'
    end
  end

  context 'when action is not properly defined' do
    it 'raises an error' do
      Dir.chdir 'spec/integration/action-not-found' do
        expect { subject.run %w[hello] }
          .to raise_approval('userfile/action-not-found')
          .diff(4)
      end
    end
  end
end
