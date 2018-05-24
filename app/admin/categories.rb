ActiveAdmin.register Category do
  ActiveAdmin.register Post do
    ActiveAdmin.register Tag do
      belongs_to :post
    end
    # See permitted parameters documentation:
    # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
    #
    permit_params :title, :content, categories_attributes: [:id, :title, :_destroy]
    #
    # or
    #

    form do |f|
      f.inputs 'Post' do
        f.input :title
        f.input :content, as: :trumbowyg, input_html: {data: {options: {btns: [['bold', 'italic'], ['superscript', 'subscript'], ['link'], ['justifyLeft', 'justifyCenter', 'justifyRight', 'justifyFull'], ['unorderedList', 'orderedList'], ['horizontalRule'], ['removeformat']]}}}
        f.inputs do
          f.has_many :tags, heading: 'Tag', allow_destroy: false,
                                  new_record: ' + ' do |a|
            a.input :name
          end
        end
      end
      f.actions
    end

    # permit_params do
    #   permitted = [:permitted, :attributes]
    #   permitted << :other if params[:action] == 'create' && current_user.admin?
    #   permitted
    # end

  end

end
