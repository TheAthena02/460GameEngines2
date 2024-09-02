/// @description Insert description here
// You can write your code in this editor
/**
var brakeSpeed = .16;
if (speed > 0) {
	if(speed >= brakeSpeed) {
		speed -= brakeSpeed;
	}
	else{
		speed=0; }}
		**/
var _xinput = keyboard_check(vk_right) - keyboard_check(vk_left);
/**
if(facingDirection >360) {
	facingDirection = 0;}
if(facingDirection <0) {
	facingDirection = 360}
	**/
facingDirection += _xinput;
image_angle = -facingDirection;

if(keyboard_check(vk_up)) {
	if(current_speed < max_speed) {
	current_speed += .2;}
	else{
		current_speed = max_speed;}
	
}
else{
	if(current_speed > 0) {
		
	current_speed -= .1;}
	else{
		current_speed = 0;}
}
var _xx =cos(-image_angle*pi/180);
var _yy =sin(-image_angle*pi/180);

move_and_collide(_xx*current_speed, _yy*current_speed, Walls,4,0,0,  my_speed, my_speed);
draw_self();
show_debug_message(string(current_speed) + " " + string(image_angle));