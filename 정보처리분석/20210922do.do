/* �ּ� �ٴ� ��� �Դϴ�. */

/* 20210922 ���� */

/* data_6_3files: �̱��� 3340� ���� ������ ����� ���� ������*/

/* �ҵ��� ���� ���� ������ */
db xtile

order income_4, after(income)
/* income_4�� ������ income ���� �ڷ�, �ű��. */

db recode
/* Variabeles, Required */
(min/1979=0)(1980/max=1)
/* 1979������� 0, 1980�� ���Ŀ��� 1 */

/* Options: generate new variables: ���ο� ������ ���� */
ybirth1


/* ���̺��� ����� �� ���� ��� (gen, replace), (recode)*/
tab gender

tab gender, nolabel
/* ������ 1, ������ 2�ΰ� �� �� �� ����. */

recode gender (2=0), gen(gender1)
/* gender1 �̶�� ���ο� ������, ������ 2�� �ڵ� �Ǿ� �ִ� ���� 0���� �ٲ��ش�. */


/* data_6_1files: �� ȸ���� ������*/
db collapse
/* ã���� �ϴ� ��� �� */
/* options */
/* options: company: ȸ�纰�� �׷�ȭ ������ */
/* collapsee�� ���� �������ǰ� �޶���. ��, �ش� ������ �����ϰ� ������ �����Ͱ� �����. */

/* wide type�� ���豺�� �������� ������. long type�� ���豺�� �������� ���� ������� ��.
�м��� �־ �ʿ��� ������ Ÿ���� long type�� */

/* wide type�� long type���� �ٲٷ��� db stack�� ���ؼ� into(���ο� ����)
�� �Ҵ����ָ� ��. */
db stack






