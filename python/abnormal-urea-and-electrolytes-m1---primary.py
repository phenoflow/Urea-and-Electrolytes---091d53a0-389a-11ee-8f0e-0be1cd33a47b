# S Jill Stocks, Evangelos Kontopantelis, Artur Akbarov, Sarah Rodgers, Anthony J Avery, Darren M Aschroft, 2023.

import sys, csv, re

codes = [{"code":"4412000","system":"readv2"},{"code":"4412100","system":"readv2"},{"code":"44I2.00","system":"readv2"},{"code":"44I3.00","system":"readv2"},{"code":"44I8000","system":"readv2"},{"code":"44J1.00","system":"readv2"},{"code":"44J2.00","system":"readv2"},{"code":"44J3000","system":"readv2"},{"code":"44J3200","system":"readv2"}];
REQUIRED_CODES = 1;
with open(sys.argv[1], 'r') as file_in, open('urea-and-electrolytes-potential-cases.csv', 'w', newline='') as file_out:
    csv_reader = csv.DictReader(file_in)
    csv_writer = csv.DictWriter(file_out, csv_reader.fieldnames + ["abnormal-urea-and-electrolytes-m1---primary-identified"])
    csv_writer.writeheader();
    codes_identified = 0;
    for row in csv_reader:
        newRow = row.copy();
        for cell in row:
            # Iterate cell lists (e.g. codes)
            for item in re.findall(r'\(([^,]*)\,', row[cell]):
                if(item in list(map(lambda code: code['code'], codes))): codes_identified+=1;
                if(codes_identified>=REQUIRED_CODES):
                    newRow["abnormal-urea-and-electrolytes-m1---primary-identified"] = "CASE";
                    break;
            if(codes_identified>=REQUIRED_CODES): break;
        if(codes_identified<REQUIRED_CODES):
            newRow["abnormal-urea-and-electrolytes-m1---primary-identified"] = "UNK";
        codes_identified=0;
        csv_writer.writerow(newRow)