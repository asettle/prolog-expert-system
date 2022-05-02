/* E is Exposure */
/* SY is symptoms */

diagnose(D) :- write('Do you know if you been exposed to the virus in the last 14 days?: '),read(E),write('Do you have symptoms?: '),read(SY), diagnosis(D,SY,E).

%Known_Exposure
diagnosis('Unlikely to be infected',SY,E):- SY = 'no' ,(E= 'no'),!.
diagnosis('Very likely to be infected',SY,E):- SY = yes ,(E= yes),!.
diagnosis('Possibility of infection',SY,E):- SY = 'no' ,(E= yes),!.
diagnosis('Possibility of infection',SY,E):- SY = yes ,(E= 'no'),!.

%! is called cut and is used to reduce backtracking
