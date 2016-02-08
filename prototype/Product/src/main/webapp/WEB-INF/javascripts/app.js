/**
 * 
 */
var myapp=angular.module('product',[]);
myapp.controller('productController',['$scope','$http',function($scope,$http){
$scope.data=[];
$scope.productNo='';
$http({
  method: 'GET',
  url: '/Product/comments'
}).then(function successCallback(response) {
    $scope.data=(response.data);
  }, function errorCallback(response) {
    // called asynchronously if an error occurs
    // or server returns response with an error status.
  });
  
  
  
 /*$scope.login=$http({
  method:"POST",
  url:"/login"
  }).then(function successCallback(response) {
    //$scope.data=(response.data);
  }, function errorCallback(response) {
    // called asynchronously if an error occurs
    // or server returns response with an error status.
  });*/

}]
);