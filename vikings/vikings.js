var viking = function (name, health, strength) {
	this.name = name; 
	this.total_health = health; 
	this.health = health;
   if (strength>0.4*health){
		this.strenght=0.4*health;
   };
   else{
		this.strength = strength;	
   };
};

var pitfight = function (player1,player2){
    this.players = [player1, player2]
    this.status = "begins"

    this.attack = function(attacker,receiver){
    	receiver.health-=((attacker.strength)*(1+(Math.random())));
    	console.log("Pummm");
    };

    this.check_vitals = function(players){
    	players.forEach( function(player){
    		if (player.health<=0.2*player.total_health){
    			status="ends"
    		};
    	});
    };

    this.show_vitals = function(players){
    	console.log("Health:")
    	players.forEach( function(player){
    		console.log(player."")
    	};
    };
};