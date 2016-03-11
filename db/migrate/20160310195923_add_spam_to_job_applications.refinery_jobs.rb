# This migration comes from refinery_jobs (originally 20150629201609)
class AddSpamToJobApplications < ActiveRecord::Migration
  def change
    add_column :refinery_job_applications, :spam, :boolean
  end
end
