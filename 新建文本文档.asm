DATA  SEGMENT  ;�������ݶ� 
  
STRING  DB  ��Hello World'�� $; ����һ���ַ������ǵ�Ҫ��$Ϊ������־
  
DATA  ENDS     ;���ݶν���
  
STACK SEGMENT PARA STACK  ;��ջ�ζ��忪ʼ
  
   DW  20H  DUP   (0) ;Ϊ��ջ�η���ռ�
  
STACK ENDS
  
CODES SEGMENT  ;����ζ��忪ʼ
  
ASSUME CS:CODES.DS:DATAS ;֪ͨ������Դ�����ж�������ɶ�Ӧ�ĶμĴ������жε�Ѱַ
  
START
  
      MOV   AX , DATAS ��ʵ�ֶε�ַDATAS���ص�DS
  
      MOV  DS , AX
  
     LEA   DX, STRING ��ȡSTRING��ƫ�Ƶ�ַ��DX��
  
     MOV  AH , 09H     ������9�Ź��ܵ�������ַ���
  
     INT  21H
  
     MOV AH  4CH      ;ʵ�ַ���MOS-DOS����
  
     INT 21H
  
 CODES ENDS  ������ν���
  
  END START   �������������