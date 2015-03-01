angular.module('app', ['app.controllers', 'ui.router'])
.config(function($stateProvider, $urlRouterProvider, $locationProvider) {
	$stateProvider
	.state('dashboard', {
		url: "/dashboard",
		templateUrl: "templates/dashboard.html",
		controller: "DashboardCtrl"
	})
	$stateProvider
	.state('category', {
		url: "/category",
		templateUrl: "templates/category.html",
		controller: "CategoryCtrl"
	})

	$urlRouterProvider.otherwise("/dashboard");
});