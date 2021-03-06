SELECT tab0.v1 AS v1 , tab4.v5 AS v5 , tab5.v6 AS v6 , tab3.v4 AS v4 , tab2.v3 AS v3 , tab1.v2 AS v2 
 FROM    (SELECT obj AS v1 
	 FROM gr__offers$$1$$ 
	 WHERE sub = 'wsdbm:Retailer11202'
	) tab0
 JOIN    (SELECT sub AS v1 , obj AS v2 
	 FROM gr__includes$$2$$
	) tab1
 ON(tab0.v1=tab1.v1)
 JOIN    (SELECT obj AS v3 , sub AS v2 
	 FROM sorg__director$$3$$
	
	) tab2
 ON(tab1.v2=tab2.v2)
 JOIN    (SELECT obj AS v4 , sub AS v3 
	 FROM wsdbm__friendOf$$4$$
	
	) tab3
 ON(tab2.v3=tab3.v3)
 JOIN    (SELECT obj AS v5 , sub AS v4 
	 FROM wsdbm__friendOf$$5$$
	
	) tab4
 ON(tab3.v4=tab4.v4)
 JOIN    (SELECT sub AS v5 , obj AS v6 
	 FROM wsdbm__likes$$6$$
	) tab5
 ON(tab4.v5=tab5.v5)


++++++Tables Statistic
wsdbm__likes$$6$$	0	VP	wsdbm__likes/
	VP	<wsdbm__likes>	1124672
	SO	<wsdbm__likes><wsdbm__friendOf>	1124672	1.0
------
sorg__director$$3$$	2	OS	sorg__director/wsdbm__friendOf
	VP	<sorg__director>	13212
	SO	<sorg__director><gr__includes>	12839	0.97
	OS	<sorg__director><wsdbm__friendOf>	5263	0.4
------
gr__offers$$1$$	0	VP	gr__offers/
	VP	<gr__offers>	1420053
	OS	<gr__offers><gr__includes>	1420053	1.0
------
wsdbm__friendOf$$4$$	1	SO	wsdbm__friendOf/sorg__director
	VP	<wsdbm__friendOf>	45092208
	SO	<wsdbm__friendOf><sorg__director>	269310	0.01
	OS	<wsdbm__friendOf><wsdbm__friendOf>	18059217	0.4
------
gr__includes$$2$$	2	OS	gr__includes/sorg__director
	VP	<gr__includes>	900000
	SO	<gr__includes><gr__offers>	432735	0.48
	OS	<gr__includes><sorg__director>	47607	0.05
------
wsdbm__friendOf$$5$$	2	OS	wsdbm__friendOf/wsdbm__likes
	VP	<wsdbm__friendOf>	45092208
	SO	<wsdbm__friendOf><wsdbm__friendOf>	45092208	1.0
	OS	<wsdbm__friendOf><wsdbm__likes>	10736619	0.24
------
