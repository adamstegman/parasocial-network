require "rails_helper"

RSpec.describe "Account login", type: :request do
  fixtures :accounts

  it "logs in an account from fixtures" do
    account = accounts(:one)

    get root_path
    expect(response).to redirect_to(new_session_path)

    post session_path, params: { email_address: account.email_address, password: "password" }

    expect(response).to redirect_to(root_url)
    expect(cookies["session_id"]).to be_present
    expect(Session.last.account).to eq(account)
  end
end
