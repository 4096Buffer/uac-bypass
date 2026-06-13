
extern originalFuncs:QWORD

.code

proxy_CloseDriver proc
    jmp QWORD PTR [originalFuncs + 0*8]
proxy_CloseDriver endp

proxy_DefDriverProc proc
    jmp QWORD PTR [originalFuncs + 1*8]
proxy_DefDriverProc endp

proxy_DriverCallback proc
    jmp QWORD PTR [originalFuncs + 2*8]
proxy_DriverCallback endp

proxy_DrvGetModuleHandle proc
    jmp QWORD PTR [originalFuncs + 3*8]
proxy_DrvGetModuleHandle endp

proxy_GetDriverModuleHandle proc
    jmp QWORD PTR [originalFuncs + 4*8]
proxy_GetDriverModuleHandle endp

proxy_OpenDriver proc
    jmp QWORD PTR [originalFuncs + 5*8]
proxy_OpenDriver endp

proxy_PlaySound proc
    jmp QWORD PTR [originalFuncs + 6*8]
proxy_PlaySound endp

proxy_PlaySoundA proc
    jmp QWORD PTR [originalFuncs + 7*8]
proxy_PlaySoundA endp

proxy_PlaySoundW proc
    jmp QWORD PTR [originalFuncs + 8*8]
proxy_PlaySoundW endp

proxy_SendDriverMessage proc
    jmp QWORD PTR [originalFuncs + 9*8]
proxy_SendDriverMessage endp

proxy_WOWAppExit proc
    jmp QWORD PTR [originalFuncs + 10*8]
proxy_WOWAppExit endp

proxy_auxGetDevCapsA proc
    jmp QWORD PTR [originalFuncs + 11*8]
proxy_auxGetDevCapsA endp

proxy_auxGetDevCapsW proc
    jmp QWORD PTR [originalFuncs + 12*8]
proxy_auxGetDevCapsW endp

proxy_auxGetNumDevs proc
    jmp QWORD PTR [originalFuncs + 13*8]
proxy_auxGetNumDevs endp

proxy_auxGetVolume proc
    jmp QWORD PTR [originalFuncs + 14*8]
proxy_auxGetVolume endp

proxy_auxOutMessage proc
    jmp QWORD PTR [originalFuncs + 15*8]
proxy_auxOutMessage endp

proxy_auxSetVolume proc
    jmp QWORD PTR [originalFuncs + 16*8]
proxy_auxSetVolume endp

proxy_joyConfigChanged proc
    jmp QWORD PTR [originalFuncs + 17*8]
proxy_joyConfigChanged endp

proxy_joyGetDevCapsA proc
    jmp QWORD PTR [originalFuncs + 18*8]
proxy_joyGetDevCapsA endp

proxy_joyGetDevCapsW proc
    jmp QWORD PTR [originalFuncs + 19*8]
proxy_joyGetDevCapsW endp

proxy_joyGetNumDevs proc
    jmp QWORD PTR [originalFuncs + 20*8]
proxy_joyGetNumDevs endp

proxy_joyGetPos proc
    jmp QWORD PTR [originalFuncs + 21*8]
proxy_joyGetPos endp

proxy_joyGetPosEx proc
    jmp QWORD PTR [originalFuncs + 22*8]
proxy_joyGetPosEx endp

proxy_joyGetThreshold proc
    jmp QWORD PTR [originalFuncs + 23*8]
proxy_joyGetThreshold endp

proxy_joyReleaseCapture proc
    jmp QWORD PTR [originalFuncs + 24*8]
proxy_joyReleaseCapture endp

proxy_joySetCapture proc
    jmp QWORD PTR [originalFuncs + 25*8]
proxy_joySetCapture endp

proxy_joySetThreshold proc
    jmp QWORD PTR [originalFuncs + 26*8]
proxy_joySetThreshold endp

proxy_mciDriverNotify proc
    jmp QWORD PTR [originalFuncs + 27*8]
proxy_mciDriverNotify endp

proxy_mciDriverYield proc
    jmp QWORD PTR [originalFuncs + 28*8]
proxy_mciDriverYield endp

proxy_mciExecute proc
    jmp QWORD PTR [originalFuncs + 29*8]
proxy_mciExecute endp

