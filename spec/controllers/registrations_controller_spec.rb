require 'spec_helper'

describe RegistrationsController do
  context "#new" do
    before { get :new }
    it { should respond_with(:success) }
    it { should render_template(:new) }
    it { should assign_to(:registration) }
  end
end
