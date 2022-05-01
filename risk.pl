/* SX is sex */
/* A is age */
/* C is comorbidity */

riskfactor(RF) :- write('Are you male or female?: '),read(SX),write('Are you older than 70 years of age?: '),read(A),write('Do you have a pre-existing health condition?: '),read(C), risk(RF,SX,A,C).

%At_Risk_Calculation
risk('Higher risk of experiencing serious symptoms',SX,A,C):- SX = male ,A = yes ,(C= yes),!.
risk('Higher risk of experiencing serious symptoms',SX,A,C):- SX = male ,A = yes ,(C= 'no'),!.
risk('Higher risk of experiencing serious symptoms',SX,A,C):- SX = male ,A = 'no' ,(C= yes),!.
risk('Higher risk of experiencing serious symptoms',SX,A,C):- SX = male ,A = 'no' ,(C= 'no'),!.
risk('Higher risk of experiencing serious symptoms',SX,A,C):- SX = female ,A = yes ,(C= yes),!.
risk('Moderate risk of experiencing serious symptoms',SX,A,C):- SX = female ,A = yes ,(C= 'no'),!.
risk('Moderate risk of experiencing serious symptoms',SX,A,C):- SX = female ,A = 'no' ,(C= yes),!.
risk('Low risk of experiencing serious symptoms',SX,A,C):- SX = female ,A = 'no' ,(C= 'no'),!.

%! is called cut and is used to reduce backtracking
