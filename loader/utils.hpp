#pragma once
#include <Windows.h>
#include <iostream>
#include <shellapi.h>

extern std::wstring f_windows;
extern std::wstring f_system32;
extern std::wstring system32;

extern std::wstring old_winsat;
extern std::wstring new_winsat;
extern std::wstring start_dll;

bool InitalizePaths();
void CreateFakeDirectories();
bool CopyDLLs();
bool CopyMainFiles();