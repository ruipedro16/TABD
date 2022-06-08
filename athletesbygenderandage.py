#!/usr/bin/env python3

import sys
import psycopg2
import numpy as np
import matplotlib.pyplot as plt

host = 'localhost'
user = 'postgres'
password = 'abcd1234'
database = 'tabd'

def run_query(query, host=host, user=user, password=password, database=database):
    conn = None
    cur = None
    try:
        conn = psycopg2.connect(
            host=host,
            database=database,
            user=user,
            password=password
        )

        cur = conn.cursor()
        cur.execute(query)
        
        res = cur.fetchall()
        cols = [desc[0] for desc in cur.description]

        return res, cols

    except Exception as e:
        sys.stderr.write(e)
    finally:
        if cur is not None:
            cur.close()
        if conn is not None:
            conn.close()

query = '''
SELECT 
    EXTRACT(YEAR FROM age(birthdate)) AS age,
    gender,
    COUNT(*)
FROM annp_final.athlete
GROUP BY (age, gender)
ORDER BY age ASC;
'''

res, _ = run_query(query)

def aux(res, age):
    male_count = 0
    female_count = 0
    for (_age, gender, count) in res:
        if (_age == age):
            if gender == 'M':
                male_count = count
            elif gender == 'F':
                female_count = count
    return male_count, female_count

ages = list(set(map(lambda x: int(x[0]), res)))
male_counts = [aux(res, i)[0] for i in ages]
female_counts = [aux(res, i)[1] for i in ages]

x = np.arange(len(ages))  # the label locations
width = 0.5  # the width of the bars

fig, ax = plt.subplots(dpi=150)

rects1 = ax.bar(x - width/2, male_counts, width=width,  label='Men')
rects2 = ax.bar(x + width/2, female_counts, width=width, label='Woman')

ax.set_ylabel('Number of athletes')
ax.set_title('Number of athletes by group and gender')
ax.set_xticks(x, ages, rotation='45')
ax.legend()

ax.bar_label(rects1, padding=2.5)
ax.bar_label(rects2, padding=2.5)

plt.tight_layout()

plt.show()