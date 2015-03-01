// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/sstephenson/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require twitter/bootstrap
//= require turbolinks
//= require_tree .

/* Like Button Cookies */
		
		document.addEventListener("DOMContentLoaded", function(event) { 
 			changeButton();
  
  			// Use this for tests...
			deleteCookie('user_liked_this');    
		});

		function deleteCookie( name ) {
			document.cookie = name + '=; expires=Thu, 01 Jan 1970 00:00:01 GMT;';
		}

		function createCookie(name, days) {
			var expire = new Date ();
			expire.setTime (expire.getTime() + (24 * 60 * 60 * 1000) * days); 
			document.cookie = name + "=1; expires=" + expire.toGMTString();
			changeButton();
		}

		function changeButton() {
			var name = 'user_liked_this' + '=';
			var ca = document.cookie.split(';');
			for(var i=0; i<ca.length; i++)
		{
				var c = ca[i];

				while(c.charAt(0)==' ')
			{
				c = c.substring(1);
			}

			if(c.indexOf(name) != -1)
			{
				var output = c.substring(name.length,c.length);
			}
		}       

		if(output == 1)
		{
			cookie_exists = 1;
		}
		else
		{
			cookie_exists = 0;
		}           
	
		if(cookie_exists == 1)
		{
			document.getElementById("read_button").style.color = "#ccc";
			document.getElementById("read_button").innerText = "Liked";
		}
		else
		{
			document.getElementById("read_button").style.color = "white";
			document.getElementById("read_button").innerText = "Like This";              
		}
	
		return "";
	}

/* End Like Button Cookies */ 


