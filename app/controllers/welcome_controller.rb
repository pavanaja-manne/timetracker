class WelcomeController < ApplicationController
  before_filter :require_login
  
  def index
    time = Time.new
    to_day = time.strftime("%m/%d/%Y")
    @todayRecs = TimeTable.where(:date => to_day)
    @initialPieChart = createPieChart
  end

  def weekFunc
  end
  
  def saveDayTime
    puts "********************************DAY TIME******************************"
    puts params.inspect
    if params[:today]
      if params[:id].nil? || params[:id].empty?
        time = TimeTable.new
      else
        time = TimeTable.find(params[:id])
      end
      time.user_id = session[:user_id]
      time.project_id = params[:project]
      time.date = params[:today]
      time.hours = params[:hours]
      time.save
    end
    data = {}
    data[:id] = time.id
    data[:msg] = "saved Successfully"
    render :json => data.to_json
  end



  def saveTime
    puts "************************tst******************"
    puts params.inspect
    if params[:hiddenMonday]
      time = TimeTable.new
      time.user_id = session[:user_id]
      time.project_id = params[:project]
      time.date = params[:hiddenMonday]
      time.hours = params[:monday]
      time.save
    end
    if params[:hiddenTuesday]
      time = TimeTable.new
      time.user_id = session[:user_id]
      time.project_id = params[:project]
      time.date = params[:hiddenTuesday]
      time.hours = params[:tuesday]
      time.save
    end
    if params[:wednesdayHidden]
      time = TimeTable.new
      time.user_id = session[:user_id]
      time.project_id = params[:project]
      time.date = params[:wednesdayHidden]
      time.hours = params[:wednesday]
      time.save
    end
    if params[:thursdayHidden]
      time = TimeTable.new
      time.user_id = session[:user_id]
      time.project_id = params[:project]
      time.date = params[:thursdayHidden]
      time.hours = params[:thursday]
      time.save
    end
    if params[:fridayHidden]
      time = TimeTable.new
      time.user_id = session[:user_id]
      time.project_id = params[:project]
      time.date = params[:fridayHidden]
      time.hours = params[:friday]
      time.save
    end
    if params[:saturdayHidden]
      time = TimeTable.new
      time.user_id = session[:user_id]
      time.project_id = params[:project]
      time.date = params[:saturdayHidden]
      time.hours = params[:saturday]
      time.save
    end
    if params[:sundayHidden]
      time = TimeTable.new
      time.user_id = session[:user_id]
      time.project_id = params[:project]
      time.date = params[:sundayHidden]
      time.hours = params[:sunday]
      time.save
    end
    render :text => "saved successfully"
  end

  def loadToDay
    puts "-p-a-r-a-m-s---"
    puts params.inspect
    puts "***************-*-*"
    @todayRecs = TimeTable.where(:date => params[:toDay])
    render :html => "loadToDay", :layout => false
  end

  def deleteDayTimesheets
    puts params.inspect
    @rec = TimeTable.where(:id => params[:id],:user_id => session[:user_id] )
    data = {}
    puts "_r_e_c_s *****************"
    puts @rec.inspect
    
    if @rec[0].destroy
      data[:deleted] = true
      data[:msg] = "deleted successfully"
    else
      data[:deleted] = false
      data[:msg] = "Unable to delete the timesheet. Please try again."
    end

    render :json => data.to_json

end

	def createPieChart
			puts "********************************PIE CHART******************************"
    puts params.inspect
		  pieHash = {}
		unless @todayRecs.nil?
			@todayRecs.each do |t|
				project = Project.find(t.project_id)
				if pieHash.has_key?(project.name)
					i = pieHash[project.name]
					pieHash[project.name] = i + t.hours
				else
					pieHash[project.name] = t.hours
				end
			end
		end
		return pieHash		
		
	end

	


end
