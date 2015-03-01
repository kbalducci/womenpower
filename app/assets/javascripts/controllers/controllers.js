angular.module('app.controllers', [])
.controller('DashboardCtrl', function($scope, $state) {
})
.controller('InspirationCtrl', function($scope, $state) {
})
.controller('CategoryCtrl', function($scope, $state, $http) {
	$http.get('/categories.json')
	.success(function(response) {

		$scope.categories = response;
		console.log(response);

		$scope.categoryTitle = true;
		// $scope.issueTitle = false;

		$scope.categoryShow = true;
		$scope.issueShow = true;

	})


	// Writing faux Server Error 404 code

	// $http.get('/kjhkjh.json')
	// .success(function(response) {

	// 	console.log(response);
	// 	console.log(response.message);

	// 	if(response.message) {
	// 		$scope.displayError = response.message;
	// 	}

	// 	console.log(response);
	// })

	// console.log('404 (Not Found'));
	// 	$scope.error404 = [
	// 		{
	// 			message: '404 Not Found'
	// 		}
	// 	]

	$scope.categoryBtn = function(category) {
		console.log(category);
		$http.get('/categories/1/issues.json')
		.success(function(response) {
			$scope.categoryShow = false;
			$scope.categoryTitle = false;
			$scope.issueTitle = true;

			$scope.issues = [];

			for(var i = 0; i<response.length; i++) {
				if(response[i].category_id === category) {
					$scope.issues.push(response[i])
				}
			}
			
		});
	}

	$scope.issueBtn = function(issue) {
		console.log(issue);
		$http.get('/inspirations.json')
		.success(function(response) {
			$scope.issueTitle = false;
			$scope.issueShow = false;

			console.log(response);

			$scope.inspirations = [];

			for(var i = 0; i<response.length; i++) {
				if(response[i].issue_id === issue) {
					$scope.inspirations.push(response[i])
				}
			}

		});
	}
})