conky.config={
  alignment='bottom_right',
  background=true,

  border_inner_margin=5,
  border_outer_margin=0,
  border_width=10,

  default_bar_height=5,
  default_bar_width=80,
  default_graph_height=25,
  default_graph_width=200,
  default_outline_color="000000",
  default_shade_color="000000",

  font='Overpass Mono:size=10',
  font1='Overpass Mono:size=9',
  font2='Overpass Mono:bold:size=11',
  font3='Overpass Mono:bold:size=12',

  default_color='#e2e8d2',
  color1='#00ff97',
  color2='#ff5433',
  color3='#d9711e',
  color4='#00b1d5',

  double_buffer=true,
  draw_borders=false,
  draw_graph_borders=false,
  draw_outline=false,
  draw_shades=false,
  maximum_width=900,
  minimum_width=500,
  no_buffers=true,
  override_utf8_locale=true,
  own_window_class="conky",
  own_window_hints="undecorated,below,skip_taskbar,skip_pager,sticky",
  own_window=true,
  own_window_colour='#191816',
  own_window_type="desktop",

  stippled_borders=0,
  text_buffer_size=6144,
  total_run_times=0,
  update_interval=5,
  lowercase=true,
  use_spacer="none",
  use_xft=true,
  xftalpha=0.8,
};

conky.text=[[
${font3}${color1}agenda for ${time %d %b} ${color}${hr 2}${font}

${if_match "${texeci 30 khal list today eod}" != "No events"}\
${exec khal list today eod --format="{start-time}   {title}" | tail -n+2}
${else}\
${texeci 30 khal list today eod}
${endif}\

${if_match "${texeci 30 task duenow}" != ""}\
${font3}${color2}DUE TODAY${color} ${hr 2}${font}
${texeci 60 task rc.defaultwidth:80 rc.verbose:blank duenow}
${endif}\
${font3}${color3}IN PROGRESS${color} ${hr 2}${font}

${if_match "${texeci 30 task doing}" == ""}\
None
${else}\
${texeci 60 task rc.defaultwidth:80 rc.verbose: doing}
${endif}
${font3}${color4}TODO${color} ${hr 2}${font}

${font1}${texeci 60 task pjs rc.defaultwidth:80 rc.verbose:}${font}
]]