proxy_mciFreeCommandResource proc
    jmp QWORD PTR [originalFuncs + 30*8]
proxy_mciFreeCommandResource endp

proxy_mciGetCreatorTask proc
    jmp QWORD PTR [originalFuncs + 31*8]
proxy_mciGetCreatorTask endp

proxy_mciGetDeviceIDA proc
    jmp QWORD PTR [originalFuncs + 32*8]
proxy_mciGetDeviceIDA endp

proxy_mciGetDeviceIDFromElementIDA proc
    jmp QWORD PTR [originalFuncs + 33*8]
proxy_mciGetDeviceIDFromElementIDA endp

proxy_mciGetDeviceIDFromElementIDW proc
    jmp QWORD PTR [originalFuncs + 34*8]
proxy_mciGetDeviceIDFromElementIDW endp

proxy_mciGetDeviceIDW proc
    jmp QWORD PTR [originalFuncs + 35*8]
proxy_mciGetDeviceIDW endp

proxy_mciGetDriverData proc
    jmp QWORD PTR [originalFuncs + 36*8]
proxy_mciGetDriverData endp

proxy_mciGetErrorStringA proc
    jmp QWORD PTR [originalFuncs + 37*8]
proxy_mciGetErrorStringA endp

proxy_mciGetErrorStringW proc
    jmp QWORD PTR [originalFuncs + 38*8]
proxy_mciGetErrorStringW endp

proxy_mciGetYieldProc proc
    jmp QWORD PTR [originalFuncs + 39*8]
proxy_mciGetYieldProc endp

proxy_mciLoadCommandResource proc
    jmp QWORD PTR [originalFuncs + 40*8]
proxy_mciLoadCommandResource endp

proxy_mciSendCommandA proc
    jmp QWORD PTR [originalFuncs + 41*8]
proxy_mciSendCommandA endp

proxy_mciSendCommandW proc
    jmp QWORD PTR [originalFuncs + 42*8]
proxy_mciSendCommandW endp

proxy_mciSendStringA proc
    jmp QWORD PTR [originalFuncs + 43*8]
proxy_mciSendStringA endp

proxy_mciSendStringW proc
    jmp QWORD PTR [originalFuncs + 44*8]
proxy_mciSendStringW endp

proxy_mciSetDriverData proc
    jmp QWORD PTR [originalFuncs + 45*8]
proxy_mciSetDriverData endp

proxy_mciSetYieldProc proc
    jmp QWORD PTR [originalFuncs + 46*8]
proxy_mciSetYieldProc endp

proxy_midiConnect proc
    jmp QWORD PTR [originalFuncs + 47*8]
proxy_midiConnect endp

proxy_midiDisconnect proc
    jmp QWORD PTR [originalFuncs + 48*8]
proxy_midiDisconnect endp

proxy_midiInAddBuffer proc
    jmp QWORD PTR [originalFuncs + 49*8]
proxy_midiInAddBuffer endp

proxy_midiInClose proc
    jmp QWORD PTR [originalFuncs + 50*8]
proxy_midiInClose endp

proxy_midiInGetDevCapsA proc
    jmp QWORD PTR [originalFuncs + 51*8]
proxy_midiInGetDevCapsA endp

proxy_midiInGetDevCapsW proc
    jmp QWORD PTR [originalFuncs + 52*8]
proxy_midiInGetDevCapsW endp

proxy_midiInGetErrorTextA proc
    jmp QWORD PTR [originalFuncs + 53*8]
proxy_midiInGetErrorTextA endp

proxy_midiInGetErrorTextW proc
    jmp QWORD PTR [originalFuncs + 54*8]
proxy_midiInGetErrorTextW endp

proxy_midiInGetID proc
    jmp QWORD PTR [originalFuncs + 55*8]
proxy_midiInGetID endp

proxy_midiInGetNumDevs proc
    jmp QWORD PTR [originalFuncs + 56*8]
proxy_midiInGetNumDevs endp

proxy_midiInMessage proc
    jmp QWORD PTR [originalFuncs + 57*8]
proxy_midiInMessage endp

proxy_midiInOpen proc
    jmp QWORD PTR [originalFuncs + 58*8]
proxy_midiInOpen endp

proxy_midiInPrepareHeader proc
    jmp QWORD PTR [originalFuncs + 59*8]
