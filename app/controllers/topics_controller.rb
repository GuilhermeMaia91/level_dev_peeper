class TopicsController < ::ApplicationController
  before_action :set_topic, only: %i[ show edit update destroy]

  def index
    @topics = Topic.all
  end

  def show
  end

  def edit
  end

  def new
    @topic = Topic.new
  end

  def create
    @topic = Topic.new(topic_params)

    if @topic.save
      redirect_to topic_url(@topic)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def update
    if @topic.update(topic_params)
      redirect_to topic_url(@topic), notice: "Tópico atualizado."
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @topic.destroy
    redirect_to topics_url, notice: "Tópico removido."
  end

  private

  def set_topic
    @topic = Topic.find(params[:id])
  end

  def topic_params
    params.require(:topic).permit(:titulo)
  end
end
