require 'spec_helper'

module ArenaApi
  describe Configuration do
    describe 'configured defaults' do
      let(:email)     { 'bob@example.com' }
      let(:password)  { 'password1' }
      let(:workspace) { '123456789' }

      before do
        described_class.configure do |c|
          c.email = email
          c.password = password
          c.workspace = workspace
        end
      end

      describe 'saving defaults as class variables' do
        describe 'email' do
          subject { described_class.email }
          it { is_expected.to eq(email) }
        end

        describe 'password' do
          subject { described_class.password }
          it { is_expected.to eq(password) }
        end

        describe 'workspace' do
          subject { described_class.workspace }
          it { is_expected.to eq(workspace) }
        end
      end
    end
  end
end
