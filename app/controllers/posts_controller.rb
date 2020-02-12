class PostsController < ApplicationController
  before_action :set_post, only: [:show, :edit, :update, :destroy]

  # GET /posts
  # GET /posts.json
  def index
    @posts = Post.all
  end

  # GET /posts/1
  # GET /posts/1.json
  def show
    @comment = Comment.new
    @users = User.all.map { |user| ["#{user.first_name} #{user.last_name}", user.id] }
  end

  def stats

    @top_user = Comment.group(:user_id).order("COUNT(user_id) DESC").first.user

    @top_tags = TaggedPost.group(:tag_id).order("COUNT(post_id) DESC").limit(5)

    @longest_post = Post.order("LENGTH(content) DESC").first

  end

  # GET /posts/new
  def new
    @post = Post.new
    @users = User.all.map { |user| ["#{user.first_name} #{user.last_name}", user.id] }
    @categories = Category.all.map { |category| [category.name, category.id] }

    3.times { @post.tags.build }
  end

  # GET /posts/1/edit
  def edit
  end

  # POST /posts
  # POST /posts.json
  def create
    @post = Post.new(post_params)

    respond_to do |format|
      if @post.save
        format.html { redirect_to post_path(@post) }
        # format.html { redirect_to @post, notice: 'Post was successfully created.' }
        format.json { render :show, status: :created, location: @post }
      else
        format.html { render :new }
        format.json { render json: @post.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /posts/1
  # PATCH/PUT /posts/1.json
  def update
    respond_to do |format|
      if @post.update(post_params)
        format.html { redirect_to @post, notice: 'Post was successfully updated.' }
        format.json { render :show, status: :ok, location: @post }
      else
        format.html { render :edit }
        format.json { render json: @post.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /posts/1
  # DELETE /posts/1.json
  def destroy
    @post.destroy
    respond_to do |format|
      format.html { redirect_to posts_url, notice: 'Post was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_post
      @post = Post.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def post_params
      params.require(:post).permit(:title, :content, :date, :user_id, :category_id, tags_attributes: [:name])
    end
end
