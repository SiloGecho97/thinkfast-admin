class QuestionResource < Avo::BaseResource
  self.title = :id
  self.includes = []
  # self.search_query = ->(params:) do
  #   scope.ransack(id_eq: params[:q], m: "or").result(distinct: false)
  # end

  field :id, as: :id
  field :title, as: :text, required: true

  field :difficulty, as: :number
  # add fields here
  field :answers, as: :has_many
  field :created_at, as: :date_time, readonly: true
  field :updated_at, as: :date_time, readonly: true, hide_on: [:index]
end