proxy_midiInPrepareHeader endp

proxy_midiInReset proc
    jmp QWORD PTR [originalFuncs + 60*8]
proxy_midiInReset endp

proxy_midiInStart proc
    jmp QWORD PTR [originalFuncs + 61*8]
proxy_midiInStart endp

proxy_midiInStop proc
    jmp QWORD PTR [originalFuncs + 62*8]
proxy_midiInStop endp

proxy_midiInUnprepareHeader proc
    jmp QWORD PTR [originalFuncs + 63*8]
proxy_midiInUnprepareHeader endp

proxy_midiOutCacheDrumPatches proc
    jmp QWORD PTR [originalFuncs + 64*8]
proxy_midiOutCacheDrumPatches endp

proxy_midiOutCachePatches proc
    jmp QWORD PTR [originalFuncs + 65*8]
proxy_midiOutCachePatches endp

proxy_midiOutClose proc
    jmp QWORD PTR [originalFuncs + 66*8]
proxy_midiOutClose endp

proxy_midiOutGetDevCapsA proc
    jmp QWORD PTR [originalFuncs + 67*8]
proxy_midiOutGetDevCapsA endp

proxy_midiOutGetDevCapsW proc
    jmp QWORD PTR [originalFuncs + 68*8]
proxy_midiOutGetDevCapsW endp

proxy_midiOutGetErrorTextA proc
    jmp QWORD PTR [originalFuncs + 69*8]
proxy_midiOutGetErrorTextA endp

proxy_midiOutGetErrorTextW proc
    jmp QWORD PTR [originalFuncs + 70*8]
proxy_midiOutGetErrorTextW endp

proxy_midiOutGetID proc
    jmp QWORD PTR [originalFuncs + 71*8]
proxy_midiOutGetID endp

proxy_midiOutGetNumDevs proc
    jmp QWORD PTR [originalFuncs + 72*8]
proxy_midiOutGetNumDevs endp

proxy_midiOutGetVolume proc
    jmp QWORD PTR [originalFuncs + 73*8]
proxy_midiOutGetVolume endp

proxy_midiOutLongMsg proc
    jmp QWORD PTR [originalFuncs + 74*8]
proxy_midiOutLongMsg endp

proxy_midiOutMessage proc
    jmp QWORD PTR [originalFuncs + 75*8]
proxy_midiOutMessage endp

proxy_midiOutOpen proc
    jmp QWORD PTR [originalFuncs + 76*8]
proxy_midiOutOpen endp

proxy_midiOutPrepareHeader proc
    jmp QWORD PTR [originalFuncs + 77*8]
proxy_midiOutPrepareHeader endp

proxy_midiOutReset proc
    jmp QWORD PTR [originalFuncs + 78*8]
proxy_midiOutReset endp

proxy_midiOutSetVolume proc
    jmp QWORD PTR [originalFuncs + 79*8]
proxy_midiOutSetVolume endp

proxy_midiOutShortMsg proc
    jmp QWORD PTR [originalFuncs + 80*8]
proxy_midiOutShortMsg endp

proxy_midiOutUnprepareHeader proc
    jmp QWORD PTR [originalFuncs + 81*8]
proxy_midiOutUnprepareHeader endp

proxy_midiStreamClose proc
    jmp QWORD PTR [originalFuncs + 82*8]
proxy_midiStreamClose endp

proxy_midiStreamOpen proc
    jmp QWORD PTR [originalFuncs + 83*8]
proxy_midiStreamOpen endp

proxy_midiStreamOut proc
    jmp QWORD PTR [originalFuncs + 84*8]
proxy_midiStreamOut endp

proxy_midiStreamPause proc
    jmp QWORD PTR [originalFuncs + 85*8]
proxy_midiStreamPause endp

proxy_midiStreamPosition proc
    jmp QWORD PTR [originalFuncs + 86*8]
proxy_midiStreamPosition endp

proxy_midiStreamProperty proc
    jmp QWORD PTR [originalFuncs + 87*8]
proxy_midiStreamProperty endp

proxy_midiStreamRestart proc
    jmp QWORD PTR [originalFuncs + 88*8]
proxy_midiStreamRestart endp

proxy_midiStreamStop proc
    jmp QWORD PTR [originalFuncs + 89*8]
