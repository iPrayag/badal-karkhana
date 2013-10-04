
root = global ? window

VideosIndexCtrl = ($scope, Video) ->
  $scope.videos = Video.query()

  $scope.destroy = ->
    if confirm("Are you sure?")
      original = @video
      @video.destroy ->
        $scope.videos = _.without($scope.videos, original)
        
VideosIndexCtrl.$inject = ['$scope', 'Video'];

VideosCreateCtrl = ($scope, $location, Video) ->
  $scope.save = ->
    Video.save $scope.video, (video) ->
      $location.path "/videos/#{video.id}/edit"

VideosCreateCtrl.$inject = ['$scope', '$location', 'Video'];

VideosShowCtrl = ($scope, $location, $routeParams, Video) ->
  Video.get
    id: $routeParams.id
  , (video) ->
    @original = video
    $scope.video = new Video(@original)

  $scope.destroy = ->
    if confirm("Are you sure?")
      $scope.video.destroy ->
        $location.path "/videos"

VideosShowCtrl.$inject = ['$scope', '$location', '$routeParams', 'Video'];

VideosEditCtrl = ($scope, $location, $routeParams, Video) ->
  Video.get
    id: $routeParams.id
  , (video) ->
    @original = video
    $scope.video = new Video(@original)

  $scope.isClean = ->
    console.log "[VideosEditCtrl, $scope.isClean]"
    angular.equals @original, $scope.video

  $scope.destroy = ->
    if confirm("Are you sure?")
      $scope.video.destroy ->
        $location.path "/videos"

  $scope.save = ->
    Video.update $scope.video, (video) ->
      $location.path "/videos"

VideosEditCtrl.$inject = ['$scope', '$location', '$routeParams', 'Video'];

# exports
root.VideosIndexCtrl  = VideosIndexCtrl
root.VideosCreateCtrl = VideosCreateCtrl
root.VideosShowCtrl   = VideosShowCtrl
root.VideosEditCtrl   = VideosEditCtrl 