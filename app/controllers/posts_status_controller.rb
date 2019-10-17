class PostsStatusController < ApplicationController
    
    def show
        p = PostsStatus.where(s_id: current_user.id).pluck(:post_id)
        @posts = Post.where(id: p).order(:i_id)
    end
    
    def give_decision
        p = PostsStatus.find(params[:id].to_i)
        p.status = params[:status].to_i
        p.save
        redirect_back(fallback_location: root_path)
    end
    
    def student_give_decision
        p = PostsStatus.find(params[:id].to_i)
        if params[:status].to_i == 1
            c = CurrentStudent.new
            c.i_id = Post.find(p.post_id).i_id
            c.s_id = current_user.id
            c.save
        end
        p.status = 4
        p.save
        redirect_back(fallback_location: root_path)
    end
    
    def apply
        p = PostsStatus.new
        p.s_id = params[:s_id]
        p.post_id = params[:id]
        p.status = 1
        p.save
        redirect_back(fallback_location: root_path)
    end

end
