op = open('dml.sql','a')
output = ''
with open('station_table.csv','r') as inp:
    head = None
    num_cols = [0,3,4]
    for line in inp.readlines():
        if head is None:
            head = line.strip()
            op.write(f'insert into station ({head}) values \n')
            continue
        else:
            line = list(map(lambda x:f'"{x}"', line.strip().split(',')))
            for col in num_cols:
                line[col] = line[col].replace('"','')
            line = ','.join(line)
            output += f'({line}),\n'

op.write(output[:-2])
op.close()