proxy_midiStreamStop endp

proxy_mixerClose proc
    jmp QWORD PTR [originalFuncs + 90*8]
proxy_mixerClose endp

proxy_mixerGetControlDetailsA proc
    jmp QWORD PTR [originalFuncs + 91*8]
proxy_mixerGetControlDetailsA endp

proxy_mixerGetControlDetailsW proc
    jmp QWORD PTR [originalFuncs + 92*8]
proxy_mixerGetControlDetailsW endp

proxy_mixerGetDevCapsA proc
    jmp QWORD PTR [originalFuncs + 93*8]
proxy_mixerGetDevCapsA endp

proxy_mixerGetDevCapsW proc
    jmp QWORD PTR [originalFuncs + 94*8]
proxy_mixerGetDevCapsW endp

proxy_mixerGetID proc
    jmp QWORD PTR [originalFuncs + 95*8]
proxy_mixerGetID endp

proxy_mixerGetLineControlsA proc
    jmp QWORD PTR [originalFuncs + 96*8]
proxy_mixerGetLineControlsA endp

proxy_mixerGetLineControlsW proc
    jmp QWORD PTR [originalFuncs + 97*8]
proxy_mixerGetLineControlsW endp

proxy_mixerGetLineInfoA proc
    jmp QWORD PTR [originalFuncs + 98*8]
proxy_mixerGetLineInfoA endp

proxy_mixerGetLineInfoW proc
    jmp QWORD PTR [originalFuncs + 99*8]
proxy_mixerGetLineInfoW endp

proxy_mixerGetNumDevs proc
    jmp QWORD PTR [originalFuncs + 100*8]
proxy_mixerGetNumDevs endp

proxy_mixerMessage proc
    jmp QWORD PTR [originalFuncs + 101*8]
proxy_mixerMessage endp

proxy_mixerOpen proc
    jmp QWORD PTR [originalFuncs + 102*8]
proxy_mixerOpen endp

proxy_mixerSetControlDetails proc
    jmp QWORD PTR [originalFuncs + 103*8]
proxy_mixerSetControlDetails endp

proxy_mmDrvInstall proc
    jmp QWORD PTR [originalFuncs + 104*8]
proxy_mmDrvInstall endp

proxy_mmGetCurrentTask proc
    jmp QWORD PTR [originalFuncs + 105*8]
proxy_mmGetCurrentTask endp

proxy_mmTaskBlock proc
    jmp QWORD PTR [originalFuncs + 106*8]
proxy_mmTaskBlock endp

proxy_mmTaskCreate proc
    jmp QWORD PTR [originalFuncs + 107*8]
proxy_mmTaskCreate endp

proxy_mmTaskSignal proc
    jmp QWORD PTR [originalFuncs + 108*8]
proxy_mmTaskSignal endp

proxy_mmTaskYield proc
    jmp QWORD PTR [originalFuncs + 109*8]
proxy_mmTaskYield endp

proxy_mmioAdvance proc
    jmp QWORD PTR [originalFuncs + 110*8]
proxy_mmioAdvance endp

proxy_mmioAscend proc
    jmp QWORD PTR [originalFuncs + 111*8]
proxy_mmioAscend endp

proxy_mmioClose proc
    jmp QWORD PTR [originalFuncs + 112*8]
proxy_mmioClose endp

proxy_mmioCreateChunk proc
    jmp QWORD PTR [originalFuncs + 113*8]
proxy_mmioCreateChunk endp

proxy_mmioDescend proc
    jmp QWORD PTR [originalFuncs + 114*8]
proxy_mmioDescend endp

proxy_mmioFlush proc
    jmp QWORD PTR [originalFuncs + 115*8]
proxy_mmioFlush endp

proxy_mmioGetInfo proc
    jmp QWORD PTR [originalFuncs + 116*8]
proxy_mmioGetInfo endp

proxy_mmioInstallIOProcA proc
    jmp QWORD PTR [originalFuncs + 117*8]
proxy_mmioInstallIOProcA endp

proxy_mmioInstallIOProcW proc
    jmp QWORD PTR [originalFuncs + 118*8]
proxy_mmioInstallIOProcW endp

proxy_mmioOpenA proc
    jmp QWORD PTR [originalFuncs + 119*8]
