class AttachmentsController < ApplicationController
	before_filter :load_attachable

  def index
  	@attachments = @attachable.attachments
  end

  def new
    @uploader = Article.new.attachment
    @uploader.success_action_redirect = new_article_url
  end

  def create
    @attachment = @attachable.attachments.new(params[:attachment])
    if @attachment.save
      redirect_to[@attachable, :attachments]
    else
      render :new
    end
  end

  private

  def load_attachable
  	resource, id = request.path.split('/')[1,2] # /articles/1
  	@attachable = resource.singularize.classify.constantize.find(id) # Photo.find(1)
  end

  #def load_attachable
  	#klass = [Article, Event, Note].detect { |c| params["#{c.name.underscore}_id"] }
  	#@attachable = klass.find(params["#{klass.name.underscore}_id"])
  #end

end