module ElectionsHelper
  def voted(election_id)
    election = Election.find(election_id)
    current_user && election.votes.pluck(:user_id).include?(current_user.id)
  end
end
