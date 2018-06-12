///away_or_towards_camera()
// 1 = moving towards
//-1 = moving away
// 0 = not moving

return sign(point_distance_sqr(global.pl_x, global.pl_y, xprevious, yprevious) - point_distance_sqr(global.pl_x, global.pl_y, x, y));

