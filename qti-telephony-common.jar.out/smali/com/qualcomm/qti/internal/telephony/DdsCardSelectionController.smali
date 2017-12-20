.class public Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;
.super Ljava/lang/Object;
.source "DdsCardSelectionController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController$1;,
        Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController$2;,
        Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController$3;,
        Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController$4;,
        Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController$5;,
        Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController$6;,
        Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController$MyHandler;,
        Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController$TetherStateChange;
    }
.end annotation


# static fields
.field private static final ACTION_MCFG_MBN_ACTIVATED_DONE:Ljava/lang/String; = "qualcomm.intent.action.ACTION_MCFG_MBN_DONE"

.field private static final BACKUP_DDS_ICCID:Ljava/lang/String; = "persist.radio.bksim.iccid"

.field private static final CONFIG_CURRENT_PRIMARY_SUB:Ljava/lang/String; = "config_current_primary_sub"

.field private static final DDS_ICCID:Ljava/lang/String; = "persist.radio.ddssim.iccid"

.field private static final DDS_NETWORK_TYPE:Ljava/lang/String; = "persist.radio.ddssim.rat"

.field private static final DEBUG:Z = true

.field private static final EVENT_ADD_SUBINFO_RECORD_FOR_MULTIMODE:I = 0xa

.field private static final EVENT_ANTENNA_SWITCH_RETRY:I = 0x14

.field private static final EVENT_CARD_ABSENT_FOR_MULTIMODE:I = 0xb

.field private static final EVENT_GET_ANTENNA_POS:I = 0x15

.field private static final EVENT_GET_ICC_STATUS_DONE:I = 0xe

.field private static final EVENT_GET_RADIO_CAPABILITY:I = 0x11

.field private static final EVENT_MBN_ACTIVATED_DONE:I = 0x17

.field private static final EVENT_PHONE_OBJECT_SWITCH:I = 0x1a

.field private static final EVENT_PRI_PERF_DONE:I = 0x12

.field private static final EVENT_PSENSOR_CHANGE:I = 0x1f

.field private static final EVENT_RADIO_AVAILABLE:I = 0xc

.field private static final EVENT_RADIO_NOT_AVAILABLE:I = 0xd

.field private static final EVENT_RESET_DDS:I = 0x1c

.field private static final EVENT_SCREEN_CHANGE:I = 0x1d

.field private static final EVENT_SET_GW_PERF_DONE:I = 0x10

.field private static final EVENT_SET_RAT_EX:I = 0x1e

.field private static final EVENT_SIM_LOADED_DONE:I = 0x18

.field private static final EVENT_SIM_STATUS_CHANGE:I = 0x16

.field private static final EVENT_SOFTSIM_SETTING_CHANGE:I = 0x1b

.field private static final EVENT_TEST_CARD_DETECT:I = 0x13

.field private static final EVENT_WAITING_TIME_OUT:I = 0xf

.field private static final EVENT_WAKE_LOCK_TIMEOUT:I = 0x20

.field private static final FIRST_BOOT:Ljava/lang/String; = "persist.radio.firstboot"

.field static final LOG_TAG:Ljava/lang/String; = "DdsCardSelectionController"

.field private static final NOT_PROVISIONED:I = 0x0

.field private static final OEM_CMD_RF_SAR_STATUS_CLOSE:I = 0x3

.field private static final OEM_CMD_RF_SAR_STATUS_OPEN:I = 0x2

.field private static final OEM_EVENT_TETHER_STATE_CHANGE:I = 0x19

.field private static final OEM_RF_SAR_2G_WIFIHOT:I = 0x1

.field private static final OEM_RF_SAR_2G_WIFIHOT_CALL:I = 0x4

.field private static final OEM_RF_SAR_5G_WIFIHOT:I = 0x2

.field private static final OEM_RF_SAR_5G_WIFIHOT_CALL:I = 0x5

.field private static final OEM_RF_SAR_CALLING_ONLY:I = 0x3

.field private static final OEM_SAR_DEFAULT:I = 0x6

.field private static final PROVISIONED:I = 0x1

.field private static final SOFTSIM_DISABLE_EVENT_DELAY:I = 0xfa0

.field private static final SOFT_SIM:Ljava/lang/String; = "softsim_iccid"

.field private static final VDBG:Z = false

.field private static final WAITING_OTHER_CARD_INSERT_DELAY:I = 0x1770

.field private static final WAITING_OTHER_CARD_READY_DELAY:I = 0xbb8

.field private static final WAKE_LOCK_TIMEOUT:I = 0x1770

.field private static isCMCCVersion:Z

.field private static isCardPlugIn2Out:Z

.field private static isEfsSyncFlageEnable:Z

.field private static isSAREanble:Z

.field private static isSetedANTconfig:Z

.field private static isTestMode:Z

.field private static mIccidList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final mNumPhones:I

.field private static mQtiRadioCapabilityController:Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;

.field private static mTMOIccidList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static retry_times:I

.field private static sInstance:Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;

