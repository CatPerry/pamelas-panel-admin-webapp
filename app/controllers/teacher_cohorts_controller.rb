class TeacherCohortsController < ApplicationController
  before_action :set_teacher_cohort, only: [:show, :edit, :update, :destroy]

  # GET /teacher_cohorts
  # GET /teacher_cohorts.json
  def index
    @teacher_cohorts = TeacherCohort.all
  end

  # GET /teacher_cohorts/1
  # GET /teacher_cohorts/1.json
  def show
  end

  # GET /teacher_cohorts/new
  def new
    @teacher_cohort = TeacherCohort.new
  end

  # GET /teacher_cohorts/1/edit
  def edit
  @teacher_cohort = TeacherCohort.find(params[:id])  

  end

  # POST /teacher_cohorts
  # POST /teacher_cohorts.json
  def create
    @teacher_cohort = TeacherCohort.new(teacher_cohort_params)

    if @teacher_cohort.save
      redirect_to cohorts_url 
    else
      render :action => 'new'
    end
  end

  # PATCH/PUT /teacher_cohorts/1
  # PATCH/PUT /teacher_cohorts/1.json
  def update
    @teacher_cohort = TeacherCohort.find(params[:id])
	
   if @teacher_cohort.update_attributes(teacher_cohort_params)
      redirect_to cohorts_url
   else
      render :action => 'edit'
   end
  end

  # DELETE /teacher_cohorts/1
  # DELETE /teacher_cohorts/1.json
  def destroy
    TeacherCohort.find(params[:id]).destroy
    redirect_to :cohorts => 'cohorts', :action => 'index' 
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_teacher_cohort
      @teacher_cohort = TeacherCohort.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def teacher_cohort_params
      params.require(:teacher_cohort).permit(:teacher_id, :cohort_id)
    end
end
