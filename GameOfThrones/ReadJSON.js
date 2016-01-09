var fs = require('fs');

var episodes;
	
function load_file(err, file) { 
	if (err){
		throw err;
	}
	episodes = JSON.parse(file)
	console.log("load_file");
	filter_episodes();
};

function filter_episodes() {
	episodes = episodes.filter(function (episode){
			return (parseFloat(episode.rating) >= 0);
	});
	console.log("filter_episodes");
	sort_episodes();
};

function sort_episodes() {
	 episodes.sort(function(episode1,episode2){
		return episode1.episode_number-episode2.episode_number
	})
	 console.log("sort_episodes");
	 get_episodes();
};

function get_episodes() {
	episodes.forEach(function(episode){
		console.log("Title: ",episode.title," Episode #: ",episode.episode_number,"\n",episode.description,"\n","Rating: ",episode.rating, Array(parseInt(episode.rating)).join("*"), "\n", "Main Actor: ", searchFor(episode.description,"Jon Snow"));
		console.log("get_episodes");
	})
};


function searchFor(description,text) {
	(description.indexOf(text)>=0) ? actor="Jon Snow" : actor="Others";
	return actor;
};


fs.readFile("./game.json", 'utf8', load_file);
