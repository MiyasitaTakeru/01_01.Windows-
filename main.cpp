#include<Windows.h>

//Windowsアプリでのエントリーポイント(main関数)
int WINAPI WinMain(HINSTANCE, HINSTANCE, LPSTR, int)
{
	//コンソールへの文字出力
	OutputDebugStringA("Good evening,DirectX!\n");

	return 0;
}