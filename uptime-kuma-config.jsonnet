local monitor = import 'uptime-kuma.libsonnet';
local myconfig = [
  monitor('ping') {
    name: 'router',
    hostname: '192.168.2.1',
  },
  monitor('ping') {
    name: 'nuc1.noarc.net',
    hostname: 'nuc1.noarc.net',
  },
  monitor('ping') {
    name: 'nuc2.noarc.net',
    hostname: 'nuc2.noarc.net',
  },
  monitor('ping') {
    name: 'nuc3.noarc.net',
    hostname: 'nuc3.noarc.net',
    active: 0,
  },
  monitor('ping') {
    name: 'rpi1.noarc.net',
    hostname: 'rpi1.noarc.net',
  },
  monitor('ping') {
    name: 'rpi2.noarc.net',
    hostname: 'rpi2.noarc.net',
  },
  monitor('ping') {
    name: 'rpi3.noarc.net',
    hostname: 'rpi3.noarc.net',
  },
  monitor('ping') {
    name: 'rpi4.noarc.net',
    hostname: 'rpi4.noarc.net',
    active: 0,
  },
  monitor('ping') {
    name: 'rpi5.noarc.net',
    hostname: 'rpi5.noarc.net',
  },
  monitor('ping') {
    name: 'rpi6.noarc.net',
    hostname: 'rpi6.noarc.net',
    active: 0,
  },
  monitor('ping') {
    name: 'rpi7.noarc.net',
    hostname: 'rpi7.noarc.net',
    active: 0,
  },
  monitor('http') {
    name: 'google.com',
    url: 'https://google.com',
  },
  // monitor('keyword') {
  //   name: 'test3',
  //   hostname: 'test4',
  // },
  // monitor('dns') {
  //   name: 'test5',
  //   hostname: 'test6',
  // },
];

{
  version: '1.18.5',
  notificationList: [],
  monitorList: std.mapWithIndex(function(i, v) v { id: i + 1 }, myconfig),
}
