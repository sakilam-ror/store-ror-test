module V1
  class StoresController < ApplicationController

    def index
      @stores = Store.all
      json_response(@stores)
    end

  end
end