class WelcomeController < ApplicationController
  def index
  end

  def saveDayTime
    puts "********************************DAY TIME******************************"
  if params[:today]
    time = TimeTable.new
    time.user_id = session[:user_id]
    time.project_id = params[:prj]
    time.date = params[:todayValue]
    time.hours = params[:hrs]
    time.save
    end

    render :text => "Saved successfully!!"
  end



  def saveTime
    puts "************************tst******************"
    puts params.inspect
    if params[:monday]
      time = TimeTable.new
      time.user_id = session[:user_id]
      time.project_id = 1
      time.date = params[:hiddenMonday]
      time.hours = params[:monday]
      time.save
    elsif params[:tuesday]
      time = TimeTable.new
      time.user_id = session[:user_id]
      time.project_id = 1
      time.date = params[:hiddenTuesday]
      time.hours = params[:tuesday]
      time.save
    elsif params[:wednesday]
      time = TimeTable.new
      time.user_id = session[:user_id]
      time.project_id = 1
      time.date = params[:wednesdayHidden]
      time.hours = params[:wednesday]
      time.save
    elsif params[:thursday]
      time = TimeTable.new
      time.user_id = session[:user_id]
      time.project_id = 1
      time.date = params[:thursdayHidden]
      time.hours = params[:thursday]
      time.save
    elsif params[:friday]
      time = TimeTable.new
      time.user_id = session[:user_id]
      time.project_id = 1
      time.date = params[:fridayHidden]
      time.hours = params[:friday]
      time.save
    elsif params[:saturday]
      time = TimeTable.new
      time.user_id = session[:user_id]
      time.project_id = 1
      time.date = params[:saturdayHidden]
      time.hours = params[:saturday]
      time.save
    elsif params[:sunday]
      time = TimeTable.new
      time.user_id = session[:user_id]
      time.project_id = 1
      time.date = params[:sundayHidden]
      time.hours = params[:sunday]
      time.save
    end
    render :text => "saved successfully"
  end

  def loadToDay
    puts params.inspect

    #render :html => "loadToDay", :layout => false
  end

end
