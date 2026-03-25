atk=global.AvoidancePracticeSegment
pb_time=global.AvoidancePB

atk_limit = 1
atk_limit += (pb_time>628) + (pb_time>1258) + (pb_time>1824)
atk_limit += (pb_time>2392) + (pb_time>3024) + (pb_time>4153)
atk_limit += (pb_time>5305) + (pb_time>5887) + (pb_time>6505)


if global.debugMode
	atk_limit=10