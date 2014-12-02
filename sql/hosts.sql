select
    rtrim(subnet.network,'.0')
    ||'.'
    ||host.host_ip
    ||'    '
    ||host.id
    ||'    '
    ||host.id
    ||'.'
    ||domain.name
from host
    inner join subnet on host.subnet=subnet.id
    inner join domain on subnet.domain=domain.id
where
    host.assign == 'static'
order by subnet.network,
      length(host.host_ip),
      host.host_ip
;
