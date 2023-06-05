DATA  SEGMENT  ;定义数据段 
  
STRING  DB  ‘Hello World'， $; 定义一个字符串，记得要以$为结束标志
  
DATA  ENDS     ;数据段结束
  
STACK SEGMENT PARA STACK  ;堆栈段定义开始
  
   DW  20H  DUP   (0) ;为堆栈段分配空间
  
STACK ENDS
  
CODES SEGMENT  ;代码段定义开始
  
ASSUME CS:CODES.DS:DATAS ;通知汇编程序，源程序中定义的组由对应的段寄存器进行段的寻址
  
START
  
      MOV   AX , DATAS ；实现段地址DATAS加载到DS
  
      MOV  DS , AX
  
     LEA   DX, STRING ：取STRING的偏移地址到DX中
  
     MOV  AH , 09H     ；调用9号功能调用输出字符串
  
     INT  21H
  
     MOV AH  4CH      ;实现返回MOS-DOS窗口
  
     INT 21H
  
 CODES ENDS  ；代码段结束
  
  END START   ；整个程序结束
