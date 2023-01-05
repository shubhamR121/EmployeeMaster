ActiveAdmin.register Employee do
  permit_params :name, :email, :contact, :country, :state, :city, :gender, :address,
        employee_educations_attributes: [:id, :school, :board_or_university, :qualification, :_destroy],
        work_experiences_attributes: [:id, :employee, :from, :to, :total_exp, :_destroy]

  actions :index, :edit, :update, :create, :destroy, :new, :show

  form do |f|
    f.inputs do
      f.input :name
      f.input :email
      f.input :contact
      f.input :gender, :as => :radio, collection: (['Male', 'Female'])
      f.input :address
      f.input :country, :as => :select, collection: (['India'])
      f.input :state, :as => :select, collection: (['MP'])
      f.input :city, :as => :select, collection: (['Indore', 'Bhopal'])

      f.inputs "Employee Education Details" do
        f.has_many :employee_educations, heading: false, allow_destroy: true do |e|
          e.input :school
          e.input :board_or_university
          e.input :qualification
        end
      end

      f.inputs "Work Experience Details" do
        f.has_many :work_experiences, heading: false, allow_destroy: true do |we|
          we.input :employee
          we.input :from, :as => :date_picker
          we.input :to, :as => :date_picker
          we.input :total_exp
        end
      end
    end
    f.actions
  end
end
