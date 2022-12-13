for i in `seq 1 7`; do
cat <<EOF
  monitor('ping') {
    name: 'test${i}',
    hostname: 'test${i}.domain.tld',
  },
EOF
done