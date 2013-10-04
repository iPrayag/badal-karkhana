root = global ? window

angular.module("videos", ["ngResource"]).factory "Video", ['$resource', ($resource) ->
  Video = $resource("/videos/:id",
    id: "@id"
  ,
    update:
      method: "PUT"

    destroy:
      method: "DELETE"
  )
  Video::destroy = (cb) ->
    Video.remove
      id: @id
    , cb

  Video
]
root.angular = angular
