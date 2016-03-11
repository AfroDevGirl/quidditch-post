Refinery::PagesController.class_eval do
    include Refinery::Blog::ControllerHelper
    include Refinery::Jobs::ControllerHelper

    helper :'refinery/blog/posts'
    helper :'refinery/jobs/controller'
    before_action :find_all_blog_posts, :find_all_jobs
end 

# Refinery::PageImages::config.enabled_models.each do |model_class_name|
#   "Refinery::Admin::#{model_class_name.demodulize.pluralize}Controller".constantize.class_eval do

#     # work around an issue with stack level too deep, due to an issue with decorators.
#     if self.instance_methods.exclude?(:page_params_with_page_image_params)
#       # We need to add :images_attributes to page_params as it is ignored by strong parameters. (See #100)
#       def page_params_with_page_image_params

#         # Get the :images_attributes hash from params
#         page_image_params = params.require(:page).permit(images_attributes: [:id, :caption])
#         # If there is no :images_attributes hash use a blank hash (so it removes deleted images)
#         page_image_params = {images_attributes:{}} if page_image_params[:images_attributes].nil?

#         # Add the :images_attributes hash to the default page_params hash
#         page_params_without_page_image_params.merge(page_image_params)

#       end

#       # Swap out the default page_params method with our new one
#       alias_method_chain :page_params, :page_image_params
#     end
#   end
# end