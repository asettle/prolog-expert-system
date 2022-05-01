/* E is Exposure */
/* SY is symptoms */

diagnosis(D) :- write('Do you know if you been exposed to the virus in the last 14 days?: '),read(E),write('Do you have symptoms?: '),read(SY), diagnosis(D,SY,E).

%Known_Exposure
diagnosis('Unlikely to be infected',unlikely,SY,E):- SY = 'no' ,(E= 'no'),!.
diagnosis('Very likely to be infected',likely,SY,E):- SY = yes ,(E= yes),!.
diagnosis('Possibility of infection',possible,SY,E):- SY = 'no' ,(E= yes),!.
diagnosis('Possibility of infection',possible,SY,E):- SY = yes ,(E= 'no'),!.

%! is called cut and is used to reduce backtracking
