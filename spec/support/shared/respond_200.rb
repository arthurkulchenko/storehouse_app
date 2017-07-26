shared_examples_for "Respond with 200" do
  it "responds with an HTTP 200 status" do
    expect(response).to be_success
    expect(response).to have_http_status(200)
  end
end