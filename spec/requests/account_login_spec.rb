require "rails_helper"

RSpec.describe "Account login", type: :request do
  it "logs in an account created directly in setup" do
    account = Account.create!(
      email_address: "account@example.com",
      password: "password",
      password_confirmation: "password"
    )

    get root_path
    expect(response).to redirect_to(new_session_path)

    post session_path, params: { email_address: account.email_address, password: "password" }

    expect(response).to redirect_to(root_url)
    expect(cookies["session_id"]).to be_present
    expect(Session.last.account).to eq(account)
  end
end
