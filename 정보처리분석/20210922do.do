/* 주석 다는 방법 입니다. */

/* 20210922 수업 */

/* data_6_3files: 미국의 3340� 명의 각각의 사람에 대한 데이터*/

/* 소득을 분위 별로 나누기 */
db xtile

order income_4, after(income)
/* income_4의 순서를 income 변수 뒤로, 옮긴다. */

db recode
/* Variabeles, Required */
(min/1979=0)(1980/max=1)
/* 1979년까지는 0, 1980년 이후에는 1 */

/* Options: generate new variables: 새로운 변수로 저장 */
ybirth1


/* 더미변수 만들기 두 가지 방법 (gen, replace), (recode)*/
tab gender

tab gender, nolabel
/* 남성은 1, 여성은 2인것 을 볼 수 있음. */

recode gender (2=0), gen(gender1)
/* gender1 이라는 새로운 변수에, 여성이 2로 코딩 되어 있는 것을 0으로 바꿔준다. */


/* data_6_1files: 각 회사의 데이터*/
db collapse
/* 찾고자 하는 통계 값 */
/* options */
/* options: company: 회사별로 그룹화 시켜줌 */
/* collapsee를 쓰면 데이터의가 달라짐. 즉, 해당 변수를 제외하고 나머지 데이터가 사라짐. */

/* wide type은 실험군과 대조군만 보여줌. long type은 실험군과 대조군에 대한 결과까지 봄.
분석에 있어서 필요한 데이터 타입은 long type임 */

/* wide type을 long type으로 바꾸려면 db stack을 통해서 into(새로운 변수)
로 할당해주면 됨. */
db stack






