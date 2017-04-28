// MAIN SNAKE CLASS //

function Snake() {
    this.x = 0;
    this.y = 0;
    this.xSpeed = 1;
    this.ySpeed = 0;
    this.total = 0;    // Lenght of the snake
    this.tail = [];     // Array of "older pos" 
    
    // change direction of the snake
    this.dir = function (x, y) {
        if (this.xSpeed != -x) {this.xSpeed = x;}
        if (this.ySpeed != -y) {this.ySpeed = y;}
    }
    
    // Check for the death of the snake (return true if snake is dead)
    this.death = function() {
        for(var i=0; i<this.tail.length-1; i++){
            if (this.x == this.tail[i].x && this.y == this.tail[i].y) {
                return true;
            }
        }
        return false;
    }

    // Update coords of each square of the snake
    this.update = function () {
        //longest if statement ever made
        if (!(this.x == 0 && this.xSpeed == -1) ||   /* if snake is on the left side and going left */
            !(this.y == (h-1)*scl && this.ySpeed == 1) ||  /* if snake is on the bottom side and going down  */
            !(this.x == (w-1)*scl && this.xSpeed == 1) ||  /* if snake is on the right side and going right */
            !(this.y == 0 && this.ySpeed == -1)) {   /* if snake is on the upper side and going up */
            
            for(var i=0; i<this.tail.length-1; i++){
                this.tail[i] = this.tail[i+1];
            }
            console.log("xSpeed : "+this.xSpeed);
            console.log("ySpeed : "+this.ySpeed);
            console.log("X pos : "+this.x);
            console.log("Y pos : "+this.y);
            this.tail[this.total-1] = createVector(this.x, this.y);

            this.x = this.x + this.xSpeed*scl;
            this.y = this.y + this.ySpeed*scl;

            this.x = constrain(this.x, 0, width-scl);
            this.y = constrain(this.y, hT, height-scl);          
        } else {
            console.log("Yup... That's a wall...");
        }
    }    
    // Check if the snake eats a miam ball
    this.eat = function(test, food=true) {
        if (this.x == test.x && this.y == test.y) {
            if (food) {this.total++;}
            return true;
        } else {
          return false;  
        }
    }
    
    // Draw the snake
    this.show = function () {
        fill(255);
        for(var i=0;i<this.tail.length;i++){
            rect(this.tail[i].x, this.tail[i].y, scl, scl);
        }
        rect(this.x, this.y, scl, scl);
    }
    
}

// FOOD CLASS //
function Food() {
    this.x = 0;
    this.y = 0;
    
    this.update = function() {
        this.x = floor(random(w))*scl;
        this.y = floor(random(h))*scl+hT;
    }
    
    this.show = function() {
        fill("#00ff00");
        rect(this.x, this.y, scl, scl);
    }
}