angular.module('app', ['app.controllers', 'ui.router'])
.config(function($stateProvider, $urlRouterProvider, $locationProvider) {
	$stateProvider
	.state('play', {
		url: "/play",
		templateUrl: "templates/play.html",
		controller: "PlayCtrl"
	})
	.state('leaderboard', {
		url: "/leaderboard",
		templateUrl: "templates/leaderboard.html",
		controller: "LeaderboardCtrl"
	})
	.state('settings', {
		url: "/settings",
		templateUrl: "templates/settings.html",
		controller: "SettingsCtrl"
	})
	.state('home', {
		url: "/home",
		templateUrl: "templates/home.html",
		controller: "HomeCtrl"
	});

	$urlRouterProvider.otherwise("/home");
});