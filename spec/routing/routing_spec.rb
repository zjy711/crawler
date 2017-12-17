require 'rails_helper'

RSpec.describe "routing to jobs", type: :routing do
  it "routes /jobs to jobs#create" do
    expect(post: "/jobs").to route_to(
      controller: "jobs",
      action: "create"
      )
  end

  it "routes /jobs/:id/status to job status" do
    expect(get: "/jobs/1/status").to route_to(
      controller: "jobs",
      action: "status",
      id: "1"
      )
  end

  it "routes /jobs/:id/results to job results" do
    expect(get: "/jobs/1/results").to route_to(
      controller: "jobs",
      action: "results",
      id: "1"
      )
  end
end
