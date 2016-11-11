class EventsController < ApplicationController
	def new
		@event=Event.new
	end

	def newform
		@event=Event.new
	end

	def create
		@event=Event.new(event_params)
		if @event.save
			redirect_to event_path
		else
			render "new"
		end
	end

	private
	def event_params
		params.require(:event).permit(:eventtitle,:venue,:date,:time,:description,:invitees,:status)
	end
end
