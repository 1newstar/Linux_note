#include <stdio.h>//头文件

//任何一个C语言程序，都是从main开始，而且只能有一个main函数
//函数格式
/*
func_type func_name(argument list)
{
	body
}
函数返回类型：有函数返回值决定
函数名 ： main 表示函数入口地址
函数参数 ： void 表示无参 实现不同的功能
函数体 ： 表示函数实现
*/

int main(void)
{
//	lksajdka;
	printf("hello world!\n");//输出函数
	printf("line = %d\n", __LINE__);
	return 0;//返回语句 
}
