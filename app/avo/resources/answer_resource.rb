class AnswerResource < Avo::BaseResource
  self.title = :id
  self.includes = [:question]
  # self.search_query = ->(params:) do
  #   scope.ransack(id_eq: params[:q], m: "or").result(distinct: false)
  # end

  # add fields here
  field :id, as: :id, hide_on: [:index]
  field :title, as: :text
  field :correct, as: :boolean
  field :question_id, as: :belongs_to

  field :created_at, as: :date_time, readonly: true
  field :updated_at, as: :date_time, readonly: true
end