proxy_mmioOpenA endp

proxy_mmioOpenW proc
    jmp QWORD PTR [originalFuncs + 120*8]
proxy_mmioOpenW endp

proxy_mmioRead proc
    jmp QWORD PTR [originalFuncs + 121*8]
proxy_mmioRead endp

proxy_mmioRenameA proc
    jmp QWORD PTR [originalFuncs + 122*8]
proxy_mmioRenameA endp

proxy_mmioRenameW proc
    jmp QWORD PTR [originalFuncs + 123*8]
proxy_mmioRenameW endp

proxy_mmioSeek proc
    jmp QWORD PTR [originalFuncs + 124*8]
proxy_mmioSeek endp

proxy_mmioSendMessage proc
    jmp QWORD PTR [originalFuncs + 125*8]
proxy_mmioSendMessage endp

proxy_mmioSetBuffer proc
    jmp QWORD PTR [originalFuncs + 126*8]
proxy_mmioSetBuffer endp

proxy_mmioSetInfo proc
    jmp QWORD PTR [originalFuncs + 127*8]
proxy_mmioSetInfo endp

proxy_mmioStringToFOURCCA proc
    jmp QWORD PTR [originalFuncs + 128*8]
proxy_mmioStringToFOURCCA endp

proxy_mmioStringToFOURCCW proc
    jmp QWORD PTR [originalFuncs + 129*8]
proxy_mmioStringToFOURCCW endp

proxy_mmioWrite proc
    jmp QWORD PTR [originalFuncs + 130*8]
proxy_mmioWrite endp

proxy_mmsystemGetVersion proc
    jmp QWORD PTR [originalFuncs + 131*8]
proxy_mmsystemGetVersion endp

proxy_sndPlaySoundA proc
    jmp QWORD PTR [originalFuncs + 132*8]
proxy_sndPlaySoundA endp

proxy_sndPlaySoundW proc
    jmp QWORD PTR [originalFuncs + 133*8]
proxy_sndPlaySoundW endp

proxy_timeBeginPeriod proc
    jmp QWORD PTR [originalFuncs + 134*8]
proxy_timeBeginPeriod endp

proxy_timeEndPeriod proc
    jmp QWORD PTR [originalFuncs + 135*8]
proxy_timeEndPeriod endp

proxy_timeGetDevCaps proc
    jmp QWORD PTR [originalFuncs + 136*8]
proxy_timeGetDevCaps endp

proxy_timeGetSystemTime proc
    jmp QWORD PTR [originalFuncs + 137*8]
proxy_timeGetSystemTime endp

proxy_timeGetTime proc
    jmp QWORD PTR [originalFuncs + 138*8]
proxy_timeGetTime endp

proxy_timeKillEvent proc
    jmp QWORD PTR [originalFuncs + 139*8]
proxy_timeKillEvent endp

proxy_timeSetEvent proc
    jmp QWORD PTR [originalFuncs + 140*8]
proxy_timeSetEvent endp

proxy_waveInAddBuffer proc
    jmp QWORD PTR [originalFuncs + 141*8]
proxy_waveInAddBuffer endp

proxy_waveInClose proc
    jmp QWORD PTR [originalFuncs + 142*8]
proxy_waveInClose endp

proxy_waveInGetDevCapsA proc
    jmp QWORD PTR [originalFuncs + 143*8]
proxy_waveInGetDevCapsA endp

proxy_waveInGetDevCapsW proc
    jmp QWORD PTR [originalFuncs + 144*8]
proxy_waveInGetDevCapsW endp

proxy_waveInGetErrorTextA proc
    jmp QWORD PTR [originalFuncs + 145*8]
proxy_waveInGetErrorTextA endp

proxy_waveInGetErrorTextW proc
    jmp QWORD PTR [originalFuncs + 146*8]
proxy_waveInGetErrorTextW endp

proxy_waveInGetID proc
    jmp QWORD PTR [originalFuncs + 147*8]
proxy_waveInGetID endp

proxy_waveInGetNumDevs proc
    jmp QWORD PTR [originalFuncs + 148*8]
proxy_waveInGetNumDevs endp

proxy_waveInGetPosition proc
    jmp QWORD PTR [originalFuncs + 149*8]
proxy_waveInGetPosition endp

