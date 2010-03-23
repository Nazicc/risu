#!/usr/bin/env ruby 

#Jacob Hammack
#Hammackj LLC.
#A active record migration script for creating tables for parsing the data from .nessus v2 files

#To use this file type:
#./nessus_db_migrate.rb

require 'rubygems'  
require 'active_record'  
require 'yaml'
require 'nessus_db'


class NessusCreateTables < ActiveRecord::Migration
	def self.up
		create_table :policies do |t|
			t.column :name, :string
			t.column :comments, :string
		end
		
		create_table :server_preferences do |t|
		  t.column :policy_id, :integer
		  t.column :name, :string
		  t.column :value, :string
		end		
		
		create_table :plugins_preferences do |t|
		  t.column :policy_id, :integer
		  t.column :plugin_id, :integer
		  t.column :plugin_name, :string
		  t.column :fullname, :string
		  t.column :preference_name, :string
		  t.column :preference_type, :string		  		  
		  t.column :preference_values, :string
		  t.column :selected_values, :string		  		  		  		  
		end

		create_table :family_selections do |t|
		  t.column :policy_id, :integer
		  t.column :family_name, :string
		  t.column :status, :string
		end		
				
		create_table :reports do |t|
		  t.column :policy_id, :integer
		  t.column :name, :string
		end
		
		create_table :hosts do |t|
		  t.column :report_id, :integer
		  t.column :name, :string
		  t.column :os, :string
		  t.column :mac, :string
		  t.column :start, :datetime
		  t.column :end, :datetime
		end
	
		create_table :items do |t|
		  t.column :host_id, :integer
		  t.column :plugin_id, :integer
		  t.column :plugin_output, :text
		  t.column :port, :integer
		  t.column :svc_name, :string
		  t.column :protocol, :string
		  t.column :severity, :integer
		  t.column :verified, :boolean
		end	
		
		create_table :plugins do |t|
		  t.column :plugin_name, :string
		  t.column :family_name, :string
		  t.column :description, :string
		  t.column :plugin_version, :string
		  t.column :plugin_publication_date, :datetime
		  t.column :vuln_publication_date, :datetime
      t.column :cvss_vector, :string
      t.column :cvss_base_score, :string
		  t.column :risk_factor, :string
		  t.column :solution, :string
		  t.column :synopsis, :string
	  end
	  
		create_table :individual_plugin_selections do |t|
		  t.column :policy_id, :string
		  t.column :plugin_id, :integer
		  t.column :plugin_name, :string		  
		  t.column :family, :string
		  t.column :status, :string
		end
	  
	  create_table :references do |t|
	    t.column :plugin_id, :integer
		  t.column :type, :string
		  t.column :value, :string
    end
	end
	
	def self.down
	  drop_table :policies
	  drop_table :serverpreferences
	  drop_table :pluginpreferences
	  drop_table :familyselections
	  drop_table :individual_plugin_selections
	  drop_table :reports
	  drop_table :reporthosts
	  drop_table :reportitems
	  drop_table :plugins
	  drop_table :references
  end
end
#NessusCreateTables.new
#NessusCreateTables.migrate(:down)
NessusCreateTables.migrate(:up)
