module ResourceControllerExtensions

  module StandardActions

    def create
      build_object
      load_object
      before :create
      if create_object
        after :create
        set_flash :create
        response_for :create
      else
        after :create_fails
        set_flash :create_fails
        response_for :create_fails
      end
    end

    def update
      load_object
      before :update
      if update_object
        after :update
        set_flash :update
        response_for :update
      else
        after :update_fails
        set_flash :update_fails
        response_for :update_fails
      end
    end

    def destroy
      load_object
      before :destroy
      if destroy_object
        after :destroy
        set_flash :destroy
        response_for :destroy
      else
        after :destroy_fails
        set_flash :destroy_fails
        response_for :destroy_fails
      end
    end

  private

    def create_object
      object.save
    end

    def destroy_object
      object.destroy
    end

    def update_object
      object.update_attributes object_params
    end

  end

end