proxy_waveInMessage proc
    jmp QWORD PTR [originalFuncs + 150*8]
proxy_waveInMessage endp

proxy_waveInOpen proc
    jmp QWORD PTR [originalFuncs + 151*8]
proxy_waveInOpen endp

proxy_waveInPrepareHeader proc
    jmp QWORD PTR [originalFuncs + 152*8]
proxy_waveInPrepareHeader endp

proxy_waveInReset proc
    jmp QWORD PTR [originalFuncs + 153*8]
proxy_waveInReset endp

proxy_waveInStart proc
    jmp QWORD PTR [originalFuncs + 154*8]
proxy_waveInStart endp

proxy_waveInStop proc
    jmp QWORD PTR [originalFuncs + 155*8]
proxy_waveInStop endp

proxy_waveInUnprepareHeader proc
    jmp QWORD PTR [originalFuncs + 156*8]
proxy_waveInUnprepareHeader endp

proxy_waveOutBreakLoop proc
    jmp QWORD PTR [originalFuncs + 157*8]
proxy_waveOutBreakLoop endp

proxy_waveOutClose proc
    jmp QWORD PTR [originalFuncs + 158*8]
proxy_waveOutClose endp

proxy_waveOutGetDevCapsA proc
    jmp QWORD PTR [originalFuncs + 159*8]
proxy_waveOutGetDevCapsA endp

proxy_waveOutGetDevCapsW proc
    jmp QWORD PTR [originalFuncs + 160*8]
proxy_waveOutGetDevCapsW endp

proxy_waveOutGetErrorTextA proc
    jmp QWORD PTR [originalFuncs + 161*8]
proxy_waveOutGetErrorTextA endp

proxy_waveOutGetErrorTextW proc
    jmp QWORD PTR [originalFuncs + 162*8]
proxy_waveOutGetErrorTextW endp

proxy_waveOutGetID proc
    jmp QWORD PTR [originalFuncs + 163*8]
proxy_waveOutGetID endp

proxy_waveOutGetNumDevs proc
    jmp QWORD PTR [originalFuncs + 164*8]
proxy_waveOutGetNumDevs endp

proxy_waveOutGetPitch proc
    jmp QWORD PTR [originalFuncs + 165*8]
proxy_waveOutGetPitch endp

proxy_waveOutGetPlaybackRate proc
    jmp QWORD PTR [originalFuncs + 166*8]
proxy_waveOutGetPlaybackRate endp

proxy_waveOutGetPosition proc
    jmp QWORD PTR [originalFuncs + 167*8]
proxy_waveOutGetPosition endp

proxy_waveOutGetVolume proc
    jmp QWORD PTR [originalFuncs + 168*8]
proxy_waveOutGetVolume endp

proxy_waveOutMessage proc
    jmp QWORD PTR [originalFuncs + 169*8]
proxy_waveOutMessage endp

proxy_waveOutOpen proc
    jmp QWORD PTR [originalFuncs + 170*8]
proxy_waveOutOpen endp

proxy_waveOutPause proc
    jmp QWORD PTR [originalFuncs + 171*8]
proxy_waveOutPause endp

proxy_waveOutPrepareHeader proc
    jmp QWORD PTR [originalFuncs + 172*8]
proxy_waveOutPrepareHeader endp

proxy_waveOutReset proc
    jmp QWORD PTR [originalFuncs + 173*8]
proxy_waveOutReset endp

proxy_waveOutRestart proc
    jmp QWORD PTR [originalFuncs + 174*8]
proxy_waveOutRestart endp

proxy_waveOutSetPitch proc
    jmp QWORD PTR [originalFuncs + 175*8]
proxy_waveOutSetPitch endp

proxy_waveOutSetPlaybackRate proc
    jmp QWORD PTR [originalFuncs + 176*8]
proxy_waveOutSetPlaybackRate endp

proxy_waveOutSetVolume proc
    jmp QWORD PTR [originalFuncs + 177*8]
proxy_waveOutSetVolume endp

proxy_waveOutUnprepareHeader proc
    jmp QWORD PTR [originalFuncs + 178*8]
proxy_waveOutUnprepareHeader endp

proxy_waveOutWrite proc
    jmp QWORD PTR [originalFuncs + 179*8]
proxy_waveOutWrite endp

end