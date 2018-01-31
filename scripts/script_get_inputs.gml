//5 -> l1
//6 -> r1
//7 -> l2
//8 -> r2
//9 -> select
//10 -> start
//101 -> left
//102 -> right
//104 -> up
//98 -> down
gamepad_set_axis_deadzone(0, 0.5);
key_right = keyboard_check(vk_right) ;
key_left = -(keyboard_check(vk_left) );
key_jump = keyboard_check_pressed(vk_space) || gamepad_button_check_pressed(0,3);
key_z = keyboard_check(ord('Z')) || gamepad_button_check(1,4);
key_down = keyboard_check(vk_down);
key_up = keyboard_check(vk_up);
if keyboard_check_pressed(vk_escape) game_end();

