t++;

dir+=dir_inc;
ofs+=ofs_inc;

x = x_start + r_1 * dcos(dir) * dcos(ofs) - r_2 * dsin(dir) * dsin(ofs)
y = y_start + r_2 * dsin(dir) * dcos(ofs) + r_1 * dcos(dir) * dsin(ofs)