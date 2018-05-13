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
  end

  # POST /teacher_cohorts
  # POST /teacher_cohorts.json
  def create
    @teacher_cohort = TeacherCohort.new(teacher_cohort_params)

    respond_to do |format|
      if @teacher_cohort.save
        format.html { redirect_to @teacher_cohort, notice: 'Teacher cohort was successfully created.' }
        format.json { render :show, status: :created, location: @teacher_cohort }
      else
        format.html { render :new }
        format.json { render json: @teacher_cohort.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /teacher_cohorts/1
  # PATCH/PUT /teacher_cohorts/1.json
  def update
    respond_to do |format|
      if @teacher_cohort.update(teacher_cohort_params)
        format.html { redirect_to @teacher_cohort, notice: 'Teacher cohort was successfully updated.' }
        format.json { render :show, status: :ok, location: @teacher_cohort }
      else
        format.html { render :edit }
        format.json { render json: @teacher_cohort.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /teacher_cohorts/1
  # DELETE /teacher_cohorts/1.json
  def destroy
    @teacher_cohort.destroy
    respond_to do |format|
      format.html { redirect_to teacher_cohorts_url, notice: 'Teacher cohort was successfully destroyed.' }
      format.json { head :no_content }
    end
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
