/*

var app = angular.module('app');




function isEmpty(value){
    return !(Boolean(value) && typeof value == 'object' && Object.keys(value).length > 0);
};


app.filter('startFrom', function() {
    return function(input, start) {
        start = +start; // parse to int
       if(!(isEmpty(input))){
        	return input.slice(start);
       }
       	
    }
});

 

function mainController($scope, $http) {function ajaxQuery(count,limit){
	
	$scope.formData = {};
	$scope.resultSet = [];
    $scope.currentPage = 0;
    $scope.pageSize = 10;
	
	$http.post('/query/',{'count': count,'limit':limit} )
	.success(function(data) {
		
		$scope.resultSet =  $scope.resultSet.concat(data);
		// angular.extend( $scope.resultSet, angular.copy( data ) );
		 $scope.numberOfPages=Math.round($scope.resultSet.length/$scope.pageSize);
	})
	.error(function(data) 
	{
		$scope.error=data;
		console.log('Error: ' + data);
	});

};


ajaxQuery(0,100);

$scope.pagedQuery = function(){
	console.log("Inside the pagedQuery");
	console.log("Current page value: " + $scope.currentPage);
	$scope.currentPage= $scope.currentPage +1;
	if($scope.numberOfPages <= $scope.currentPage -2 )
	{	
		var count= (($scope.currentPage-1) * 10 )+1;
		ajaxQuery(count,100);	
	}
	
};



$scope.searchFeed = function(count,limit) {
$scope.resultSet ={} ;
$http.post('/searchFeed' ,{'data':$scope.formData,'count':count,'limit':limit})
	.success(function(data) {
		$scope.resultSet = data;
		console.log(data);
	})
	.error(function(data) {
		console.log('Error: ' + data);
	});
};


$scope.numberOfPages=function(){

$scope.numberOfPages=Math.round($scope.resultSet.length/$scope.pageSize);
console.log($scope.numberOfPages);
}
	
}


 

	
*/