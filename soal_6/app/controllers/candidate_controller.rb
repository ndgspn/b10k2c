class CandidateController < ApplicationController
  def index
    @candidates = Candidate.all
  end

  def update
    @candidates = Candidate.all
    @candidate = Candidate.find(params[:id])
    @candidate.earned_vote += 1
    render :index if @candidate.save
  end
end
