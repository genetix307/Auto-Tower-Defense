if game_paused=0 {
var cx = camera_get_view_x(view_camera[0]);
var cy = camera_get_view_y(view_camera[0]);

//Stage lighting/misc
//if store.bloodmoon=1 {draw_set_alpha(.35) draw_rectangle_color(0,0,room_width,420,c_orange,c_orange,c_red,c_red,false) draw_set_alpha(1)}

//Draw Stats (HP/XP/etc)
//draw_stats()

//draw_set_font(font_large_hud)
//draw_text_color(2,2,"$"+calc_number(store.run_score),c_lime,c_lime,c_lime,c_lime,1)

//Draw Current Stage & tier
/*
draw_set_font(font_stats)
draw_set_color(c_black)
draw_text(cx+184,cy+440,"Stage "+string(store.current_stage))   
draw_text(cx+184,cy+452,"Tier "+string(1+floor(store.current_stage/101)))
draw_set_color(c_white)
draw_text(cx+182,cy+438,"Stage "+string(store.current_stage))
draw_text(cx+182,cy+450,"Tier "+string(1+floor(store.current_stage/101)))
*/
//Draw Current Stage Banner
/*
if show_stage>0 {
draw_set_alpha(show_stage)
draw_set_color(c_black)
draw_set_font(font_large_hud)
draw_text(cx+124+banner_gap,cy+70,string(store.current_area))  
draw_set_font(font_upgrades)
draw_text(cx+204,cy+110,"Stage "+string(store.current_stage))              
draw_set_color(c_white)
draw_set_font(font_large_hud)
draw_text(cx+124+banner_gap,cy+68,string(store.current_area))  
draw_set_font(font_upgrades)
draw_text(cx+202,cy+108,"Stage "+string(store.current_stage))
draw_set_color(c_yellow)
draw_line(cx+114,cy+67,cx+389,cy+67)
draw_line(cx+114,cy+107,cx+389,cy+107)
*/
//Draw Bloodmoon banner
/*
if store.bloodmoon=1 {
draw_set_color(c_red)
draw_text(cx+208,cy+168,"Blood Moon")
}
draw_set_alpha(1)
}
*/

//Draw Gold
/*
draw_set_font(font_stats)
draw_set_color(c_black)
draw_text(cx+260,cy+440,"Gold")              
draw_set_color(c_white)
draw_text(cx+258,cy+438,"Gold")
draw_sprite(spr_show_gold,0,cx+260,cy+465)
if store.gold <=9999 {
draw_set_color(c_black)
draw_text(cx+275,cy+460,string(store.gold))              
draw_set_color(c_yellow)
draw_text(cx+273,cy+458,string(store.gold)) 
}
if store.gold >9999 {
draw_set_color(c_black)
draw_text(cx+275,cy+460,string(floor(store.gold/1000))+"K")              
draw_set_color(c_yellow)
draw_text(cx+273,cy+458,string(floor(store.gold/1000))+"K")    
}
*/

//Draw Gems
/*
draw_set_font(font_stats)
draw_set_color(c_black)
draw_text(cx+330,cy+440,"Gems")              
draw_set_color(c_white)
draw_text(cx+328,cy+438,"Gems")
draw_sprite(spr_show_gem,0,cx+330,cy+465)
if store.gems <9999 {
draw_set_color(c_black)
draw_text(cx+347,cy+460,string(store.gems))              
draw_set_color(c_yellow)
draw_text(cx+345,cy+458,string(store.gems)) 
}
else {
draw_set_color(c_black)
draw_text(cx+347,cy+460,string(floor(store.gems/1000))+"K")              
draw_set_color(c_yellow)
draw_text(cx+345,cy+458,string(floor(store.gems/1000))+"K")    
}
*/
//Draw Active Status
/*
draw_set_font(font_stats)
draw_set_color(c_silver)
if store.active_template>0 and store.active_template<3601 {draw_sprite(spr_item_templatepill,0,70,20) draw_text(64,28,string(round(store.active_template/60)))}
if store.active_template>0 and store.active_template>3600 {draw_sprite(spr_item_templatepill,0,70,20) draw_text(64,28,string(ceil(store.active_template/3600))+"m")}
*/
//Draw Fade
if show_fade>0 {
draw_set_alpha(show_fade)
draw_rectangle_color(0,0,room_width,room_height,c_black,c_black,c_black,c_black,false)
draw_set_alpha(1)
}

} //End Pause Check

//Draw Paused
if hud.game_paused=1 { //and instance_number(event_handler)<1 {
draw_set_alpha(.9)
draw_rectangle_color(0,0,room_width,room_height,c_black,c_black,c_black,c_black,false)
draw_set_alpha(1)
draw_set_font(font_large_hud)
draw_text_color(138,6,"Game Paused",c_black,c_black,c_black,c_black,1)
draw_text_color(136,4,"Game Paused",c_yellow,c_yellow,c_orange,c_orange,1)
}

//gameover
if game_over = 1 {
	draw_set_alpha(.8)
	draw_set_color(c_black)
	draw_rectangle(0,0,room_width,room_height,false)
	draw_set_alpha(1)
	draw_sprite(spr_endround_backdrop,0,cx+58,cy+160)
	draw_set_font(font_med_hud)
    draw_text_color(cx+176,cy+173,"Game Statistics",c_black,c_black,c_black,c_black,.5)
	draw_text_color(cx+174,cy+171,"Game Statistics",c_lime,c_lime,c_lime,c_lime,1)
	draw_set_font(font_buttons)
	//draw_text_color(cx+162,cy+200,string(store.current_area),c_white,c_white,c_silver,c_silver,1)
	//draw_text_color(cx+162,cy+220,"Best Run: "+string(store.best_stage),c_white,c_white,c_silver,c_silver,1)
	//draw_text_color(cx+162,cy+220,"Best Run: "+string(store.best_stage),c_white,c_white,c_silver,c_silver,1)
	//draw_text_color(cx+93,cy+254,"Stage Reached: "+string(store.current_stage),c_white,c_white,c_silver,c_silver,1)
	//draw_text_color(cx+93,cy+279,"Levels Gained: "+string(store.level),c_white,c_white,c_silver,c_silver,1)
	//draw_text_color(cx+93,cy+304,"Enemies Slain: "+string(store.enemies_killed_run),c_white,c_white,c_silver,c_silver,1)
	//draw_text_color(cx+162,cy+329,"Tier Multiplier: x"+string(1+floor(store.current_stage/101)),c_white,c_white,c_silver,c_silver,1)
	//draw_text_color(cx+162,cy+359,"Bonus Gems: "+string(store.gems_earned_run),c_yellow,c_yellow,c_yellow,c_orange,1)
	//Show Gems bonuses
	//if store.current_stage>1 {
	//draw_text_color(cx+316,cy+254,"+"+string(round(store.current_stage*5))+" gems",c_yellow,c_yellow,c_yellow,c_orange,1)
	//draw_text_color(cx+316,cy+279,"+"+string(round(store.level*10))+" gems",c_yellow,c_yellow,c_yellow,c_orange,1)
	//draw_text_color(cx+316,cy+304,"+"+string(ceil(store.enemies_killed_run/3))+" gems",c_yellow,c_yellow,c_yellow,c_orange,1)
	//Show end message
	draw_text_color(cx+114,cy+383,"Your run may have ended\nbut the journey never ends!",c_lime,c_lime,c_lime,c_lime,1)
}



