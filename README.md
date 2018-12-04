## Metricbeat docker for ADOP-C
Using [InSpec](https://www.inspec.io/) framework to get compliance report for the docker project at  [robedevops/adop-logstash:1.0](https://github.com/RobeDevOps/adop-logstash.git)

## How to run inpsec profile
```
inspec exec profile -t docker://logstash
```