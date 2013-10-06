// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// the compiled file.
//
// WARNING: THE FIRST BLANK LINE MARKS THE END OF WHAT'S TO BE PROCESSED, ANY BLANK LINE SHOULD
// GO AFTER THE REQUIRES BELOW.
//
//= require jquery
//= require jquery_ujs
//= require twitter/bootstrap
//= require_tree .
//= require flat-ui

$(document).ready(function() {
  $('#inputLocation').typeahead( {
  	items : 10,
  	source : [
  		'Los Angeles, CA',
		'Anchorage, AK',
		'Omaha, NE',
		'St. Louis, MO',
		'Portland, OR',
		'Minneapolis, MN',
		'Boulder, CO',
		'Madison, WI',
		'San Francisco, CA',
		'Austin, TX',
		'Chicago, IL',
		'Washington, D.C.',
		'Boston, MA',
		'Oakland, CA',
		'Eugene, OR',
		'Cambridge, MA',
		'Berkeley, CA',
		'Seattle, WA',
		'Chicago, IL',
		'Austin, TX',
		'Minneapolis, MN',
		'St. Paul, MN',
		'Sunnyvale, CA',
		'Honolulu, HI',
		'Fort Worth, TX',
		'Denver, CO',
		'New York, NY',
		'Irvine, CA',
		'Milwaukee, WI',
		'Salt Lake City, UT',
		'Pasadena, CA' ]
  });

  $('#inputTour').typeahead( {
  	items : 10,
  	source : [
  		'National Parks',
  		'Culture',
  		'Beer',
  		'History',
  		'Book',
  		'Historic',
  		'Food',
  		'Nature',
  		'Sports',
  		'Cat' ]
  });

});