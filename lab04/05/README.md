
## Create PV
```bash
for x in $(seq -f "%02g" 1 5); do
cp pv.yaml pv$x.yaml
sed -i -e "s/SEQ/${x}/g" pv$x.yaml
k apply -f pv$x.yaml
rm -f pv$x.yaml
done
```
