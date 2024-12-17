require_dependency 'issues_controller'

module TrackerUbication
  module IssuesControllerPatch
    def self.included(base)
      base.class_eval do
        after_action :capture_coordinates_on_change, only: [:update]

        private

        def capture_coordinates_on_change
          return unless User.current.logged?

          # Captura las coordenadas con JS
          lat = params[:latitude]
          lng = params[:longitude]
          event = "Issue updated"

          if lat.present? && lng.present?
            TrackerUbication.create!(
              issue_id: @issue.id,
              user: User.current,
              latitude: lat,
              longitude: lng,
              event: event
            )
          end
        end
      end
    end
  end
end

IssuesController.send(:include, TrackerUbication::IssuesControllerPatch)
