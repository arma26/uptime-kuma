local monitor = import 'uptime-kuma.libsonnet';
local myconfig = [
  monitor('ping') {
    name: 'test1',
    hostname: 'test2',
  },
  monitor('keyword') {
    name: 'test3',
    hostname: 'test4',
  },
  monitor('dns') {
    name: 'test5',
    hostname: 'test6',
  },
];

{
  version: '1.18.5',
  notificationList: [],
  monitorList: [
    std.mapWithIndex(function(i, v) v { id: i + 1 }, myconfig),
  ],
}
