local monitor = import 'uptime-kuma.libsonnet';
local myconfig = [
  monitor('ping') {
    name: 'router',
    hostname: '192.168.2.1',
  },
  monitor('ping') {
    name: 'nuc1.noarc.net',
    hostname: '192.168.2.242',
  },
  monitor('ping') {
    name: 'nuc2.noarc.net',
    hostname: '192.168.2.243',
  },
  monitor('ping') {
    name: 'nuc3.noarc.net',
    hostname: '192.168.2.251',
    active: 0,
  },
  monitor('ping') {
    name: 'rpi1.noarc.net',
    hostname: '192.168.2.240',
  },
  monitor('ping') {
    name: 'rpi2.noarc.net',
    hostname: '192.168.2.241',
  },
  monitor('ping') {
    name: 'rpi3.noarc.net',
    hostname: '192.168.2.244',
  },
  monitor('ping') {
    name: 'rpi4.noarc.net',
    hostname: '192.168.2.245',
    active: 0,
  },
  monitor('ping') {
    name: 'rpi5.noarc.net',
    hostname: '192.168.2.234',
  },
  monitor('ping') {
    name: 'rpi6.noarc.net',
    hostname: '192.168.2.235',
    active: 0,
  },
  monitor('ping') {
    name: 'rpi7.noarc.net',
    hostname: '192.168.2.236',
    active: 0,
  },
  monitor('http') {
    name: 'Google.com',
    url: 'https://www.google.com',
  },
  monitor('http') {
    name: 'Cloudflare.com',
    url: 'https://www.cloudflare.com',
  },
  monitor('ping') {
    name: 'Cloudflare DNS',
    hostname: '1.1.1.1',
  },
  monitor('ping') {
    name: 'Google DNS',
    hostname: '8.8.8.8',
  },
];

{
  version: '1.18.5',
  notificationList: [],
  monitorList: std.mapWithIndex(function(i, v) v { id: i + 1 }, myconfig),
}
