Meteor.methods
  scrape: ->
    phantom = Npm.require "phantom"

    phantom.create (ph) ->
      ph.createPage (page) ->
        page.open "http://www.google.com", (status) ->
          console.log "opened google?", status