.field private static sProxyPhones:[Lcom/android/internal/telephony/Phone;


# instance fields
.field action:I

.field private isCtaSwitchNotOn:Z

.field isWifiHotOpen:Z

.field isWifiHotOpenOld:Z

.field mAudioManager:Landroid/media/AudioManager;

.field private mCi:[Lcom/android/internal/telephony/CommandsInterface;

.field private mCm:Landroid/net/ConnectivityManager;

.field private mContext:Landroid/content/Context;

.field private mCurrentCardStatus:[Lcom/qualcomm/qti/internal/telephony/CurrentCardStatus;

.field private mHandler:Landroid/os/Handler;

.field private mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mObserver:Landroid/database/ContentObserver;

.field private mObserverPsensor:Landroid/database/ContentObserver;

.field mPSensorNegative:Z

.field private mQcRilHook:Lcom/qualcomm/qcrilhook/QcRilHook;

.field private mQcRilHookCallback:Lcom/qualcomm/qcrilhook/QcRilHookCallback;

.field private mQcRilHookReady:Z

.field private mQtiRilInterface:Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;

.field private mRadioCapability:[Lcom/android/internal/telephony/RadioCapability;

.field private final mSARActionTable:[[I

.field private mTelecomManager:Landroid/telecom/TelecomManager;

.field private final mWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mWifiConfig:Landroid/net/wifi/WifiConfiguration;

.field private mWifiManager:Landroid/net/wifi/WifiManager;

.field oldAction:I


# direct methods
.method static synthetic -get0()Z
    .locals 1

    sget-boolean v0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->isEfsSyncFlageEnable:Z

    return v0
.end method

.method static synthetic -get1()Z
    .locals 1

    sget-boolean v0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->isSetedANTconfig:Z

    return v0
.end method

.method static synthetic -get10(Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;)[Lcom/android/internal/telephony/RadioCapability;
    .locals 1

    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mRadioCapability:[Lcom/android/internal/telephony/RadioCapability;

    return-object v0
.end method

.method static synthetic -get11()I
    .locals 1

    sget v0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->retry_times:I

    return v0
.end method

.method static synthetic -get2()Z
    .locals 1

    sget-boolean v0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->isTestMode:Z

    return v0
.end method

.method static synthetic -get3(Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;)[Lcom/android/internal/telephony/CommandsInterface;
    .locals 1

    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mCi:[Lcom/android/internal/telephony/CommandsInterface;

    return-object v0
.end method

.method static synthetic -get4(Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get5(Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;)[Lcom/qualcomm/qti/internal/telephony/CurrentCardStatus;
    .locals 1

    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mCurrentCardStatus:[Lcom/qualcomm/qti/internal/telephony/CurrentCardStatus;

    return-object v0
.end method

.method static synthetic -get6(Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get7(Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;)Lcom/qualcomm/qcrilhook/QcRilHook;
    .locals 1

    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mQcRilHook:Lcom/qualcomm/qcrilhook/QcRilHook;

    return-object v0
.end method

.method static synthetic -get8(Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mQcRilHookReady:Z

    return v0
.end method

.method static synthetic -get9()Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;
    .locals 1

    sget-object v0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mQtiRadioCapabilityController:Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;

    return-object v0
.end method

.method static synthetic -set0(Z)Z
    .locals 0

    sput-boolean p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->isCardPlugIn2Out:Z

    return p0
.end method

.method static synthetic -set1(Z)Z
    .locals 0

    sput-boolean p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->isSetedANTconfig:Z

    return p0
.end method

.method static synthetic -set2(Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mQcRilHookReady:Z

    return p1
.end method

.method static synthetic -set3(I)I
    .locals 0

    sput p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->retry_times:I

    return p0
.end method

.method static synthetic -wrap0(Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;)Z
    .locals 1

    invoke-direct {p0}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->checkAllCardInsert()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;)Z
    .locals 1

    invoke-direct {p0}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->isOnlyOneCardInsert()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap10(Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;Ljava/lang/String;)V
    .locals 0
    .param p1, "string"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->loge(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap11(Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;)V
    .locals 0

    invoke-direct {p0}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->oemSendSubscriptionSettings()V

    return-void
.end method

.method static synthetic -wrap12(Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;Landroid/os/AsyncResult;Ljava/lang/Integer;)V
    .locals 0
    .param p1, "ar"    # Landroid/os/AsyncResult;
    .param p2, "index"    # Ljava/lang/Integer;

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->onGetIccCardStatusDone(Landroid/os/AsyncResult;Ljava/lang/Integer;)V

    return-void
.end method

.method static synthetic -wrap13(Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;)V
    .locals 0

    invoke-direct {p0}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->processMbnActivatedDone()V

    return-void
.end method

.method static synthetic -wrap14(Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;I)V
    .locals 0
    .param p1, "phoneId"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->processSimStatusChange(I)V

    return-void
.end method

.method static synthetic -wrap15(Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;)V
    .locals 0

    invoke-direct {p0}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->processSoftSimIccidChange()V

    return-void
.end method

.method static synthetic -wrap16(Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;IILjava/lang/String;)V
    .locals 0
    .param p1, "slotId"    # I
    .param p2, "status"    # I
    .param p3, "iccid"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->updateCurrentCardStatus(IILjava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;Ljava/util/ArrayList;)Z
    .locals 1
    .param p1, "active"    # Ljava/util/ArrayList;

    .prologue
    invoke-direct {p0, p1}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->isWifiTethered(Ljava/util/ArrayList;)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap3(Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;J)V
    .locals 1
    .param p1, "delayMillis"    # J

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->acquireWakeLockWithTimeOut(J)V

    return-void
.end method

.method static synthetic -wrap4(Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;)V
    .locals 0

    invoke-direct {p0}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->clearWakeLock()V

    return-void
.end method

.method static synthetic -wrap5(Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;)V
    .locals 0

    invoke-direct {p0}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->getPhoneMatchImei()V

    return-void
.end method

.method static synthetic -wrap6(Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;ILjava/lang/String;)V
    .locals 0
    .param p1, "slotId"    # I
    .param p2, "iccId"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->handleAddSubInfoRecordforSelectMultiMode(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap7(Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;)V
    .locals 0

    invoke-direct {p0}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->handleSarEvet()V

    return-void
.end method

.method static synthetic -wrap8(Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;)V
    .locals 0

    invoke-direct {p0}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->handleTimeOut()V

    return-void
.end method

.method static synthetic -wrap9(Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;Ljava/lang/String;)V
    .locals 0
    .param p1, "string"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x6

    const/4 v1, 0x0

    .line 148
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v0

    sput v0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mNumPhones:I

    .line 159
    sput v1, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->retry_times:I

    .line 163
    const/4 v0, 0x1

    sput-boolean v0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->isCardPlugIn2Out:Z

    .line 165
    sput-boolean v1, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->isTestMode:Z

    .line 166
    sput-boolean v1, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->isSAREanble:Z

    .line 167
    sput-boolean v1, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->isSetedANTconfig:Z

    .line 168
    sput-boolean v1, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->isEfsSyncFlageEnable:Z

    .line 170
    new-instance v0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController$1;

    invoke-direct {v0, v2}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController$1;-><init>(I)V

    sput-object v0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mIccidList:Ljava/util/ArrayList;

    .line 180
    new-instance v0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController$2;

    invoke-direct {v0, v2}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController$2;-><init>(I)V

    sput-object v0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mTMOIccidList:Ljava/util/ArrayList;

    .line 82
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;[Lcom/android/internal/telephony/CommandsInterface;[Lcom/android/internal/telephony/Phone;)V
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "qRCC"    # Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;
    .param p3, "ci"    # [Lcom/android/internal/telephony/CommandsInterface;
    .param p4, "phoneProxy"    # [Lcom/android/internal/telephony/Phone;

    .prologue
    const/4 v8, 0x3

    const/4 v6, 0x1

    const/4 v10, 0x0

    const/4 v9, 0x2

    const/4 v5, 0x0

    .line 248
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 147
    sget v4, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mNumPhones:I

    new-array v4, v4, [Lcom/android/internal/telephony/RadioCapability;

    iput-object v4, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mRadioCapability:[Lcom/android/internal/telephony/RadioCapability;

    .line 150
    iput-object v10, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 151
    iput-object v10, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    .line 153
    sget v4, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mNumPhones:I

    new-array v4, v4, [Lcom/qualcomm/qti/internal/telephony/CurrentCardStatus;

    iput-object v4, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mCurrentCardStatus:[Lcom/qualcomm/qti/internal/telephony/CurrentCardStatus;

    .line 156
    iput-boolean v5, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->isCtaSwitchNotOn:Z

    .line 157
    iput-boolean v5, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mQcRilHookReady:Z

    .line 160
    iput-object v10, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    .line 219
    const/4 v4, 0x6

    new-array v4, v4, [[I

    .line 220
    const/4 v7, 0x6

    filled-new-array {v8, v7}, [I

    move-result-object v7

    aput-object v7, v4, v5

    .line 221
    filled-new-array {v9, v6}, [I

    move-result-object v7

    aput-object v7, v4, v6

    .line 222
    filled-new-array {v9, v9}, [I

    move-result-object v7

    aput-object v7, v4, v9

    .line 223
    filled-new-array {v9, v8}, [I

    move-result-object v7

    aput-object v7, v4, v8

    .line 224
    const/4 v7, 0x4

    filled-new-array {v9, v7}, [I

    move-result-object v7

    const/4 v8, 0x4

    aput-object v7, v4, v8

    .line 225
    const/4 v7, 0x5

    filled-new-array {v9, v7}, [I

    move-result-object v7

    const/4 v8, 0x5

    aput-object v7, v4, v8

    .line 219
    iput-object v4, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mSARActionTable:[[I

    .line 313
    new-instance v4, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController$3;

    new-instance v7, Landroid/os/Handler;

    invoke-direct {v7}, Landroid/os/Handler;-><init>()V

    invoke-direct {v4, p0, v7}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController$3;-><init>(Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;Landroid/os/Handler;)V

    iput-object v4, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mObserver:Landroid/database/ContentObserver;

    .line 320
    new-instance v4, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController$4;

    new-instance v7, Landroid/os/Handler;

    invoke-direct {v7}, Landroid/os/Handler;-><init>()V

    invoke-direct {v4, p0, v7}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController$4;-><init>(Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;Landroid/os/Handler;)V

    iput-object v4, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mObserverPsensor:Landroid/database/ContentObserver;

    .line 340
    new-instance v4, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController$5;

    invoke-direct {v4, p0}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController$5;-><init>(Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;)V

    iput-object v4, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 415
    iput-object v10, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mCm:Landroid/net/ConnectivityManager;

    .line 416
    iput-boolean v5, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->isWifiHotOpen:Z

    .line 417
    iput-boolean v5, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->isWifiHotOpenOld:Z

    .line 418
    iput-boolean v5, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mPSensorNegative:Z

    .line 419
    iput v5, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->action:I

    .line 420
    iput v5, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->oldAction:I

    .line 650
    new-instance v4, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController$6;

    invoke-direct {v4, p0}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController$6;-><init>(Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;)V

    iput-object v4, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mQcRilHookCallback:Lcom/qualcomm/qcrilhook/QcRilHookCallback;

    .line 251
    iput-object p1, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mContext:Landroid/content/Context;

    .line 252
    iput-object p3, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mCi:[Lcom/android/internal/telephony/CommandsInterface;

    .line 253
    sput-object p4, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->sProxyPhones:[Lcom/android/internal/telephony/Phone;

    .line 254
    sput-object p2, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mQtiRadioCapabilityController:Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;

    .line 255
    new-instance v3, Landroid/os/HandlerThread;

    const-string/jumbo v4, "DdsCardSelectionController"

    invoke-direct {v3, v4}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 256
    .local v3, "thread":Landroid/os/HandlerThread;
    invoke-virtual {v3}, Landroid/os/HandlerThread;->start()V

    .line 257
    new-instance v4, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController$MyHandler;

    invoke-virtual {v3}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v7

    invoke-direct {v4, p0, v7}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController$MyHandler;-><init>(Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;Landroid/os/Looper;)V

    iput-object v4, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mHandler:Landroid/os/Handler;

    .line 259
    invoke-static {p1}, Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;->getInstance(Landroid/content/Context;)Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;

    move-result-object v4

    iput-object v4, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mQtiRilInterface:Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;

    .line 260
    invoke-static {p1}, Landroid/telecom/TelecomManager;->from(Landroid/content/Context;)Landroid/telecom/TelecomManager;

    move-result-object v4

    iput-object v4, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mTelecomManager:Landroid/telecom/TelecomManager;

    .line 262
    const-string/jumbo v4, "persist.radio.cmcc"

    const-string/jumbo v7, "true"

    invoke-static {v4, v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v7, "true"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    sput-boolean v4, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->isCMCCVersion:Z

    .line 263
    iget-object v4, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const-string/jumbo v7, "oem.ctaSwitch.support"

    invoke-virtual {v4, v7}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    move v4, v5

    :goto_0
    iput-boolean v4, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->isCtaSwitchNotOn:Z

    .line 264
    const-string/jumbo v4, "persist.radio.testmode"

    const-string/jumbo v7, "false"

    invoke-static {v4, v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v7, "true"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    sput-boolean v4, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->isTestMode:Z

    .line 265
    const-string/jumbo v4, "persist.radio.sar.enable"

    const-string/jumbo v7, "true"

    invoke-static {v4, v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v7, "true"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    sput-boolean v4, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->isSAREanble:Z

    .line 266
    const-string/jumbo v4, "persist.radio.efssync"

    const-string/jumbo v7, "false"

    invoke-static {v4, v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v7, "true"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    sput-boolean v4, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->isEfsSyncFlageEnable:Z

    .line 267
    const-string/jumbo v4, "power"

    invoke-virtual {p1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/PowerManager;

    .line 268
    .local v2, "pm":Landroid/os/PowerManager;
    const-string/jumbo v4, "DdsCardSelectionController"

    invoke-virtual {v2, v6, v4}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v4

    iput-object v4, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 269
    iget-object v4, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v4, v5}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 271
    iget-object v4, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mContext:Landroid/content/Context;

    const-string/jumbo v6, "audio"

    invoke-virtual {v4, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/media/AudioManager;

    iput-object v4, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mAudioManager:Landroid/media/AudioManager;

    .line 272
    iget-object v4, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mContext:Landroid/content/Context;

    const-string/jumbo v6, "wifi"

    invoke-virtual {v4, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/wifi/WifiManager;

    iput-object v4, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 274
    new-instance v4, Lcom/qualcomm/qcrilhook/QcRilHook;

    iget-object v6, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mQcRilHookCallback:Lcom/qualcomm/qcrilhook/QcRilHookCallback;

    invoke-direct {v4, v6, v7}, Lcom/qualcomm/qcrilhook/QcRilHook;-><init>(Landroid/content/Context;Lcom/qualcomm/qcrilhook/QcRilHookCallback;)V

    iput-object v4, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mQcRilHook:Lcom/qualcomm/qcrilhook/QcRilHook;

    .line 276
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    sget v4, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mNumPhones:I

    if-ge v1, v4, :cond_1

    .line 279
    iget-object v4, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mCurrentCardStatus:[Lcom/qualcomm/qti/internal/telephony/CurrentCardStatus;

    new-instance v6, Lcom/qualcomm/qti/internal/telephony/CurrentCardStatus;

    const/4 v7, -0x1

    invoke-direct {v6, v7, v10}, Lcom/qualcomm/qti/internal/telephony/CurrentCardStatus;-><init>(ILjava/lang/String;)V

    aput-object v6, v4, v1

    .line 280
    iget-object v4, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mCurrentCardStatus:[Lcom/qualcomm/qti/internal/telephony/CurrentCardStatus;

    aget-object v4, v4, v1

    iput-boolean v5, v4, Lcom/qualcomm/qti/internal/telephony/CurrentCardStatus;->isCardReady:Z

    .line 281
    iget-object v4, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mCurrentCardStatus:[Lcom/qualcomm/qti/internal/telephony/CurrentCardStatus;

    aget-object v4, v4, v1

    iput-boolean v5, v4, Lcom/qualcomm/qti/internal/telephony/CurrentCardStatus;->isCDMACard:Z

    .line 282
    iget-object v4, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mRadioCapability:[Lcom/android/internal/telephony/RadioCapability;

    aput-object v10, v4, v1

    .line 283
    iget-object v4, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mCi:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v4, v4, v1

    iget-object v6, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mHandler:Landroid/os/Handler;

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, v1}, Ljava/lang/Integer;-><init>(I)V

    const/16 v8, 0xc

    invoke-interface {v4, v6, v8, v7}, Lcom/android/internal/telephony/CommandsInterface;->registerForAvailable(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 284
    iget-object v4, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mCi:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v4, v4, v1

    iget-object v6, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mHandler:Landroid/os/Handler;

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, v1}, Ljava/lang/Integer;-><init>(I)V

    const/16 v8, 0xd

    invoke-interface {v4, v6, v8, v7}, Lcom/android/internal/telephony/CommandsInterface;->registerForNotAvailable(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 285
    sget-object v4, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->sProxyPhones:[Lcom/android/internal/telephony/Phone;

    aget-object v4, v4, v1

    .line 286
    iget-object v6, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mHandler:Landroid/os/Handler;

    const/16 v7, 0x1a

    .line 285
    invoke-virtual {v4, v6, v7, v10}, Lcom/android/internal/telephony/Phone;->registerForPhoneObjectSwitch(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 289
    iget-object v4, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 290
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "softsim_iccid"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    .line 291
    iget-object v7, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mObserver:Landroid/database/ContentObserver;

    .line 289
    invoke-virtual {v4, v6, v5, v7}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 276
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .end local v1    # "i":I
    .end local v2    # "pm":Landroid/os/PowerManager;
    :cond_0
    move v4, v6

    .line 263
    goto/16 :goto_0

    .line 293
    .restart local v1    # "i":I
    .restart local v2    # "pm":Landroid/os/PowerManager;
    :cond_1
    invoke-direct {p0}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->registerPsensor()V

    .line 295
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 296
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v4, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 297
    const-string/jumbo v4, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 298
    const-string/jumbo v4, "android.net.conn.TETHER_STATE_CHANGED"

    invoke-virtual {v0, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 299
    const-string/jumbo v4, "qualcomm.intent.action.ACTION_MCFG_MBN_DONE"

    invoke-virtual {v0, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 300
    const-string/jumbo v4, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v0, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 301
    iget-object v4, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v4, v5, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 303
    const-string/jumbo v4, "Constructor - Exit"

    invoke-direct {p0, v4}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->logd(Ljava/lang/String;)V

    .line 249
    return-void
.end method

.method private acquireWakeLockWithTimeOut(J)V
    .locals 5
    .param p1, "delayMillis"    # J

    .prologue
    .line 1728
    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    monitor-enter v2

    .line 1729
    :try_start_0
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 1730
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x20

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 1731
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x20

    invoke-virtual {v1, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1732
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0, p1, p2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    .line 1726
    return-void

    .line 1728
    .end local v0    # "msg":Landroid/os/Message;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method private backupDdsIccid(Ljava/lang/String;)V
    .locals 1
    .param p1, "iccid"    # Ljava/lang/String;

    .prologue
    .line 1475
    const-string/jumbo v0, "persist.radio.bksim.iccid"

    invoke-static {v0, p1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1473
    return-void
.end method

.method private checkAllCardInsert()Z
    .locals 4

    .prologue
    .line 1324
    const/4 v0, 0x1

    .line 1325
    .local v0, "hasAllSimInsert":Z
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    sget v2, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mNumPhones:I

    if-ge v1, v2, :cond_1

    .line 1327
    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mCurrentCardStatus:[Lcom/qualcomm/qti/internal/telephony/CurrentCardStatus;

    aget-object v2, v2, v1

    iget v2, v2, Lcom/qualcomm/qti/internal/telephony/CurrentCardStatus;->cardStatus:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mCurrentCardStatus:[Lcom/qualcomm/qti/internal/telephony/CurrentCardStatus;

    aget-object v2, v2, v1

    iget-object v2, v2, Lcom/qualcomm/qti/internal/telephony/CurrentCardStatus;->iccId:Ljava/lang/String;

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    .line 1325
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1327
    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    .line 1330
    :cond_1
    return v0
.end method

.method private checkAllCardIsReady()Z
    .locals 3

    .prologue
    .line 795
    const/4 v0, 0x1

    .line 796
    .local v0, "hasAllSimReady":Z
    const/4 v1, 0x0

    .end local v0    # "hasAllSimReady":Z
    .local v1, "i":I
    :goto_0
    sget v2, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mNumPhones:I

    if-ge v1, v2, :cond_1

    .line 798
    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mCurrentCardStatus:[Lcom/qualcomm/qti/internal/telephony/CurrentCardStatus;

    aget-object v2, v2, v1

    iget-boolean v0, v2, Lcom/qualcomm/qti/internal/telephony/CurrentCardStatus;->isCardReady:Z

    .line 796
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 798
    :cond_0
    const/4 v0, 0x0

    .restart local v0    # "hasAllSimReady":Z
    goto :goto_1

    .line 801
    .end local v0    # "hasAllSimReady":Z
    :cond_1
    return v0
.end method

.method private checkAndSetConnectivityInstance()V
    .locals 2

    .prologue
    .line 1399
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mCm:Landroid/net/ConnectivityManager;

    if-nez v0, :cond_0

    .line 1400
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mCm:Landroid/net/ConnectivityManager;

    .line 1398
    :cond_0
    return-void
.end method

.method private clearWakeLock()V
    .locals 2

    .prologue
    .line 1738
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    monitor-enter v1

    .line 1739
    :try_start_0
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1741
    const-string/jumbo v0, "no wakelock release"

    invoke-direct {p0, v0}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->logd(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 1742
    return-void

    .line 1744
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v1

    .line 1736
    return-void

    .line 1738
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private doFlexMapping(I)V
    .locals 9
    .param p1, "subId"    # I

    .prologue
    .line 1546
    sget v7, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mNumPhones:I

    new-array v6, v7, [Landroid/telephony/RadioAccessFamily;

    .line 1547
    .local v6, "rafs":[Landroid/telephony/RadioAccessFamily;
    const/4 v0, 0x0

    .line 1548
    .local v0, "atLeastOneMatch":Z
    invoke-static {}, Lcom/android/internal/telephony/ProxyController;->getInstance()Lcom/android/internal/telephony/ProxyController;

    move-result-object v4

    .line 1549
    .local v4, "proxyController":Lcom/android/internal/telephony/ProxyController;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    sget v7, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mNumPhones:I

    if-ge v1, v7, :cond_1

    .line 1550
    sget-object v7, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->sProxyPhones:[Lcom/android/internal/telephony/Phone;

    aget-object v3, v7, v1

    .line 1552
    .local v3, "phone":Lcom/android/internal/telephony/Phone;
    invoke-virtual {v3}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v2

    .line 1553
    .local v2, "id":I
    if-ne v2, p1, :cond_0

    .line 1554
    invoke-virtual {v4}, Lcom/android/internal/telephony/ProxyController;->getMaxRafSupported()I

    move-result v5

    .line 1555
    .local v5, "raf":I
    const/4 v0, 0x1

    .line 1559
    :goto_1
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "[doFlexMapping] phoneId="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " subId="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " RAF="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->logd(Ljava/lang/String;)V

    .line 1560
    new-instance v7, Landroid/telephony/RadioAccessFamily;

    invoke-direct {v7, v1, v5}, Landroid/telephony/RadioAccessFamily;-><init>(II)V

    aput-object v7, v6, v1

    .line 1549
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1557
    .end local v5    # "raf":I
    :cond_0
    invoke-virtual {v4}, Lcom/android/internal/telephony/ProxyController;->getMinRafSupported()I

    move-result v5

    .restart local v5    # "raf":I
    goto :goto_1

    .line 1562
    .end local v2    # "id":I
    .end local v3    # "phone":Lcom/android/internal/telephony/Phone;
    .end local v5    # "raf":I
    :cond_1
    if-eqz v0, :cond_2

    .line 1569
    invoke-static {}, Lcom/android/internal/telephony/ProxyController;->getInstance()Lcom/android/internal/telephony/ProxyController;

    move-result-object v7

    invoke-virtual {v7, v6}, Lcom/android/internal/telephony/ProxyController;->setRadioCapability([Landroid/telephony/RadioAccessFamily;)Z

    .line 1544
    :goto_2
    return-void

    .line 1572
    :cond_2
    const-string/jumbo v7, "[doFlexMapping] no valid subId\'s found - not updating."

    invoke-direct {p0, v7}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->logd(Ljava/lang/String;)V

    goto :goto_2
.end method

.method public static getInstance()Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;
    .locals 2

    .prologue
    .line 242
    sget-object v0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->sInstance:Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;

    if-nez v0, :cond_0

    .line 243
    const-string/jumbo v0, "DdsCardSelectionController"

    const-string/jumbo v1, "DdsCardSelectionController.getInstance called before make"

    invoke-static {v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    :cond_0
    sget-object v0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->sInstance:Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;

    return-object v0
.end method

.method private getMainStackPhoneId()I
    .locals 6

    .prologue
    .line 1512
    const/4 v1, 0x0

    .line 1513
    .local v1, "modemUuId":Ljava/lang/String;
    const/4 v2, 0x0

    .line 1514
    .local v2, "phone":Lcom/android/internal/telephony/Phone;
    const/4 v3, -0x1

    .line 1516
    .local v3, "primayStackPhoneId":I
    const/4 v0, 0x0

    .end local v1    # "modemUuId":Ljava/lang/String;
    .end local v2    # "phone":Lcom/android/internal/telephony/Phone;
    .local v0, "i":I
    :goto_0
    sget v4, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mNumPhones:I

    if-ge v0, v4, :cond_2

    .line 1518
    sget-object v4, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->sProxyPhones:[Lcom/android/internal/telephony/Phone;

    aget-object v2, v4, v0

    .line 1519
    .local v2, "phone":Lcom/android/internal/telephony/Phone;
    if-nez v2, :cond_1

    .line 1516
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1521
    :cond_1
    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getModemUuId()Ljava/lang/String;

    move-result-object v1

    .line 1522
    .local v1, "modemUuId":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Logical Modem id: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " phoneId: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->logv(Ljava/lang/String;)V

    .line 1523
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_0

    .line 1524
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    .line 1523
    if-nez v4, :cond_0

    .line 1528
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_0

    .line 1529
    move v3, v0

    .line 1530
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Primay Stack phone id: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " selected"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->logv(Ljava/lang/String;)V

    .line 1536
    .end local v1    # "modemUuId":Ljava/lang/String;
    .end local v2    # "phone":Lcom/android/internal/telephony/Phone;
    :cond_2
    const/4 v4, -0x1

    if-ne v3, v4, :cond_3

    .line 1537
    const-string/jumbo v4, "Returning default phone id"

    invoke-direct {p0, v4}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->logv(Ljava/lang/String;)V

    .line 1538
    const/4 v3, 0x0

    .line 1541
    :cond_3
    return v3
.end method

.method private getNetworkModeFromDB(I)I
    .locals 8
    .param p1, "phoneId"    # I

    .prologue
    const/4 v7, 0x0

    .line 753
    const/4 v0, 0x0

    .line 754
    .local v0, "mQtiSubscriptionController":Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;
    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->getInstance()Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;

    move-result-object v0

    .line 755
    .local v0, "mQtiSubscriptionController":Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;
    invoke-virtual {v0, p1}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->getSubId(I)[I

    move-result-object v3

    .line 759
    .local v3, "subId":[I
    if-eqz v3, :cond_0

    array-length v4, v3

    if-lez v4, :cond_0

    .line 760
    aget v4, v3, v7

    invoke-virtual {v0, v4}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->isActiveSubId(I)Z

    move-result v4

    .line 759
    if-eqz v4, :cond_0

    .line 761
    iget-object v4, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 762
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "preferred_network_mode"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget v6, v3, v7

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 763
    sget v6, Lcom/android/internal/telephony/Phone;->PREFERRED_NT_MODE:I

    .line 761
    invoke-static {v4, v5, v6}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 764
    .local v1, "networkMode":I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, " get sub based N/W mode, val["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "] = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->logv(Ljava/lang/String;)V

    .line 775
    :goto_0
    return v1

    .line 767
    .end local v1    # "networkMode":I
    :cond_0
    :try_start_0
    iget-object v4, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 768
    const-string/jumbo v5, "preferred_network_mode"

    .line 767
    invoke-static {v4, v5, p1}, Landroid/telephony/TelephonyManager;->getIntAtIndex(Landroid/content/ContentResolver;Ljava/lang/String;I)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 773
    .restart local v1    # "networkMode":I
    :goto_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, " get slot based N/W mode, val["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "] = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->logv(Ljava/lang/String;)V

    goto :goto_0

    .line 769
    .end local v1    # "networkMode":I
    :catch_0
    move-exception v2

    .line 770
    .local v2, "snfe":Landroid/provider/Settings$SettingNotFoundException;
    const-string/jumbo v4, "getPreferredNetworkMode: Could not find PREFERRED_NETWORK_MODE!!!"

    invoke-direct {p0, v4}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->loge(Ljava/lang/String;)V

    .line 771
    sget v1, Lcom/android/internal/telephony/Phone;->PREFERRED_NT_MODE:I

    .restart local v1    # "networkMode":I
    goto :goto_1
.end method

.method private getPhoneMatchImei()V
    .locals 0

    .prologue
    .line 1393
    return-void
.end method

.method private getPrimaryICCID()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1052
    const/4 v0, 0x0

    .line 1053
    .local v0, "iccid":Ljava/lang/String;
    const-string/jumbo v1, "persist.radio.ddssim.iccid"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1054
    .local v0, "iccid":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, " getPrimaryICCID,DDS_ICCId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->logd(Ljava/lang/String;)V

    .line 1055
    return-object v0
.end method

.method private getPrimaryNetworkType()I
    .locals 3

    .prologue
    .line 1070
    const-string/jumbo v1, "persist.radio.ddssim.rat"

    const/16 v2, 0x14

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 1071
    .local v0, "network_type":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, " getPrimaryNetworkType  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->logd(Ljava/lang/String;)V

    .line 1072
    return v0
.end method

.method private getPrimarySlot()I
    .locals 4

    .prologue
    .line 1037
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 1038
    const-string/jumbo v2, "config_current_primary_sub"

    const/4 v3, -0x1

    .line 1037
    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 1040
    .local v0, "slotId":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, " getPrimarySlot,CONFIG_CURRENT_PRIMARY_SUB="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->logd(Ljava/lang/String;)V

    .line 1042
    return v0
.end method

.method private getUiccProvisionStatus(I)I
    .locals 2
    .param p1, "slotId"    # I

    .prologue
    .line 1147
    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/ExtTelephonyServiceImpl;->getInstance()Lcom/qualcomm/qti/internal/telephony/ExtTelephonyServiceImpl;

    move-result-object v0

    .line 1148
    .local v0, "extTelService":Lcom/qualcomm/qti/internal/telephony/ExtTelephonyServiceImpl;
    if-eqz v0, :cond_0

    .line 1149
    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/ExtTelephonyServiceImpl;->getInstance()Lcom/qualcomm/qti/internal/telephony/ExtTelephonyServiceImpl;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/qualcomm/qti/internal/telephony/ExtTelephonyServiceImpl;->getCurrentUiccCardProvisioningStatus(I)I

    move-result v1

    return v1

    .line 1152
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method private handleAddSubInfoRecordforSelectMultiMode(ILjava/lang/String;)V
    .locals 10
    .param p1, "slotId"    # I
    .param p2, "iccId"    # Ljava/lang/String;

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 668
    const/4 v2, 0x0

    .line 671
    .local v2, "isAllSimInsert":Z
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "detect iccid: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "  slotId:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->logd(Ljava/lang/String;)V

    .line 672
    if-eqz p2, :cond_0

    .line 674
    invoke-direct {p0, p1, v8, p2}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->updateCurrentCardStatus(IILjava/lang/String;)V

    .line 675
    iget-object v3, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mCi:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v3, v3, p1

    iget-object v4, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mHandler:Landroid/os/Handler;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/16 v6, 0xe

    invoke-virtual {v4, v6, v5}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/android/internal/telephony/CommandsInterface;->getIccCardStatus(Landroid/os/Message;)V

    .line 676
    iget-object v3, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mCurrentCardStatus:[Lcom/qualcomm/qti/internal/telephony/CurrentCardStatus;

    aget-object v3, v3, p1

    iput-boolean v7, v3, Lcom/qualcomm/qti/internal/telephony/CurrentCardStatus;->isCardReady:Z

    .line 679
    :cond_0
    invoke-direct {p0}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->checkAllCardInsert()Z

    move-result v2

    .line 681
    .local v2, "isAllSimInsert":Z
    const-string/jumbo v3, "fasle"

    const-string/jumbo v4, "persist.radio.firstboot"

    invoke-static {v4, v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 683
    const-string/jumbo v3, "this time is first boot up"

    invoke-direct {p0, v3}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->logd(Ljava/lang/String;)V

    .line 684
    const-string/jumbo v3, "persist.radio.firstboot"

    const-string/jumbo v4, "fasle"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 685
    sget-object v3, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->sProxyPhones:[Lcom/android/internal/telephony/Phone;

    aget-object v3, v3, p1

    invoke-virtual {v3, v7}, Lcom/android/internal/telephony/Phone;->setRadioPower(Z)V

    .line 686
    sget-object v3, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->sProxyPhones:[Lcom/android/internal/telephony/Phone;

    rsub-int/lit8 v4, p1, 0x1

    aget-object v3, v3, v4

    invoke-virtual {v3, v7}, Lcom/android/internal/telephony/Phone;->setRadioPower(Z)V

    .line 688
    const-wide/16 v4, 0x3e8

    :try_start_0
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 693
    :goto_0
    iget-object v3, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 694
    const-string/jumbo v4, "airplane_mode_on"

    .line 693
    invoke-static {v3, v4, v7}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 695
    .local v0, "airplaneModeOn":I
    if-nez v0, :cond_1

    .line 696
    sget-object v3, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->sProxyPhones:[Lcom/android/internal/telephony/Phone;

    aget-object v3, v3, p1

    invoke-virtual {v3, v8}, Lcom/android/internal/telephony/Phone;->setRadioPower(Z)V

    .line 697
    sget-object v3, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->sProxyPhones:[Lcom/android/internal/telephony/Phone;

    rsub-int/lit8 v4, p1, 0x1

    aget-object v3, v3, v4

    invoke-virtual {v3, v8}, Lcom/android/internal/telephony/Phone;->setRadioPower(Z)V

    .line 666
    .end local v0    # "airplaneModeOn":I
    :cond_1
    return-void

    .line 689
    :catch_0
    move-exception v1

    .line 690
    .local v1, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Exception e = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->loge(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private handleSarEvet()V
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 1646
    const/4 v0, 0x0

    .line 1647
    .local v0, "apBand":I
    const/4 v2, 0x0

    .line 1648
    .local v2, "isWifiHot_2G":Z
    const/4 v4, 0x0

    .line 1649
    .local v4, "wifihot_action":I
    const/4 v1, 0x0

    .line 1651
    .local v1, "calling_action":I
    sget-boolean v5, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->isSAREanble:Z

    if-nez v5, :cond_0

    .line 1653
    return-void

    .line 1656
    :cond_0
    iget-boolean v5, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mPSensorNegative:Z

    if-eqz v5, :cond_1

    .line 1658
    const/4 v1, 0x0

    .line 1676
    :goto_0
    iget-boolean v5, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->isWifiHotOpen:Z

    if-eqz v5, :cond_6

    .line 1678
    iget-object v5, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v5}, Landroid/net/wifi/WifiManager;->getWifiApConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v5

    iput-object v5, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    .line 1679
    iget-object v5, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget v0, v5, Landroid/net/wifi/WifiConfiguration;->apBand:I

    .line 1680
    if-nez v0, :cond_4

    .line 1682
    const/4 v4, 0x1

    .line 1698
    :goto_1
    add-int v5, v4, v1

    iput v5, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->action:I

    .line 1700
    iget v5, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->action:I

    iget v6, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->oldAction:I

    if-ne v5, v6, :cond_7

    .line 1702
    const-string/jumbo v5, "SAR: no action change, return"

    invoke-direct {p0, v5}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->logd(Ljava/lang/String;)V

    .line 1703
    return-void

    .line 1662
    :cond_1
    iget-object v5, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v5}, Landroid/media/AudioManager;->getMode()I

    move-result v3

    .line 1663
    .local v3, "mode":I
    const/4 v5, 0x2

    if-eq v3, v5, :cond_2

    .line 1664
    const/4 v5, 0x3

    if-ne v3, v5, :cond_3

    .line 1668
    :cond_2
    const/4 v1, 0x3

    .line 1667
    goto :goto_0

    .line 1665
    :cond_3
    if-eq v3, v9, :cond_2

    .line 1666
    sget-boolean v5, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->isTestMode:Z

    if-nez v5, :cond_2

    .line 1672
    const/4 v1, 0x0

    goto :goto_0

    .line 1684
    .end local v3    # "mode":I
    :cond_4
    if-ne v0, v9, :cond_5

    .line 1686
    const/4 v4, 0x2

    goto :goto_1

    .line 1690
    :cond_5
    const/4 v4, 0x0

    goto :goto_1

    .line 1695
    :cond_6
    const/4 v4, 0x0

    goto :goto_1

    .line 1705
    :cond_7
    iget v5, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->action:I

    iput v5, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->oldAction:I

    .line 1706
    sget-object v5, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->sProxyPhones:[Lcom/android/internal/telephony/Phone;

    aget-object v5, v5, v8

    iget-object v6, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mSARActionTable:[[I

    iget v7, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->action:I

    aget-object v6, v6, v7

    aget v6, v6, v8

    iget-object v7, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mSARActionTable:[[I

    iget v8, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->action:I

    aget-object v7, v7, v8

    aget v7, v7, v9

    const/4 v8, 0x0

    invoke-virtual {v5, v6, v7, v8}, Lcom/android/internal/telephony/Phone;->setFactoryModeModemGPIO(IILandroid/os/Message;)V

    .line 1644
    return-void
.end method

.method private handleTimeOut()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 856
    invoke-virtual {p0}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->getPrevPrimaryPhoneId()I

    move-result v1

    .line 857
    .local v1, "phoneId":I
    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->getInstance()Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->getSubId(I)[I

    move-result-object v2

    .line 858
    .local v2, "subId":[I
    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->getInstance()Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;

    move-result-object v3

    aget v4, v2, v5

    invoke-virtual {v3, v4}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->isActiveSubId(I)Z

    move-result v0

    .line 859
    .local v0, "isSubActive":Z
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "handleTimeOut isSubActive: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "  phoneId "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->logd(Ljava/lang/String;)V

    .line 860
    if-eqz v0, :cond_0

    .line 862
    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->getInstance()Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;

    move-result-object v3

    aget v4, v2, v5

    invoke-virtual {v3, v4}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->setDefaultDataSubId(I)V

    .line 865
    :cond_0
    invoke-direct {p0}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->hasCdmaCardInsert()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 867
    invoke-direct {p0}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->setPreferredCdmaNetworkType()V

    .line 850
    :goto_0
    return-void

    .line 871
    :cond_1
    invoke-direct {p0}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->setPreferredGWNetworkType()V

    goto :goto_0
.end method

.method private hasCdmaCardInsert()Z
    .locals 4

    .prologue
    .line 967
    const/4 v0, 0x0

    .line 968
    .local v0, "cdmaCardInsert":Z
    const/4 v1, 0x0

    .line 969
    .local v1, "index":I
    const/4 v1, 0x0

    :goto_0
    sget v2, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mNumPhones:I

    if-ge v1, v2, :cond_0

    .line 971
    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mCurrentCardStatus:[Lcom/qualcomm/qti/internal/telephony/CurrentCardStatus;

    aget-object v2, v2, v1

    if-eqz v2, :cond_1

    .line 973
    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mCurrentCardStatus:[Lcom/qualcomm/qti/internal/telephony/CurrentCardStatus;

    aget-object v2, v2, v1

    iget-boolean v2, v2, Lcom/qualcomm/qti/internal/telephony/CurrentCardStatus;->isCDMACard:Z

    if-eqz v2, :cond_1

    .line 975
    const/4 v0, 0x1

    .line 979
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "hasCdmaCardInsert "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "  phoneId "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->logd(Ljava/lang/String;)V

    .line 980
    return v0

    .line 969
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private hasTwoCdmaCardInsert()Z
    .locals 4

    .prologue
    .line 984
    const/4 v1, 0x1

    .line 986
    .local v1, "twoCdmaCardInsert":Z
    const/4 v0, 0x0

    .end local v1    # "twoCdmaCardInsert":Z
    .local v0, "index":I
    :goto_0
    sget v2, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mNumPhones:I

    if-ge v0, v2, :cond_2

    .line 987
    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mCurrentCardStatus:[Lcom/qualcomm/qti/internal/telephony/CurrentCardStatus;

    aget-object v2, v2, v0

    if-eqz v2, :cond_1

    .line 988
    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mCurrentCardStatus:[Lcom/qualcomm/qti/internal/telephony/CurrentCardStatus;

    aget-object v2, v2, v0

    iget-boolean v1, v2, Lcom/qualcomm/qti/internal/telephony/CurrentCardStatus;->isCDMACard:Z

    .line 986
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 988
    :cond_0
    const/4 v1, 0x0

    .restart local v1    # "twoCdmaCardInsert":Z
    goto :goto_1

    .line 990
    .end local v1    # "twoCdmaCardInsert":Z
    :cond_1
    const/4 v1, 0x0

    .restart local v1    # "twoCdmaCardInsert":Z
    goto :goto_1

    .line 993
    .end local v1    # "twoCdmaCardInsert":Z
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "hasTwoCdmaCardInsert "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->logd(Ljava/lang/String;)V

    .line 994
    return v1
.end method

.method private informDdsToRil(I)V
    .locals 4
    .param p1, "ddsSubId"    # I

    .prologue
    .line 1632
    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->getInstance()Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->getPhoneId(I)I

    move-result v0

    .line 1633
    .local v0, "ddsPhoneId":I
    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mQtiRilInterface:Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;

    invoke-virtual {v2}, Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;->isServiceReady()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1634
    const-string/jumbo v2, "Oem hook service is not ready yet"

    invoke-direct {p0, v2}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->logd(Ljava/lang/String;)V

    .line 1635
    return-void

    .line 1638
    :cond_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    sget v2, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mNumPhones:I

    if-ge v1, v2, :cond_1

    .line 1639
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "InformDdsToRil rild= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", DDS="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->logd(Ljava/lang/String;)V

    .line 1640
    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mQtiRilInterface:Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;

    invoke-virtual {v2, v0, v1}, Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;->qcRilSendDDSInfo(II)V

    .line 1638
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1631
    :cond_1
    return-void
.end method

.method private isCdmaRat(II)Z
    .locals 3
    .param p1, "network_type"    # I
    .param p2, "phoneId"    # I

    .prologue
    .line 1250
    const/4 v0, 0x0

    .line 1251
    .local v0, "iscdmarat":Z
    const/4 v1, 0x5

    if-eq v1, p1, :cond_0

    .line 1252
    const/4 v1, 0x7

    if-ne v1, p1, :cond_2

    .line 1260
    :cond_0
    :goto_0
    const/4 v0, 0x1

    .line 1262
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "isCdmaRat  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "   phoneId "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->logd(Ljava/lang/String;)V

    .line 1263
    return v0

    .line 1253
    :cond_2
    const/16 v1, 0xa

    if-eq v1, p1, :cond_0

    .line 1254
    const/4 v1, 0x6

    if-eq v1, p1, :cond_0

    .line 1255
    const/16 v1, 0x8

    if-eq v1, p1, :cond_0

    .line 1256
    const/4 v1, 0x4

    if-eq v1, p1, :cond_0

    .line 1257
    const/16 v1, 0x15

    if-eq v1, p1, :cond_0

    .line 1258
    const/16 v1, 0x16

    if-ne v1, p1, :cond_1

    goto :goto_0
.end method

.method private isOnlyOneCardInsert()Z
    .locals 5

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1335
    const/4 v1, 0x0

    .line 1336
    .local v1, "onlyOneCard":Z
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget v4, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mNumPhones:I

    if-ge v0, v4, :cond_3

    .line 1338
    if-nez v1, :cond_0

    iget-object v4, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mCurrentCardStatus:[Lcom/qualcomm/qti/internal/telephony/CurrentCardStatus;

    aget-object v4, v4, v0

    iget v4, v4, Lcom/qualcomm/qti/internal/telephony/CurrentCardStatus;->cardStatus:I

    if-ne v4, v3, :cond_2

    .line 1339
    iget-object v4, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mCurrentCardStatus:[Lcom/qualcomm/qti/internal/telephony/CurrentCardStatus;

    aget-object v4, v4, v0

    iget-object v4, v4, Lcom/qualcomm/qti/internal/telephony/CurrentCardStatus;->iccId:Ljava/lang/String;

    if-eqz v4, :cond_1

    const/4 v1, 0x1

    .line 1336
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1338
    :cond_0
    const/4 v1, 0x1

    goto :goto_1

    .line 1339
    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    .line 1338
    :cond_2
    const/4 v1, 0x0

    goto :goto_1

    .line 1342
    :cond_3
    if-eqz v1, :cond_4

    invoke-direct {p0}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->checkAllCardInsert()Z

    move-result v4

    if-eqz v4, :cond_5

    :cond_4
    :goto_2
    return v2

    :cond_5
    move v2, v3

    goto :goto_2
.end method

.method private isRadioAvailable(I)Z
    .locals 1
    .param p1, "phoneId"    # I

    .prologue
    .line 790
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mCi:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v0, v0, p1

    invoke-interface {v0}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/CommandsInterface$RadioState;->isAvailable()Z

    move-result v0

    return v0
.end method

.method private isSubProvisioned(I)Z
    .locals 3
    .param p1, "phoneId"    # I

    .prologue
    .line 1159
    const/4 v0, 0x1

    .line 1161
    .local v0, "isSubIdUsable":Z
    if-eqz v0, :cond_0

    .line 1162
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isValidSlotId(I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1163
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, " Invalid phoneId "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->loge(Ljava/lang/String;)V

    .line 1164
    const/4 v0, 0x0

    .line 1172
    :cond_0
    :goto_0
    return v0

    .line 1166
    :cond_1
    invoke-direct {p0, p1}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->getUiccProvisionStatus(I)I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_2

    .line 1167
    const/4 v0, 0x0

    .line 1169
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "isSubProvisioned, state = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " phoneId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->logd(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private isTestCard()Z
    .locals 5

    .prologue
    const/4 v3, 0x1

    .line 1422
    const/4 v1, 0x0

    .line 1423
    .local v1, "isTestCard":Z
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    .line 1424
    .local v2, "tm":Landroid/telephony/TelephonyManager;
    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/telephony/TelephonyManager;->hasIccCard(I)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v2, v3}, Landroid/telephony/TelephonyManager;->hasIccCard(I)Z

    move-result v3

    :cond_0
    if-nez v3, :cond_1

    .line 1425
    return v1

    .line 1427
    :cond_1
    const/4 v0, 0x0

    .end local v1    # "isTestCard":Z
    .local v0, "i":I
    :goto_0
    if-nez v1, :cond_3

    sget v3, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mNumPhones:I

    if-ge v0, v3, :cond_3

    .line 1429
    sget-object v3, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->sProxyPhones:[Lcom/android/internal/telephony/Phone;

    aget-object v3, v3, v0

    invoke-virtual {v3}, Lcom/android/internal/telephony/Phone;->getIccRecords()Lcom/android/internal/telephony/uicc/IccRecords;

    move-result-object v3

    iput-object v3, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    .line 1430
    iget-object v3, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    if-eqz v3, :cond_2

    .line 1432
    iget-object v3, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    invoke-virtual {v3}, Lcom/android/internal/telephony/uicc/IccRecords;->is_test_card()Z

    move-result v1

    .line 1427
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1436
    :cond_3
    return v1
.end method

.method private isWifiTethered(Ljava/util/ArrayList;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p1, "active":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v5, 0x0

    .line 1406
    invoke-direct {p0}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->checkAndSetConnectivityInstance()V

    .line 1408
    iget-object v4, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mCm:Landroid/net/ConnectivityManager;

    invoke-virtual {v4}, Landroid/net/ConnectivityManager;->getTetherableWifiRegexs()[Ljava/lang/String;

    move-result-object v3

    .line 1409
    .local v3, "wifiRegexs":[Ljava/lang/String;
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "intf$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1410
    .local v0, "intf":Ljava/lang/String;
    array-length v6, v3

    move v4, v5

    :goto_0
    if-ge v4, v6, :cond_0

    aget-object v2, v3, v4

    .line 1411
    .local v2, "regex":Ljava/lang/String;
    invoke-virtual {v0, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 1412
    const/4 v4, 0x1

    return v4

    .line 1410
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1417
    .end local v0    # "intf":Ljava/lang/String;
    .end local v2    # "regex":Ljava/lang/String;
    :cond_2
    return v5
.end method

.method private logd(Ljava/lang/String;)V
    .locals 1
    .param p1, "string"    # Ljava/lang/String;

    .prologue
    .line 1616
    const-string/jumbo v0, "DdsCardSelectionController"

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1615
    return-void
.end method

.method private loge(Ljava/lang/String;)V
    .locals 1
    .param p1, "string"    # Ljava/lang/String;

    .prologue
    .line 1624
    const-string/jumbo v0, "DdsCardSelectionController"

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1623
    return-void
.end method

.method private logi(Ljava/lang/String;)V
    .locals 1
    .param p1, "string"    # Ljava/lang/String;

    .prologue
    .line 1620
    const-string/jumbo v0, "DdsCardSelectionController"

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1619
    return-void
.end method

.method private logv(Ljava/lang/String;)V
    .locals 0
    .param p1, "string"    # Ljava/lang/String;

    .prologue
    .line 1627
    return-void
.end method

.method public static make(Landroid/content/Context;Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;[Lcom/android/internal/telephony/CommandsInterface;[Lcom/android/internal/telephony/Phone;)Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "qRCC"    # Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;
    .param p2, "ci"    # [Lcom/android/internal/telephony/CommandsInterface;
    .param p3, "phoneProxy"    # [Lcom/android/internal/telephony/Phone;

    .prologue
    .line 231
    const-string/jumbo v0, "DdsCardSelectionController"

    const-string/jumbo v1, "make and getInstance"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    sget-object v0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->sInstance:Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;

    if-nez v0, :cond_0

    .line 233
    new-instance v0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;-><init>(Landroid/content/Context;Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;[Lcom/android/internal/telephony/CommandsInterface;[Lcom/android/internal/telephony/Phone;)V

    sput-object v0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->sInstance:Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;

    .line 237
    :goto_0
    sget-object v0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->sInstance:Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;

    return-object v0

    .line 235
    :cond_0
    const-string/jumbo v0, "DdsCardSelectionController"

    const-string/jumbo v1, "DdsCardSelectionController.make() should be called once"

    invoke-static {v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private notifyUiDdsChanaged(Z)V
    .locals 2
    .param p1, "dds_chanage"    # Z

    .prologue
    .line 1481
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "notifyUiDdsChanaged  dds_chanage "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->logd(Ljava/lang/String;)V

    .line 1478
    return-void
.end method

.method private oemSendSubscriptionSettings()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 1290
    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->getInstance()Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;

    move-result-object v5

    invoke-virtual {v5}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->getDefaultDataSubId()I

    move-result v0

    .line 1291
    .local v0, "ddsSubId":I
    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->getInstance()Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;

    move-result-object v5

    invoke-virtual {v5, v0}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->getPhoneId(I)I

    move-result v3

    .line 1293
    .local v3, "phoneId":I
    if-gez v3, :cond_0

    .line 1295
    const-string/jumbo v5, "phoneId is invalid,maybe SIM card plug out, return"

    invoke-direct {p0, v5}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->logd(Ljava/lang/String;)V

    .line 1296
    return-void

    .line 1298
    :cond_0
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->oemGetPhoneSwitcher()Lcom/android/internal/telephony/PhoneSwitcher;

    move-result-object v1

    check-cast v1, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;

    .line 1299
    .local v1, "mPhoneSwitcher":Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;
    if-eqz v1, :cond_1

    .line 1301
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "re-config dds info phoneId "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->logd(Ljava/lang/String;)V

    .line 1302
    invoke-virtual {v1, v3}, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->oemSendDdsSettingConfig(I)V

    .line 1305
    :cond_1
    sget-object v5, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->sProxyPhones:[Lcom/android/internal/telephony/Phone;

    aget-object v2, v5, v3

    .line 1306
    .local v2, "phone":Lcom/android/internal/telephony/Phone;
    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->getInstance()Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;

    move-result-object v5

    invoke-virtual {v5, v3}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->getSubId(I)[I

    move-result-object v4

    .line 1307
    .local v4, "subId":[I
    if-eqz v4, :cond_2

    array-length v5, v4

    if-lez v5, :cond_2

    .line 1308
    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->getInstance()Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;

    move-result-object v5

    aget v6, v4, v7

    invoke-virtual {v5, v6}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->isActiveSubId(I)Z

    move-result v5

    .line 1307
    if-eqz v5, :cond_2

    .line 1309
    iget-object v5, v2, Lcom/android/internal/telephony/Phone;->mDcTracker:Lcom/android/internal/telephony/dataconnection/DcTracker;

    .line 1310
    iget-object v6, v2, Lcom/android/internal/telephony/Phone;->mDcTracker:Lcom/android/internal/telephony/dataconnection/DcTracker;

    invoke-virtual {v6}, Lcom/android/internal/telephony/dataconnection/DcTracker;->getDataEnabled()Z

    move-result v6

    .line 1309
    invoke-virtual {v5, v6}, Lcom/android/internal/telephony/dataconnection/DcTracker;->setDataEnabled(Z)V

    .line 1312
    :cond_2
    sget-boolean v5, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->isCardPlugIn2Out:Z

    if-eqz v5, :cond_3

    .line 1313
    invoke-direct {p0}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->processCmccDemand()V

    .line 1288
    :cond_3
    return-void
.end method

.method private oemSetDefaultDataSubId(I)V
    .locals 5
    .param p1, "phoneId"    # I

    .prologue
    const/4 v4, 0x0

    .line 427
    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->getInstance()Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->getSubId(I)[I

    move-result-object v1

    .line 428
    .local v1, "subId":[I
    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->getInstance()Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;

    move-result-object v2

    aget v3, v1, v4

    invoke-virtual {v2, v3}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->isActiveSubId(I)Z

    move-result v0

    .line 429
    .local v0, "isSubActive":Z
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "oemSetDefaultDataSubId isSubActive: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "  phoneId "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->logd(Ljava/lang/String;)V

    .line 430
    if-eqz v0, :cond_0

    .line 432
    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->getInstance()Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;

    move-result-object v2

    aget v3, v1, v4

    invoke-virtual {v2, v3}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->setDefaultDataSubId(I)V

    .line 422
    :cond_0
    return-void
.end method

.method private onGetIccCardStatusDone(Landroid/os/AsyncResult;Ljava/lang/Integer;)V
    .locals 6
    .param p1, "ar"    # Landroid/os/AsyncResult;
    .param p2, "index"    # Ljava/lang/Integer;

    .prologue
    .line 805
    iget-object v4, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v4, :cond_0

    .line 806
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Error getting ICC status. RIL_REQUEST_GET_ICC_STATUS should never return an error:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 808
    iget-object v5, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 806
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->loge(Ljava/lang/String;)V

    .line 809
    return-void

    .line 812
    :cond_0
    iget-object v2, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, Lcom/android/internal/telephony/uicc/IccCardStatus;

    .line 814
    .local v2, "ics":Lcom/android/internal/telephony/uicc/IccCardStatus;
    const/4 v3, 0x0

    .line 815
    .local v3, "isCDMACard":Z
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, v2, Lcom/android/internal/telephony/uicc/IccCardStatus;->mApplications:[Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;

    array-length v5, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " applications"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->logd(Ljava/lang/String;)V

    .line 816
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v4, v2, Lcom/android/internal/telephony/uicc/IccCardStatus;->mApplications:[Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;

    array-length v4, v4

    if-ge v1, v4, :cond_3

    .line 817
    iget-object v4, v2, Lcom/android/internal/telephony/uicc/IccCardStatus;->mApplications:[Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;

    aget-object v4, v4, v1

    iget-object v0, v4, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->app_type:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    .line 819
    .local v0, "app_type":Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;
    sget-object v4, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;->APPTYPE_RUIM:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    if-eq v0, v4, :cond_1

    sget-object v4, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;->APPTYPE_CSIM:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    if-ne v0, v4, :cond_2

    .line 821
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "CDMA card insert app_type:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "  phoneId: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->logd(Ljava/lang/String;)V

    .line 822
    const/4 v3, 0x1

    .line 816
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 825
    .end local v0    # "app_type":Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;
    :cond_3
    iget-object v4, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mCurrentCardStatus:[Lcom/qualcomm/qti/internal/telephony/CurrentCardStatus;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v5

    aget-object v4, v4, v5

    iput-boolean v3, v4, Lcom/qualcomm/qti/internal/telephony/CurrentCardStatus;->isCDMACard:Z

    .line 827
    iget-object v4, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mCurrentCardStatus:[Lcom/qualcomm/qti/internal/telephony/CurrentCardStatus;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v5

    aget-object v4, v4, v5

    iget-boolean v4, v4, Lcom/qualcomm/qti/internal/telephony/CurrentCardStatus;->isCardReady:Z

    if-nez v4, :cond_4

    invoke-direct {p0}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->checkAllCardInsert()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 832
    :cond_4
    invoke-direct {p0}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->checkAllCardIsReady()Z

    move-result v4

    if-nez v4, :cond_6

    .line 834
    const/16 v4, 0xbb8

    invoke-direct {p0, v4}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->sendSetNetWorkTypeMsg(I)V

    .line 835
    return-void

    .line 829
    :cond_5
    const/16 v4, 0x1770

    invoke-direct {p0, v4}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->sendSetNetWorkTypeMsg(I)V

    .line 830
    return-void

    .line 838
    :cond_6
    const/4 v4, 0x0

    invoke-direct {p0, v4}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->sendSetNetWorkTypeMsg(I)V

    .line 804
    return-void
.end method

.method private processCmccDemand()V
    .locals 10

    .prologue
    const/4 v8, 0x0

    .line 1441
    const/4 v3, 0x0

    .line 1442
    .local v3, "hasCmccCardInsert":Z
    const-string/jumbo v7, "persist.radio.bksim.iccid"

    const/4 v9, 0x0

    invoke-static {v7, v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1443
    .local v0, "bk_iccid":Ljava/lang/String;
    invoke-direct {p0}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->getPrimaryICCID()Ljava/lang/String;

    move-result-object v2

    .line 1444
    .local v2, "ddsIccid":Ljava/lang/String;
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    const/4 v5, 0x0

    .line 1446
    .local v5, "isDdschanaged":Z
    :goto_0
    invoke-direct {p0, v2}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->backupDdsIccid(Ljava/lang/String;)V

    .line 1448
    invoke-direct {p0}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->checkAllCardInsert()Z

    move-result v7

    if-eqz v7, :cond_1

    sget-boolean v7, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->isCMCCVersion:Z

    :goto_1
    if-nez v7, :cond_2

    .line 1450
    return-void

    .line 1444
    .end local v5    # "isDdschanaged":Z
    :cond_0
    const/4 v5, 0x1

    .restart local v5    # "isDdschanaged":Z
    goto :goto_0

    :cond_1
    move v7, v8

    .line 1448
    goto :goto_1

    .line 1453
    :cond_2
    sput-boolean v8, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->isCardPlugIn2Out:Z

    .line 1455
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_2
    sget v7, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mNumPhones:I

    if-ge v4, v7, :cond_5

    .line 1457
    sget-object v7, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mIccidList:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .line 1458
    .local v6, "it":Ljava/util/Iterator;
    :cond_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 1459
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1460
    .local v1, "cmcciccid":Ljava/lang/String;
    iget-object v7, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mCurrentCardStatus:[Lcom/qualcomm/qti/internal/telephony/CurrentCardStatus;

    aget-object v7, v7, v4

    iget-object v7, v7, Lcom/qualcomm/qti/internal/telephony/CurrentCardStatus;->iccId:Ljava/lang/String;

    invoke-virtual {v7, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 1462
    const/4 v3, 0x1

    .line 1455
    .end local v1    # "cmcciccid":Ljava/lang/String;
    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 1467
    .end local v6    # "it":Ljava/util/Iterator;
    :cond_5
    if-nez v3, :cond_6

    .line 1468
    return-void

    .line 1470
    :cond_6
    invoke-direct {p0, v5}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->notifyUiDdsChanaged(Z)V

    .line 1439
    return-void
.end method

.method private processMbnActivatedDone()V
    .locals 4

    .prologue
    .line 1386
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget v2, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mNumPhones:I

    if-ge v0, v2, :cond_0

    .line 1387
    invoke-direct {p0, v0}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->getNetworkModeFromDB(I)I

    move-result v1

    .line 1389
    .local v1, "type":I
    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mCi:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v2, v2, v0

    const/4 v3, 0x0

    invoke-interface {v2, v1, v3}, Lcom/android/internal/telephony/CommandsInterface;->setPreferredNetworkType(ILandroid/os/Message;)V

    .line 1386
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1383
    .end local v1    # "type":I
    :cond_0
    return-void
.end method

.method private processSimStatusChange(I)V
    .locals 6
    .param p1, "phoneId"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 1347
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mCurrentCardStatus:[Lcom/qualcomm/qti/internal/telephony/CurrentCardStatus;

    aget-object v1, v1, p1

    iput-boolean v4, v1, Lcom/qualcomm/qti/internal/telephony/CurrentCardStatus;->isCardReady:Z

    .line 1348
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mCurrentCardStatus:[Lcom/qualcomm/qti/internal/telephony/CurrentCardStatus;

    aget-object v1, v1, p1

    iput v4, v1, Lcom/qualcomm/qti/internal/telephony/CurrentCardStatus;->cardStatus:I

    .line 1349
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mCurrentCardStatus:[Lcom/qualcomm/qti/internal/telephony/CurrentCardStatus;

    aget-object v1, v1, p1

    iget-object v1, v1, Lcom/qualcomm/qti/internal/telephony/CurrentCardStatus;->iccId:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 1351
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mCurrentCardStatus:[Lcom/qualcomm/qti/internal/telephony/CurrentCardStatus;

    aget-object v1, v1, p1

    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mQtiRilInterface:Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;

    invoke-virtual {v2, p1}, Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;->getUiccIccId(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/qualcomm/qti/internal/telephony/CurrentCardStatus;->iccId:Ljava/lang/String;

    .line 1355
    :cond_0
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mCurrentCardStatus:[Lcom/qualcomm/qti/internal/telephony/CurrentCardStatus;

    rsub-int/lit8 v2, p1, 0x1

    aget-object v1, v1, v2

    iget-object v1, v1, Lcom/qualcomm/qti/internal/telephony/CurrentCardStatus;->iccId:Ljava/lang/String;

    if-nez v1, :cond_1

    .line 1357
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mCurrentCardStatus:[Lcom/qualcomm/qti/internal/telephony/CurrentCardStatus;

    rsub-int/lit8 v2, p1, 0x1

    aget-object v1, v1, v2

    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mQtiRilInterface:Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;

    rsub-int/lit8 v3, p1, 0x1

    invoke-virtual {v2, v3}, Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;->getUiccIccId(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/qualcomm/qti/internal/telephony/CurrentCardStatus;->iccId:Ljava/lang/String;

    .line 1358
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mCurrentCardStatus:[Lcom/qualcomm/qti/internal/telephony/CurrentCardStatus;

    rsub-int/lit8 v2, p1, 0x1

    aget-object v1, v1, v2

    iget-object v1, v1, Lcom/qualcomm/qti/internal/telephony/CurrentCardStatus;->iccId:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 1360
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mCurrentCardStatus:[Lcom/qualcomm/qti/internal/telephony/CurrentCardStatus;

    rsub-int/lit8 v2, p1, 0x1

    aget-object v1, v1, v2

    iput v4, v1, Lcom/qualcomm/qti/internal/telephony/CurrentCardStatus;->cardStatus:I

    .line 1364
    :cond_1
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mCi:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v1, v1, p1

    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mHandler:Landroid/os/Handler;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/16 v4, 0xe

    invoke-virtual {v2, v4, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->getIccCardStatus(Landroid/os/Message;)V

    .line 1366
    invoke-direct {p0}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->isOnlyOneCardInsert()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1368
    invoke-direct {p0, p1}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->oemSetDefaultDataSubId(I)V

    .line 1369
    invoke-direct {p0, p1}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->savePrimarySlot(I)V

    .line 1374
    :cond_2
    sget-object v1, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->sProxyPhones:[Lcom/android/internal/telephony/Phone;

    aget-object v0, v1, p1

    .line 1375
    .local v0, "phone":Lcom/android/internal/telephony/Phone;
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getIccRecords()Lcom/android/internal/telephony/uicc/IccRecords;

    move-result-object v1

    iput-object v1, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    .line 1376
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    if-eqz v1, :cond_3

    .line 1378
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x13

    invoke-virtual {v1, v2, v3, v5}, Lcom/android/internal/telephony/uicc/IccRecords;->registerForTestCard(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1345
    :cond_3
    return-void
.end method

.method private processSoftSimIccidChange()V
    .locals 8

    .prologue
    .line 1578
    const/4 v2, 0x0

    .line 1579
    .local v2, "isSoftSimIn":Z
    const/4 v1, 0x0

    .line 1581
    .local v1, "iccid":Ljava/lang/String;
    const/4 v0, 0x0

    .end local v1    # "iccid":Ljava/lang/String;
    .local v0, "i":I
    :goto_0
    sget v3, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mNumPhones:I

    if-ge v0, v3, :cond_0

    .line 1583
    iget-object v3, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0, v3}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->getVirtualIccid(ILandroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 1584
    .local v1, "iccid":Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 1586
    const/4 v2, 0x1

    .line 1590
    .end local v1    # "iccid":Ljava/lang/String;
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "is_softsim insert "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->logd(Ljava/lang/String;)V

    .line 1592
    if-eqz v2, :cond_2

    return-void

    .line 1581
    .restart local v1    # "iccid":Ljava/lang/String;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1594
    .end local v1    # "iccid":Ljava/lang/String;
    :cond_2
    iget-object v3, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mHandler:Landroid/os/Handler;

    const/16 v5, 0x1c

    invoke-virtual {v4, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    .line 1595
    const-wide/16 v6, 0xfa0

    .line 1594
    invoke-virtual {v3, v4, v6, v7}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1576
    return-void
.end method

.method private processTMOCardAsdds()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    .line 1486
    invoke-virtual {p0}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->getPrevPrimaryPhoneId()I

    move-result v0

    .line 1487
    .local v0, "ddsPhoneId":I
    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->getInstance()Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;

    move-result-object v7

    invoke-virtual {v7, v0}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->getSubId(I)[I

    move-result-object v5

    .line 1488
    .local v5, "subId":[I
    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->getInstance()Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;

    move-result-object v7

    aget v8, v5, v9

    invoke-virtual {v7, v8}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->isActiveSubId(I)Z

    move-result v2

    .line 1489
    .local v2, "isSubActive":Z
    invoke-direct {p0}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->getMainStackPhoneId()I

    move-result v4

    .line 1490
    .local v4, "mainStackPhoneId":I
    iget-object v7, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mCurrentCardStatus:[Lcom/qualcomm/qti/internal/telephony/CurrentCardStatus;

    aget-object v7, v7, v0

    iget-object v1, v7, Lcom/qualcomm/qti/internal/telephony/CurrentCardStatus;->iccId:Ljava/lang/String;

    .line 1492
    .local v1, "iccid":Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "processTMOCardAsDDS mstackphoneId "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " iccid "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " ddsphoneId "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->logd(Ljava/lang/String;)V

    .line 1493
    if-eq v4, v0, :cond_2

    if-eqz v2, :cond_2

    .line 1496
    if-eqz v1, :cond_1

    .line 1498
    sget-object v7, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mTMOIccidList:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 1499
    .local v3, "it":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 1500
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 1501
    .local v6, "tmpiccid":Ljava/lang/String;
    invoke-virtual {v1, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 1503
    aget v7, v5, v9

    invoke-direct {p0, v7}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->doFlexMapping(I)V

    .line 1484
    .end local v3    # "it":Ljava/util/Iterator;
    .end local v6    # "tmpiccid":Ljava/lang/String;
    :cond_1
    return-void

    .line 1494
    :cond_2
    return-void
.end method

.method private registerPsensor()V
    .locals 4

    .prologue
    .line 307
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 309
    const-string/jumbo v1, "display_ctrl_psensor_positive"

    .line 308
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 310
    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mObserverPsensor:Landroid/database/ContentObserver;

    const/4 v3, 0x0

    .line 307
    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 306
    return-void
.end method

.method private savePrefNetworkInDb(II)V
    .locals 6
    .param p1, "phoneId"    # I
    .param p2, "networkMode"    # I

    .prologue
    const/4 v5, 0x0

    .line 739
    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->getInstance()Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->getSubId(I)[I

    move-result-object v1

    .line 740
    .local v1, "subId":[I
    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->getInstance()Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;

    move-result-object v2

    aget v3, v1, v5

    invoke-virtual {v2, v3}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->isActiveSubId(I)Z

    move-result v0

    .line 741
    .local v0, "isSubActive":Z
    if-eqz v0, :cond_0

    .line 743
    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 744
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "preferred_network_mode"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget v4, v1, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 743
    invoke-static {v2, v3, p2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 747
    :cond_0
    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 748
    const-string/jumbo v3, "preferred_network_mode"

    .line 747
    invoke-static {v2, v3, p1, p2}, Landroid/telephony/TelephonyManager;->putIntAtIndex(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 738
    return-void
.end method

.method private savePrimaryICCID(I)V
    .locals 2
    .param p1, "phoneId"    # I

    .prologue
    .line 1060
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, " savePrimaryICCID ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mCurrentCardStatus:[Lcom/qualcomm/qti/internal/telephony/CurrentCardStatus;

    aget-object v1, v1, p1

    iget-object v1, v1, Lcom/qualcomm/qti/internal/telephony/CurrentCardStatus;->iccId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->logd(Ljava/lang/String;)V

    .line 1061
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mCurrentCardStatus:[Lcom/qualcomm/qti/internal/telephony/CurrentCardStatus;

    aget-object v0, v0, p1

    iget-object v0, v0, Lcom/qualcomm/qti/internal/telephony/CurrentCardStatus;->iccId:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 1063
    const-string/jumbo v0, "persist.radio.ddssim.iccid"

    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mCurrentCardStatus:[Lcom/qualcomm/qti/internal/telephony/CurrentCardStatus;

    aget-object v1, v1, p1

    iget-object v1, v1, Lcom/qualcomm/qti/internal/telephony/CurrentCardStatus;->iccId:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1058
    :cond_0
    return-void
.end method

.method private savePrimarySlot(I)V
    .locals 2
    .param p1, "phoneId"    # I

    .prologue
    .line 1046
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1047
    const-string/jumbo v1, "config_current_primary_sub"

    .line 1046
    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1044
    return-void
.end method

.method private sendSetNetWorkTypeMsg(I)V
    .locals 4
    .param p1, "delay"    # I

    .prologue
    const/16 v3, 0xf

    .line 844
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sendSetNetWorkTypeMsg delay:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->logd(Ljava/lang/String;)V

    .line 845
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 846
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 847
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mHandler:Landroid/os/Handler;

    int-to-long v2, p1

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 842
    return-void
.end method

.method private setPreferredCdmaNetworkType()V
    .locals 9

    .prologue
    .line 878
    const/4 v0, 0x0

    .line 879
    .local v0, "cdmaPhoneId":I
    const/4 v2, 0x1

    .line 880
    .local v2, "gwPhoneId":I
    const/16 v1, 0x16

    .line 881
    .local v1, "cdma_network_type":I
    const/16 v3, 0x14

    .line 882
    .local v3, "gw_network_type":I
    const/4 v5, -0x1

    .line 883
    .local v5, "primaryPhoneId":I
    const/4 v4, 0x0

    .line 885
    .local v4, "primaryNetworkType":I
    invoke-virtual {p0}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->getPrevPrimaryPhoneId()I

    move-result v5

    .line 886
    invoke-direct {p0}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->getPrimaryNetworkType()I

    move-result v4

    .line 889
    iget-object v7, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mCurrentCardStatus:[Lcom/qualcomm/qti/internal/telephony/CurrentCardStatus;

    aget-object v7, v7, v5

    iget-boolean v7, v7, Lcom/qualcomm/qti/internal/telephony/CurrentCardStatus;->isCDMACard:Z

    if-eqz v7, :cond_1

    .line 891
    const-string/jumbo v7, "setPreferredCdmaNetworkType cdma card on dds"

    invoke-direct {p0, v7}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->logd(Ljava/lang/String;)V

    .line 892
    move v0, v5

    .line 893
    rsub-int/lit8 v2, v5, 0x1

    .line 895
    invoke-direct {p0, v4, v5}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->isCdmaRat(II)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 897
    move v1, v4

    .line 903
    :goto_0
    invoke-virtual {p0, v1}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->setPrimaryNetworkType(I)V

    .line 923
    :goto_1
    invoke-direct {p0, v5}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->savePrimarySlot(I)V

    .line 924
    invoke-direct {p0, v5}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->savePrimaryICCID(I)V

    .line 926
    invoke-direct {p0, v0, v1}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->savePrefNetworkInDb(II)V

    .line 927
    invoke-direct {p0, v2, v3}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->savePrefNetworkInDb(II)V

    .line 928
    iget-object v7, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mHandler:Landroid/os/Handler;

    const/16 v8, 0x10

    invoke-virtual {v7, v8, v0, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v6

    .line 929
    .local v6, "response":Landroid/os/Message;
    sget-object v7, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mQtiRadioCapabilityController:Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;

    invoke-virtual {v7, v2, v3, v6}, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->setPreferredNetworkType(IILandroid/os/Message;)V

    .line 876
    return-void

    .line 901
    .end local v6    # "response":Landroid/os/Message;
    :cond_0
    invoke-direct {p0, v4}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->switchGW2CDMARat(I)I

    move-result v1

    goto :goto_0

    .line 907
    :cond_1
    const-string/jumbo v7, "setPreferredCdmaNetworkType GW card on dds"

    invoke-direct {p0, v7}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->logd(Ljava/lang/String;)V

    .line 908
    move v2, v5

    .line 909
    rsub-int/lit8 v0, v5, 0x1

    .line 911
    invoke-direct {p0, v4, v5}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->isCdmaRat(II)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 913
    invoke-direct {p0, v4}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->switchCDMA2GWRat(I)I

    move-result v3

    .line 920
    :goto_2
    invoke-virtual {p0, v3}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->setPrimaryNetworkType(I)V

    goto :goto_1

    .line 917
    :cond_2
    move v3, v4

    goto :goto_2
.end method

.method private setPreferredGWNetworkType()V
    .locals 8

    .prologue
    .line 934
    const/4 v0, 0x0

    .line 935
    .local v0, "gwOtherPhoneId":I
    const/16 v1, 0x14

    .line 936
    .local v1, "gw_dds_network_type":I
    const/16 v2, 0x14

    .line 937
    .local v2, "gw_non_network_type":I
    const/4 v4, -0x1

    .line 938
    .local v4, "primaryPhoneId":I
    const/4 v3, 0x0

    .line 940
    .local v3, "primaryNetworkType":I
    const-string/jumbo v6, "setPreferredGWNetworkType all card is GW"

    invoke-direct {p0, v6}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->logd(Ljava/lang/String;)V

    .line 941
    invoke-virtual {p0}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->getPrevPrimaryPhoneId()I

    move-result v4

    .line 942
    invoke-direct {p0}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->getPrimaryNetworkType()I

    move-result v3

    .line 944
    invoke-direct {p0, v3, v4}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->isCdmaRat(II)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 946
    invoke-direct {p0, v3}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->switchCDMA2GWRat(I)I

    move-result v1

    .line 953
    :goto_0
    rsub-int/lit8 v0, v4, 0x1

    .line 955
    invoke-direct {p0, v4}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->savePrimarySlot(I)V

    .line 956
    invoke-direct {p0, v4}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->savePrimaryICCID(I)V

    .line 957
    invoke-virtual {p0, v1}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->setPrimaryNetworkType(I)V

    .line 959
    invoke-direct {p0, v4, v1}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->savePrefNetworkInDb(II)V

    .line 960
    invoke-direct {p0, v0, v2}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->savePrefNetworkInDb(II)V

    .line 961
    iget-object v6, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mHandler:Landroid/os/Handler;

    const/16 v7, 0x10

    invoke-virtual {v6, v7, v4, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v5

    .line 962
    .local v5, "response":Landroid/os/Message;
    sget-object v6, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mQtiRadioCapabilityController:Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;

    invoke-virtual {v6, v0, v2, v5}, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->setPreferredNetworkType(IILandroid/os/Message;)V

    .line 932
    return-void

    .line 950
    .end local v5    # "response":Landroid/os/Message;
    :cond_0
    move v1, v3

    goto :goto_0
.end method

.method private subscriptionIdToPhoneAccountHandle(I)Landroid/telecom/PhoneAccountHandle;
    .locals 5
    .param p1, "subId"    # I

    .prologue
    .line 1274
    iget-object v4, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v3

    .line 1276
    .local v3, "telephonyManager":Landroid/telephony/TelephonyManager;
    iget-object v4, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mTelecomManager:Landroid/telecom/TelecomManager;

    invoke-virtual {v4}, Landroid/telecom/TelecomManager;->getCallCapablePhoneAccounts()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v2

    .line 1278
    .local v2, "phoneAccounts":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/telecom/PhoneAccountHandle;>;"
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1279
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/PhoneAccountHandle;

    .line 1280
    .local v1, "phoneAccountHandle":Landroid/telecom/PhoneAccountHandle;
    iget-object v4, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mTelecomManager:Landroid/telecom/TelecomManager;

    invoke-virtual {v4, v1}, Landroid/telecom/TelecomManager;->getPhoneAccount(Landroid/telecom/PhoneAccountHandle;)Landroid/telecom/PhoneAccount;

    move-result-object v0

    .line 1281
    .local v0, "phoneAccount":Landroid/telecom/PhoneAccount;
    invoke-virtual {v3, v0}, Landroid/telephony/TelephonyManager;->getSubIdForPhoneAccount(Landroid/telecom/PhoneAccount;)I

    move-result v4

    if-ne p1, v4, :cond_0

    .line 1282
    return-object v1

    .line 1285
    .end local v0    # "phoneAccount":Landroid/telecom/PhoneAccount;
    .end local v1    # "phoneAccountHandle":Landroid/telecom/PhoneAccountHandle;
    :cond_1
    const/4 v4, 0x0

    return-object v4
.end method

.method private switchAll2EURat(I)I
    .locals 3
    .param p1, "network_type"    # I

    .prologue
    .line 1226
    const/16 v0, 0x9

    .line 1227
    .local v0, "type":I
    sparse-switch p1, :sswitch_data_0

    .line 1241
    const/16 v0, 0x9

    .line 1244
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "switchAll2EURat  rat "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->logd(Ljava/lang/String;)V

    .line 1245
    return v0

    .line 1231
    :sswitch_0
    const/16 v0, 0x9

    .line 1232
    goto :goto_0

    .line 1235
    :sswitch_1
    const/4 v0, 0x3

    .line 1236
    goto :goto_0

    .line 1238
    :sswitch_2
    const/4 v0, 0x1

    .line 1239
    goto :goto_0

    .line 1227
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_2
        0x3 -> :sswitch_1
        0x9 -> :sswitch_0
        0x12 -> :sswitch_1
        0x14 -> :sswitch_0
    .end sparse-switch
.end method

.method private switchCDMA2GWRat(I)I
    .locals 3
    .param p1, "network_type"    # I

    .prologue
    .line 1201
    const/16 v0, 0x14

    .line 1202
    .local v0, "type":I
    sparse-switch p1, :sswitch_data_0

    .line 1217
    const/16 v0, 0x14

    .line 1220
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "switchCDMA2GWRat  rat "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->logd(Ljava/lang/String;)V

    .line 1221
    return v0

    .line 1207
    :sswitch_0
    const/16 v0, 0x14

    .line 1208
    goto :goto_0

    .line 1211
    :sswitch_1
    const/16 v0, 0x12

    .line 1212
    goto :goto_0

    .line 1214
    :sswitch_2
    const/4 v0, 0x1

    .line 1215
    goto :goto_0

    .line 1202
    nop

    :sswitch_data_0
    .sparse-switch
        0x5 -> :sswitch_2
        0x7 -> :sswitch_1
        0x8 -> :sswitch_0
        0xa -> :sswitch_0
        0x15 -> :sswitch_1
        0x16 -> :sswitch_0
    .end sparse-switch
.end method

.method private switchGW2CDMARat(I)I
    .locals 3
    .param p1, "network_type"    # I

    .prologue
    .line 1178
    const/16 v0, 0xa

    .line 1179
    .local v0, "type":I
    sparse-switch p1, :sswitch_data_0

    .line 1192
    const/16 v0, 0xa

    .line 1195
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "switchGW2CDMARat  rat "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->logd(Ljava/lang/String;)V

    .line 1196
    return v0

    .line 1183
    :sswitch_0
    const/16 v0, 0x16

    .line 1184
    goto :goto_0

    .line 1189
    :sswitch_1
    const/16 v0, 0x15

    .line 1190
    goto :goto_0

    .line 1179
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1
        0x1 -> :sswitch_1
        0x3 -> :sswitch_1
        0x9 -> :sswitch_0
        0x12 -> :sswitch_1
        0x14 -> :sswitch_0
    .end sparse-switch
.end method

.method private updateCurrentCardStatus(IILjava/lang/String;)V
    .locals 2
    .param p1, "slotId"    # I
    .param p2, "status"    # I
    .param p3, "iccid"    # Ljava/lang/String;

    .prologue
    .line 781
    :try_start_0
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mCurrentCardStatus:[Lcom/qualcomm/qti/internal/telephony/CurrentCardStatus;

    aget-object v1, v1, p1

    iput p2, v1, Lcom/qualcomm/qti/internal/telephony/CurrentCardStatus;->cardStatus:I

    .line 782
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mCurrentCardStatus:[Lcom/qualcomm/qti/internal/telephony/CurrentCardStatus;

    aget-object v1, v1, p1

    iput-object p3, v1, Lcom/qualcomm/qti/internal/telephony/CurrentCardStatus;->iccId:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 778
    :goto_0
    return-void

    .line 783
    :catch_0
    move-exception v0

    .line 784
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public getPrevPrimaryPhoneId()I
    .locals 7

    .prologue
    .line 1086
    const/4 v3, 0x0

    .line 1088
    .local v3, "phoneId":I
    const/4 v2, 0x0

    .line 1090
    .local v2, "isSubActive":Z
    invoke-direct {p0}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->getPrimaryICCID()Ljava/lang/String;

    move-result-object v0

    .line 1092
    .local v0, "iccid":Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 1094
    const/4 v1, 0x0

    .local v1, "index":I
    :goto_0
    sget v5, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mNumPhones:I

    if-ge v1, v5, :cond_1

    .line 1096
    iget-object v5, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mCurrentCardStatus:[Lcom/qualcomm/qti/internal/telephony/CurrentCardStatus;

    aget-object v5, v5, v1

    iget-object v5, v5, Lcom/qualcomm/qti/internal/telephony/CurrentCardStatus;->iccId:Ljava/lang/String;

    if-eqz v5, :cond_0

    .line 1098
    iget-object v5, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mCurrentCardStatus:[Lcom/qualcomm/qti/internal/telephony/CurrentCardStatus;

    aget-object v5, v5, v1

    iget-object v5, v5, Lcom/qualcomm/qti/internal/telephony/CurrentCardStatus;->iccId:Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    .line 1096
    if-eqz v5, :cond_0

    .line 1100
    return v1

    .line 1094
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1105
    .end local v1    # "index":I
    :cond_1
    invoke-direct {p0}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->getPrimarySlot()I

    move-result v3

    .line 1106
    const/4 v5, -0x1

    if-eq v3, v5, :cond_2

    .line 1108
    iget-object v5, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mCurrentCardStatus:[Lcom/qualcomm/qti/internal/telephony/CurrentCardStatus;

    aget-object v5, v5, v3

    iget-object v5, v5, Lcom/qualcomm/qti/internal/telephony/CurrentCardStatus;->iccId:Ljava/lang/String;

    if-eqz v5, :cond_2

    .line 1110
    invoke-direct {p0, v3}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->isSubProvisioned(I)Z

    move-result v5

    .line 1106
    if-eqz v5, :cond_2

    .line 1113
    return v3

    .line 1117
    :cond_2
    const/4 v3, 0x0

    .line 1118
    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->getInstance()Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;

    move-result-object v5

    invoke-virtual {v5, v3}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->getSubId(I)[I

    move-result-object v4

    .line 1120
    .local v4, "subId":[I
    if-eqz v4, :cond_3

    iget-object v5, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mCurrentCardStatus:[Lcom/qualcomm/qti/internal/telephony/CurrentCardStatus;

    aget-object v5, v5, v3

    iget-object v5, v5, Lcom/qualcomm/qti/internal/telephony/CurrentCardStatus;->iccId:Ljava/lang/String;

    if-eqz v5, :cond_3

    .line 1122
    invoke-direct {p0, v3}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->isSubProvisioned(I)Z

    move-result v5

    .line 1120
    if-eqz v5, :cond_3

    .line 1125
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, " getPrevPrimaryPhoneId 1 phoneId "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->logd(Ljava/lang/String;)V

    .line 1126
    return v3

    .line 1129
    :cond_3
    const/4 v3, 0x1

    .line 1130
    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->getInstance()Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;

    move-result-object v5

    invoke-virtual {v5, v3}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->getSubId(I)[I

    move-result-object v4

    .line 1132
    if-eqz v4, :cond_4

    iget-object v5, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mCurrentCardStatus:[Lcom/qualcomm/qti/internal/telephony/CurrentCardStatus;

    aget-object v5, v5, v3

    iget-object v5, v5, Lcom/qualcomm/qti/internal/telephony/CurrentCardStatus;->iccId:Ljava/lang/String;

    if-eqz v5, :cond_4

    .line 1134
    invoke-direct {p0, v3}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->isSubProvisioned(I)Z

    move-result v5

    .line 1132
    if-eqz v5, :cond_4

    .line 1137
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, " getPrevPrimaryPhoneId 2 phoneId "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->logd(Ljava/lang/String;)V

    .line 1138
    return v3

    .line 1141
    :cond_4
    const-string/jumbo v5, " getPrevPrimaryPhoneId  default phoneId 0 "

    invoke-direct {p0, v5}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->logd(Ljava/lang/String;)V

    .line 1142
    const/4 v5, 0x0

    return v5
.end method

.method public getVirtualIccid(ILandroid/content/Context;)Ljava/lang/String;
    .locals 5
    .param p1, "slot"    # I
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 1600
    const/4 v1, 0x0

    .line 1601
    .local v1, "virtual_iccid":Ljava/lang/String;
    if-eqz p2, :cond_0

    .line 1603
    :try_start_0
    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 1604
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "softsim_iccid"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1603
    invoke-static {v2, v3}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1611
    .end local v1    # "virtual_iccid":Ljava/lang/String;
    :cond_0
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "softsim_iccid = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "  slot=  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->logd(Ljava/lang/String;)V

    .line 1612
    return-object v1

    .line 1607
    .restart local v1    # "virtual_iccid":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 1608
    .local v0, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "exc: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->loge(Ljava/lang/String;)V

    goto :goto_0
.end method

.method handleEX(Landroid/os/AsyncResult;I)V
    .locals 8
    .param p1, "ar"    # Landroid/os/AsyncResult;
    .param p2, "phoneId"    # I

    .prologue
    .line 1711
    const/4 v1, 0x0

    .line 1712
    .local v1, "ex":Lcom/android/internal/telephony/CommandException;
    const/16 v3, 0x9

    .line 1713
    .local v3, "rat":I
    iget-object v4, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v4, :cond_0

    .line 1716
    :try_start_0
    iget-object v1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .end local v1    # "ex":Lcom/android/internal/telephony/CommandException;
    check-cast v1, Lcom/android/internal/telephony/CommandException;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1721
    .local v1, "ex":Lcom/android/internal/telephony/CommandException;
    invoke-direct {p0, p2}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->getNetworkModeFromDB(I)I

    move-result v3

    .line 1722
    iget-object v4, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mHandler:Landroid/os/Handler;

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/16 v6, 0x1e

    invoke-virtual {v4, v6, p2, v3, v5}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 1723
    .local v2, "msg":Landroid/os/Message;
    iget-object v4, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mHandler:Landroid/os/Handler;

    const-wide/16 v6, 0x1388

    invoke-virtual {v4, v2, v6, v7}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1709
    .end local v1    # "ex":Lcom/android/internal/telephony/CommandException;
    .end local v2    # "msg":Landroid/os/Message;
    :cond_0
    return-void

    .line 1717
    :catch_0
    move-exception v0

    .line 1718
    .local v0, "e":Ljava/lang/Exception;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Exception e = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->loge(Ljava/lang/String;)V

    .line 1719
    return-void
.end method

.method public handleSimAbsentforSelectMultiMode(I)V
    .locals 7
    .param p1, "slotId"    # I

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 710
    const/4 v1, 0x0

    .line 711
    .local v1, "maxNumRafBit":I
    const/4 v0, -0x1

    .line 712
    .local v0, "mainStackPhoneId":I
    const/4 v2, 0x0

    .line 714
    .local v2, "numRafSupported":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "card absent phoneId: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->logd(Ljava/lang/String;)V

    .line 716
    sget-object v3, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->sProxyPhones:[Lcom/android/internal/telephony/Phone;

    aget-object v3, v3, p1

    invoke-virtual {v3}, Lcom/android/internal/telephony/Phone;->getIccRecords()Lcom/android/internal/telephony/uicc/IccRecords;

    move-result-object v3

    iput-object v3, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    .line 718
    iget-object v3, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mCurrentCardStatus:[Lcom/qualcomm/qti/internal/telephony/CurrentCardStatus;

    aget-object v3, v3, p1

    iget-object v3, v3, Lcom/qualcomm/qti/internal/telephony/CurrentCardStatus;->iccId:Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 720
    iget-object v3, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    if-eqz v3, :cond_0

    .line 722
    iget-object v3, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    iget-object v4, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/uicc/IccRecords;->unregisterForTestCard(Landroid/os/Handler;)V

    .line 725
    :cond_0
    invoke-direct {p0, p1, v6, v5}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->updateCurrentCardStatus(IILjava/lang/String;)V

    .line 726
    iget-object v3, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mCurrentCardStatus:[Lcom/qualcomm/qti/internal/telephony/CurrentCardStatus;

    aget-object v3, v3, p1

    iput-boolean v6, v3, Lcom/qualcomm/qti/internal/telephony/CurrentCardStatus;->isCardReady:Z

    .line 727
    iget-object v3, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mCurrentCardStatus:[Lcom/qualcomm/qti/internal/telephony/CurrentCardStatus;

    aget-object v3, v3, p1

    iput-boolean v6, v3, Lcom/qualcomm/qti/internal/telephony/CurrentCardStatus;->isCDMACard:Z

    .line 728
    iget-object v3, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mCurrentCardStatus:[Lcom/qualcomm/qti/internal/telephony/CurrentCardStatus;

    rsub-int/lit8 v4, p1, 0x1

    aget-object v3, v3, v4

    iget-object v3, v3, Lcom/qualcomm/qti/internal/telephony/CurrentCardStatus;->iccId:Ljava/lang/String;

    if-nez v3, :cond_1

    .line 730
    iget-object v3, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const-string/jumbo v4, "oem.ctaSwitch.support"

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v3

    .line 728
    if-eqz v3, :cond_1

    .line 732
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "card absent phoneId: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->logd(Ljava/lang/String;)V

    .line 733
    invoke-direct {p0}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->getMainStackPhoneId()I

    move-result v0

    .line 734
    iget-object v3, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mCi:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v3, v3, v0

    const/16 v4, 0x8

    invoke-interface {v3, v4, v5}, Lcom/android/internal/telephony/CommandsInterface;->setPreferredNetworkType(ILandroid/os/Message;)V

    .line 707
    :cond_1
    return-void
.end method

.method public oemDdsSwitch(IZ)V
    .locals 6
    .param p1, "phoneId"    # I
    .param p2, "autoSwitch"    # Z

    .prologue
    const/4 v5, 0x0

    .line 1001
    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->getInstance()Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->getSubId(I)[I

    move-result-object v2

    .line 1003
    .local v2, "subId":[I
    if-nez v2, :cond_0

    .line 1005
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "oemDdsSwitch subId is null  phoneId "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->logd(Ljava/lang/String;)V

    .line 1006
    return-void

    .line 1008
    :cond_0
    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->getInstance()Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;

    move-result-object v3

    aget v4, v2, v5

    invoke-virtual {v3, v4}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->isActiveSubId(I)Z

    move-result v0

    .line 1010
    .local v0, "isSubActive":Z
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "oemDdsSwitch isSubActive: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "  phoneId "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->logd(Ljava/lang/String;)V

    .line 1012
    if-eqz v0, :cond_3

    .line 1014
    invoke-direct {p0, p1}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->savePrimaryICCID(I)V

    .line 1015
    invoke-direct {p0, p1}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->savePrimarySlot(I)V

    .line 1016
    invoke-direct {p0, p1}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->getNetworkModeFromDB(I)I

    move-result v1

    .line 1017
    .local v1, "primaryNetWork":I
    invoke-virtual {p0, v1}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->setPrimaryNetworkType(I)V

    .line 1018
    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->getInstance()Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;

    move-result-object v3

    aget v4, v2, v5

    invoke-virtual {v3, v4}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->setDefaultDataSubId(I)V

    .line 1019
    if-eqz p2, :cond_1

    .line 1021
    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->getInstance()Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;

    move-result-object v3

    aget v4, v2, v5

    invoke-virtual {v3, v4}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->setDefaultSmsSubId(I)V

    .line 1022
    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->getInstance()Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;

    move-result-object v3

    aget v4, v2, v5

    invoke-virtual {v3, v4}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->setDefaultVoiceSubId(I)V

    .line 1023
    aget v3, v2, v5

    invoke-virtual {p0, v3}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->setConfigOfChangeDefaultVoiceSub(I)V

    .line 1026
    :cond_1
    invoke-direct {p0}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->hasTwoCdmaCardInsert()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1028
    invoke-direct {p0}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->setPreferredCdmaNetworkType()V

    .line 1030
    :cond_2
    iget-object v3, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mCurrentCardStatus:[Lcom/qualcomm/qti/internal/telephony/CurrentCardStatus;

    aget-object v3, v3, p1

    iget-object v3, v3, Lcom/qualcomm/qti/internal/telephony/CurrentCardStatus;->iccId:Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->backupDdsIccid(Ljava/lang/String;)V

    .line 1031
    invoke-direct {p0}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->oemSendSubscriptionSettings()V

    .line 998
    .end local v1    # "primaryNetWork":I
    :cond_3
    return-void
.end method

.method public sendAddSubInfoRecordforSelectMultiMode(ILjava/lang/String;)V
    .locals 4
    .param p1, "slotId"    # I
    .param p2, "iccId"    # Ljava/lang/String;

    .prologue
    .line 663
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mHandler:Landroid/os/Handler;

    const/16 v2, 0xa

    const/4 v3, -0x1

    invoke-virtual {v1, v2, p1, v3, p2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 661
    return-void
.end method

.method public sendSimAbsentforSelectMultiMode(I)V
    .locals 4
    .param p1, "slotId"    # I

    .prologue
    .line 704
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mHandler:Landroid/os/Handler;

    const/16 v2, 0xb

    const/4 v3, -0x1

    invoke-virtual {v1, v2, p1, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 702
    return-void
.end method

.method public setConfigOfChangeDefaultVoiceSub(I)V
    .locals 2
    .param p1, "subId"    # I

    .prologue
    .line 1269
    invoke-direct {p0, p1}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->subscriptionIdToPhoneAccountHandle(I)Landroid/telecom/PhoneAccountHandle;

    move-result-object v0

    .line 1270
    .local v0, "phoneAccountHandle":Landroid/telecom/PhoneAccountHandle;
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->mTelecomManager:Landroid/telecom/TelecomManager;

    invoke-virtual {v1, v0}, Landroid/telecom/TelecomManager;->setUserSelectedOutgoingPhoneAccount(Landroid/telecom/PhoneAccountHandle;)V

    .line 1267
    return-void
.end method

.method public setPrimaryNetworkType(I)V
    .locals 2
    .param p1, "network_type"    # I

    .prologue
    .line 1078
    const-string/jumbo v0, "persist.radio.ddssim.rat"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1079
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, " setPrimaryNetworkType ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->logd(Ljava/lang/String;)V

    .line 1076
    return-void
.end method
