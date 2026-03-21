t=629

muteki=1

atk2_indicator=choose(0,1,2)

/*
0 - yellow, white, red
1 - red, yellow, white
2 - white, yellow, red
*/

atk3_list=ds_list_create()
for (i=0; i<27; i++) {
    ds_list_add(atk3_list, i)
}
ds_list_shuffle(atk3_list)
atk3_extra_index=0//irandom(2)

atk3_to_4_side=choose(-1,1)