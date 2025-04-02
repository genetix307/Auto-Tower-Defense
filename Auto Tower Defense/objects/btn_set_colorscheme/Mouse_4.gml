// Genetix Studio
audio_play_sound(sfx_click,1,false)
effect_btn()

if store.color_scheme < colorSchemes
	store.color_scheme += 1
else
	store.color_scheme = 0

save_game()