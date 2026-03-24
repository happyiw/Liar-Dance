if(live_call()) return live_result;

with(objBlock){des()}

#region
depth=-5
SoundSetFirst=0
global.noPause = true
room_speed=50
NormalRoomSpeed=50
#endregion

//音取り用変数
#region
ts1=3000/170
ts2=ts1/2
#endregion

//スタート地点調整用


step=round(ts1*431)-1
//step=round(ts1*233)-1


//sasaa用変数
#region
i=0
repeat(1000)
{
point[i]=0
i+=1
}
surf=noone
surf2=noone
surf3=noone
point[998]=1
#endregion