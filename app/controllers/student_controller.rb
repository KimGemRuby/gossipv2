class StudentController < ApplicationController
    def index
        @users = User.all
    end

    def show
        @user = User.find(params[:id])
        @gossips = @user.gossips
    end

    def contacts
    end

    def welcome
        @user = User.where(first_name: params[:first_name]).first
    end
end