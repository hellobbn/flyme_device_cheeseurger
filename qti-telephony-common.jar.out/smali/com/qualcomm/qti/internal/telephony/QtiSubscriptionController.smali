.class public Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;
.super Lcom/android/internal/telephony/SubscriptionController;
.source "QtiSubscriptionController.java"


# static fields
.field private static final ACTION_SUBSCRIPTION_RECORD_ADDED:Ljava/lang/String; = "org.codeaurora.intent.action.SUBSCRIPTION_INFO_RECORD_ADDED"

.field private static final APM_SIM_NOT_PWDN_PROPERTY:Ljava/lang/String; = "persist.radio.apm_sim_not_pwdn"

.field private static final DUMMY_SUB_ID_BASE:I = 0x7ffffffb

.field static final LOG_TAG:Ljava/lang/String; = "QtiSubscriptionController"

.field private static final NOT_PROVISIONED:I = 0x0

.field private static final PROVISIONED:I = 0x1

.field private static final SETTING_USER_PREF_DATA_SUB:Ljava/lang/String; = "user_preferred_data_sub"

.field private static sCi:[Lcom/android/internal/telephony/CommandsInterface;

.field private static sNumPhones:I


# instance fields
.field final SYS_PROPERTY_PHONE_ACCOUNT_SMS:Ljava/lang/String;

.field private mAddSubscriptionRecordRegistrants:Landroid/os/RegistrantList;

.field private mTelecomManager:Landroid/telecom/TelecomManager;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 65
    const/4 v0, 0x0

    sput-object v0, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->sCi:[Lcom/android/internal/telephony/CommandsInterface;

    .line 62
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "c"    # Landroid/content/Context;

    .prologue
    .line 115
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SubscriptionController;-><init>(Landroid/content/Context;)V

    .line 80
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->mAddSubscriptionRecordRegistrants:Landroid/os/RegistrantList;

    .line 91
    const-string/jumbo v0, "persist.radio.sms_account"

    iput-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->SYS_PROPERTY_PHONE_ACCOUNT_SMS:Ljava/lang/String;

    .line 116
    const-string/jumbo v0, " init by Context"

    invoke-direct {p0, v0}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->logd(Ljava/lang/String;)V

    .line 118
    const/4 v0, 0x0

    sput v0, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->mDefaultPhoneId:I

    .line 119
    const v0, 0x7ffffffb

    sput v0, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->mDefaultFallbackSubId:I

    .line 120
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/telecom/TelecomManager;->from(Landroid/content/Context;)Landroid/telecom/TelecomManager;

    move-result-object v0

    iput-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->mTelecomManager:Landroid/telecom/TelecomManager;

    .line 121
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v0

    iput-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 114
    return-void
.end method

.method private clearVoiceSubId()V
    .locals 3

    .prologue
    .line 126
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    .line 125
    invoke-virtual {p0, v1}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->getActiveSubscriptionInfoList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 127
    .local v0, "records":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "[clearVoiceSubId] records: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->logdl(Ljava/lang/String;)V

    .line 128
    invoke-virtual {p0}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->getDefaultVoiceSubId()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->shouldDefaultBeCleared(Ljava/util/List;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 129
    const-string/jumbo v1, "[clearVoiceSubId] clear voice sub id"

    invoke-virtual {p0, v1}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->logdl(Ljava/lang/String;)V

    .line 130
    const v1, 0x7ffffffb

    invoke-virtual {p0, v1}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->setDefaultVoiceSubId(I)V

    .line 124
    :cond_0
    return-void
.end method

.method public static getInstance()Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;
    .locals 2

    .prologue
    .line 107
    sget-object v0, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->sInstance:Lcom/android/internal/telephony/SubscriptionController;

    if-nez v0, :cond_0

    .line 108
    const-string/jumbo v0, "QtiSubscriptionController"

    const-string/jumbo v1, "getInstance null"

    invoke-static {v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    :cond_0
    sget-object v0, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->sInstance:Lcom/android/internal/telephony/SubscriptionController;

    check-cast v0, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;

    return-object v0
.end method

.method private getPhoneIdFromDummySubId(I)I
    .locals 1
    .param p1, "subId"    # I

    .prologue
    .line 180
    const v0, 0x7ffffffb

    sub-int v0, p1, v0

    return v0
.end method

.method private getUiccProvisionStatus(I)I
    .locals 2
    .param p1, "slotId"    # I

    .prologue
    .line 540
    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->getInstance()Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;

    move-result-object v0

    .line 541
    .local v0, "uiccCardProvisioner":Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;
    if-eqz v0, :cond_0

    .line 542
    invoke-virtual {v0, p1}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->getCurrentUiccCardProvisioningStatus(I)I

    move-result v1

    return v1

    .line 544
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method private getUserPrefDataSubIdFromDB()I
    .locals 3

    .prologue
    .line 641
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 642
    const-string/jumbo v1, "user_preferred_data_sub"

    const/4 v2, -0x1

    .line 641
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private handleDataPreference(I)V
    .locals 9
    .param p1, "nextActiveSubId"    # I

    .prologue
    .line 507
    invoke-direct {p0}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->getUserPrefDataSubIdFromDB()I

    move-result v5

    .line 508
    .local v5, "userPrefDataSubId":I
    invoke-virtual {p0}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->getDefaultDataSubId()I

    move-result v0

    .line 511
    .local v0, "currentDataSubId":I
    iget-object v7, p0, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->getActiveSubscriptionInfoList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    .line 512
    .local v4, "subInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    if-nez v4, :cond_0

    .line 513
    return-void

    .line 515
    :cond_0
    const/4 v6, 0x0

    .line 516
    .local v6, "userPrefSubValid":Z
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "subInfo$iterator":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/SubscriptionInfo;

    .line 517
    .local v2, "subInfo":Landroid/telephony/SubscriptionInfo;
    invoke-virtual {v2}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v7

    if-ne v7, v5, :cond_1

    .line 518
    const/4 v6, 0x1

    goto :goto_0

    .line 521
    .end local v2    # "subInfo":Landroid/telephony/SubscriptionInfo;
    :cond_2
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "havePrefSub = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " user pref subId = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 522
    const-string/jumbo v8, " current dds "

    .line 521
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 523
    const-string/jumbo v8, " next active subId "

    .line 521
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->logd(Ljava/lang/String;)V

    .line 526
    if-eqz v6, :cond_4

    invoke-direct {p0, v5}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->isSubProvisioned(I)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 527
    if-eq v0, v5, :cond_4

    .line 528
    invoke-virtual {p0, v5}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->setDefaultDataSubId(I)V

    .line 535
    :cond_3
    :goto_1
    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->getInstance()Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;

    move-result-object v1

    .line 536
    .local v1, "radioCapController":Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;
    const/4 v7, 0x0

    invoke-virtual {v1, v7}, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->setDdsIfRequired(Z)V

    .line 506
    return-void

    .line 529
    .end local v1    # "radioCapController":Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;
    :cond_4
    invoke-direct {p0, v0}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->isSubProvisioned(I)Z

    move-result v7

    if-nez v7, :cond_3

    .line 530
    invoke-virtual {p0, p1}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->setDefaultDataSubId(I)V

    goto :goto_1
.end method

.method public static init(Landroid/content/Context;[Lcom/android/internal/telephony/CommandsInterface;)Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;
    .locals 4
    .param p0, "c"    # Landroid/content/Context;
    .param p1, "ci"    # [Lcom/android/internal/telephony/CommandsInterface;

    .prologue
    .line 94
    const-class v1, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;

    monitor-enter v1

    .line 95
    :try_start_0
    sget-object v0, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->sInstance:Lcom/android/internal/telephony/SubscriptionController;

    if-nez v0, :cond_0

    .line 96
    new-instance v0, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;

    invoke-direct {v0, p0}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->sInstance:Lcom/android/internal/telephony/SubscriptionController;

    .line 97
    sput-object p1, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->sCi:[Lcom/android/internal/telephony/CommandsInterface;

    .line 98
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v0

    sput v0, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->sNumPhones:I

    .line 102
    :goto_0
    sget-object v0, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->sInstance:Lcom/android/internal/telephony/SubscriptionController;

    check-cast v0, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 100
    :cond_0
    :try_start_1
    const-string/jumbo v0, "QtiSubscriptionController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "init() called multiple times!  sInstance = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->sInstance:Lcom/android/internal/telephony/SubscriptionController;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 94
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private isNonSimAccountFound()Z
    .locals 5

    .prologue
    .line 610
    iget-object v3, p0, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->mTelecomManager:Landroid/telecom/TelecomManager;

    invoke-virtual {v3}, Landroid/telecom/TelecomManager;->getCallCapablePhoneAccounts()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v2

    .line 612
    .local v2, "phoneAccounts":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/telecom/PhoneAccountHandle;>;"
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 613
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/PhoneAccountHandle;

    .line 614
    .local v1, "phoneAccountHandle":Landroid/telecom/PhoneAccountHandle;
    iget-object v3, p0, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->mTelecomManager:Landroid/telecom/TelecomManager;

    invoke-virtual {v3, v1}, Landroid/telecom/TelecomManager;->getPhoneAccount(Landroid/telecom/PhoneAccountHandle;)Landroid/telecom/PhoneAccount;

    move-result-object v0

    .line 615
    .local v0, "phoneAccount":Landroid/telecom/PhoneAccount;
    iget-object v3, p0, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v3, v0}, Landroid/telephony/TelephonyManager;->getSubIdForPhoneAccount(Landroid/telecom/PhoneAccount;)I

    move-result v3

    .line 616
    const/4 v4, -0x1

    .line 615
    if-ne v3, v4, :cond_0

    .line 617
    const-string/jumbo v3, "Other than SIM account found. "

    invoke-direct {p0, v3}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->logi(Ljava/lang/String;)V

    .line 618
    const/4 v3, 0x1

    return v3

    .line 621
    .end local v0    # "phoneAccount":Landroid/telecom/PhoneAccount;
    .end local v1    # "phoneAccountHandle":Landroid/telecom/PhoneAccountHandle;
    :cond_1
    const-string/jumbo v3, "Other than SIM account not found "

    invoke-direct {p0, v3}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->logi(Ljava/lang/String;)V

    .line 622
    const/4 v3, 0x0

    return v3
.end method

.method private isRadioAvailableOnAllSubs()Z
    .locals 2

    .prologue
    .line 317
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget v1, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->sNumPhones:I

    if-ge v0, v1, :cond_2

    .line 318
    sget-object v1, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->sCi:[Lcom/android/internal/telephony/CommandsInterface;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->sCi:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v1, v1, v0

    invoke-interface {v1}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/CommandsInterface$RadioState;->isAvailable()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 317
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 318
    :cond_1
    const/4 v1, 0x0

    return v1

    .line 320
    :cond_2
    const/4 v1, 0x1

    return v1
.end method

.method private isShuttingDown()Z
    .locals 2

    .prologue
    .line 324
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget v1, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->sNumPhones:I

    if-ge v0, v1, :cond_1

    .line 325
    sget-object v1, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->sPhones:[Lcom/android/internal/telephony/Phone;

    aget-object v1, v1, v0

    if-eqz v1, :cond_0

    sget-object v1, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->sPhones:[Lcom/android/internal/telephony/Phone;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->isShuttingDown()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    return v1

    .line 324
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 327
    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method private isSubProvisioned(I)Z
    .locals 4
    .param p1, "subId"    # I

    .prologue
    .line 551
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isUsableSubIdValue(I)Z

    move-result v0

    .line 553
    .local v0, "isSubIdUsable":Z
    if-eqz v0, :cond_1

    .line 554
    invoke-virtual {p0, p1}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->getSlotId(I)I

    move-result v1

    .line 555
    .local v1, "slotId":I
    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->isValidSlotId(I)Z

    move-result v2

    if-eqz v2, :cond_0

    const v2, 0x7ffffffb

    if-lt p1, v2, :cond_2

    .line 556
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, " Invalid slotId "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " or subId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->loge(Ljava/lang/String;)V

    .line 557
    const/4 v0, 0x0

    .line 565
    .end local v0    # "isSubIdUsable":Z
    .end local v1    # "slotId":I
    :cond_1
    :goto_0
    return v0

    .line 559
    .restart local v0    # "isSubIdUsable":Z
    .restart local v1    # "slotId":I
    :cond_2
    invoke-direct {p0, v1}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->getUiccProvisionStatus(I)I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_3

    .line 560
    const/4 v0, 0x0

    .line 562
    .end local v0    # "isSubIdUsable":Z
    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isSubProvisioned, state = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " subId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->loge(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private logd(Ljava/lang/String;)V
    .locals 1
    .param p1, "string"    # Ljava/lang/String;

    .prologue
    .line 646
    const-string/jumbo v0, "QtiSubscriptionController"

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 645
    return-void
.end method

.method private loge(Ljava/lang/String;)V
    .locals 1
    .param p1, "string"    # Ljava/lang/String;

    .prologue
    .line 654
    const-string/jumbo v0, "QtiSubscriptionController"

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 653
    return-void
.end method

.method private logi(Ljava/lang/String;)V
    .locals 1
    .param p1, "string"    # Ljava/lang/String;

    .prologue
    .line 650
    const-string/jumbo v0, "QtiSubscriptionController"

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 649
    return-void
.end method

.method private subscriptionIdToPhoneAccountHandle(I)Landroid/telecom/PhoneAccountHandle;
    .locals 4
    .param p1, "subId"    # I

    .prologue
    .line 627
    iget-object v3, p0, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->mTelecomManager:Landroid/telecom/TelecomManager;

    invoke-virtual {v3}, Landroid/telecom/TelecomManager;->getCallCapablePhoneAccounts()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v2

    .line 629
    .local v2, "phoneAccounts":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/telecom/PhoneAccountHandle;>;"
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 630
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/PhoneAccountHandle;

    .line 631
    .local v1, "phoneAccountHandle":Landroid/telecom/PhoneAccountHandle;
    iget-object v3, p0, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->mTelecomManager:Landroid/telecom/TelecomManager;

    invoke-virtual {v3, v1}, Landroid/telecom/TelecomManager;->getPhoneAccount(Landroid/telecom/PhoneAccountHandle;)Landroid/telecom/PhoneAccount;

    move-result-object v0

    .line 632
    .local v0, "phoneAccount":Landroid/telecom/PhoneAccount;
    iget-object v3, p0, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v3, v0}, Landroid/telephony/TelephonyManager;->getSubIdForPhoneAccount(Landroid/telecom/PhoneAccount;)I

    move-result v3

    if-ne p1, v3, :cond_0

    .line 633
    return-object v1

    .line 637
    .end local v0    # "phoneAccount":Landroid/telecom/PhoneAccount;
    .end local v1    # "phoneAccountHandle":Landroid/telecom/PhoneAccountHandle;
    :cond_1
    const/4 v3, 0x0

    return-object v3
.end method


# virtual methods
.method public addSubInfoRecord(Ljava/lang/String;I)I
    .locals 8
    .param p1, "iccId"    # Ljava/lang/String;
    .param p2, "slotId"    # I

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 223
    invoke-super {p0, p1, p2}, Lcom/android/internal/telephony/SubscriptionController;->addSubInfoRecord(Ljava/lang/String;I)I

    move-result v1

    .line 225
    .local v1, "retVal":I
    invoke-virtual {p0, p2}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->getSubId(I)[I

    move-result-object v2

    .line 226
    .local v2, "subId":[I
    if-eqz v2, :cond_0

    array-length v3, v2

    if-lez v3, :cond_0

    .line 228
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "addSubInfoRecord: broadcast intent subId["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "] = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget v4, v2, v6

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->logd(Ljava/lang/String;)V

    .line 229
    iget-object v3, p0, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->mAddSubscriptionRecordRegistrants:Landroid/os/RegistrantList;

    .line 230
    new-instance v4, Landroid/os/AsyncResult;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-direct {v4, v7, v5, v7}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 229
    invoke-virtual {v3, v4}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 231
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v3, "org.codeaurora.intent.action.SUBSCRIPTION_INFO_RECORD_ADDED"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 232
    .local v0, "intent":Landroid/content/Intent;
    aget v3, v2, v6

    invoke-static {v0, p2, v3}, Landroid/telephony/SubscriptionManager;->putPhoneIdAndSubIdExtra(Landroid/content/Intent;II)V

    .line 233
    iget-object v3, p0, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 235
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    return v1
.end method

.method public clearDefaultsForInactiveSubIds()V
    .locals 5

    .prologue
    .line 262
    const-string/jumbo v3, "clearDefaultsForInactiveSubIds"

    invoke-virtual {p0, v3}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->enforceModifyPhoneState(Ljava/lang/String;)V

    .line 265
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 268
    .local v0, "identity":J
    :try_start_0
    iget-object v3, p0, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v3

    .line 267
    invoke-virtual {p0, v3}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->getActiveSubscriptionInfoList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 269
    .local v2, "records":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "[clearDefaultsForInactiveSubIds] records: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->logdl(Ljava/lang/String;)V

    .line 270
    invoke-virtual {p0}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->getDefaultDataSubId()I

    move-result v3

    invoke-virtual {p0, v2, v3}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->shouldDefaultBeCleared(Ljava/util/List;I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 271
    const-string/jumbo v3, "[clearDefaultsForInactiveSubIds] clearing default data sub id"

    invoke-direct {p0, v3}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->logd(Ljava/lang/String;)V

    .line 272
    const/4 v3, -0x1

    invoke-virtual {p0, v3}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->setDefaultDataSubId(I)V

    .line 274
    :cond_0
    invoke-virtual {p0}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->getDefaultSmsSubId()I

    move-result v3

    invoke-virtual {p0, v2, v3}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->shouldDefaultBeCleared(Ljava/util/List;I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 275
    const-string/jumbo v3, "[clearDefaultsForInactiveSubIds] clearing default sms sub id"

    invoke-virtual {p0, v3}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->logdl(Ljava/lang/String;)V

    .line 276
    const/4 v3, -0x1

    invoke-virtual {p0, v3}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->setDefaultSmsSubId(I)V

    .line 278
    :cond_1
    invoke-virtual {p0}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->getDefaultVoiceSubId()I

    move-result v3

    invoke-virtual {p0, v2, v3}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->shouldDefaultBeCleared(Ljava/util/List;I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 279
    const-string/jumbo v3, "[clearDefaultsForInactiveSubIds] clearing default voice sub id"

    invoke-virtual {p0, v3}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->logdl(Ljava/lang/String;)V

    .line 280
    const v3, 0x7ffffffb

    invoke-virtual {p0, v3}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->setDefaultVoiceSubId(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 283
    :cond_2
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 261
    return-void

    .line 282
    .end local v2    # "records":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    :catchall_0
    move-exception v3

    .line 283
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 282
    throw v3
.end method

.method protected getDummySubIds(I)[I
    .locals 4
    .param p1, "slotIdx"    # I

    .prologue
    .line 186
    invoke-virtual {p0}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->getActiveSubInfoCountMax()I

    move-result v2

    .line 187
    .local v2, "numSubs":I
    if-lez v2, :cond_1

    .line 188
    new-array v0, v2, [I

    .line 189
    .local v0, "dummyValues":[I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 190
    const v3, 0x7ffffffb

    add-int/2addr v3, p1

    aput v3, v0, v1

    .line 189
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 196
    :cond_0
    return-object v0

    .line 198
    .end local v0    # "dummyValues":[I
    .end local v1    # "i":I
    :cond_1
    const/4 v3, 0x0

    return-object v3
.end method

.method public getPhoneId(I)I
    .locals 2
    .param p1, "subId"    # I

    .prologue
    .line 158
    const v0, 0x7fffffff

    if-ne p1, v0, :cond_0

    .line 159
    invoke-virtual {p0}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->getDefaultSubId()I

    move-result p1

    .line 160
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "[getPhoneId] asked for default subId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->logdl(Ljava/lang/String;)V

    .line 163
    :cond_0
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 165
    const-string/jumbo v0, "[getPhoneId]- invalid subId return=-1"

    invoke-virtual {p0, v0}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->logdl(Ljava/lang/String;)V

    .line 168
    const/4 v0, -0x1

    return v0

    .line 171
    :cond_1
    const v0, 0x7ffffffb

    if-lt p1, v0, :cond_2

    .line 172
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "getPhoneId, received dummy subId "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->logd(Ljava/lang/String;)V

    .line 173
    invoke-direct {p0, p1}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->getPhoneIdFromDummySubId(I)I

    move-result v0

    return v0

    .line 176
    :cond_2
    invoke-super {p0, p1}, Lcom/android/internal/telephony/SubscriptionController;->getPhoneId(I)I

    move-result v0

    return v0
.end method

.method public getSlotId(I)I
    .locals 2
    .param p1, "subId"    # I

    .prologue
    .line 138
    const v0, 0x7fffffff

    if-ne p1, v0, :cond_0

    .line 139
    invoke-virtual {p0}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->getDefaultSubId()I

    move-result p1

    .line 141
    :cond_0
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 142
    const-string/jumbo v0, "[getSlotId]- subId invalid"

    invoke-direct {p0, v0}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->logd(Ljava/lang/String;)V

    .line 143
    const/4 v0, -0x1

    return v0

    .line 146
    :cond_1
    const v0, 0x7ffffffb

    if-lt p1, v0, :cond_2

    .line 147
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "getPhoneId, received dummy subId "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->logd(Ljava/lang/String;)V

    .line 148
    invoke-direct {p0, p1}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->getPhoneIdFromDummySubId(I)I

    move-result v0

    return v0

    .line 150
    :cond_2
    invoke-super {p0, p1}, Lcom/android/internal/telephony/SubscriptionController;->getSlotId(I)I

    move-result v0

    return v0
.end method

.method public isRadioInValidState()Z
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 331
    const-string/jumbo v2, "persist.radio.apm_sim_not_pwdn"

    invoke-static {v2, v4}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v5, :cond_1

    const/4 v1, 0x1

    .line 332
    .local v1, "isApmSimNotPwrDown":Z
    :goto_0
    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 333
    const-string/jumbo v3, "airplane_mode_on"

    .line 332
    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 336
    .local v0, "isAPMOn":I
    if-ne v0, v5, :cond_0

    if-eqz v1, :cond_2

    .line 343
    :cond_0
    invoke-direct {p0}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->isRadioAvailableOnAllSubs()Z

    move-result v2

    if-nez v2, :cond_3

    .line 344
    const-string/jumbo v2, " isRadioInValidState, radio not available"

    invoke-direct {p0, v2}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->logd(Ljava/lang/String;)V

    .line 345
    return v4

    .line 331
    .end local v0    # "isAPMOn":I
    .end local v1    # "isApmSimNotPwrDown":Z
    :cond_1
    const/4 v1, 0x0

    .restart local v1    # "isApmSimNotPwrDown":Z
    goto :goto_0

    .line 337
    .restart local v0    # "isAPMOn":I
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isRadioInValidState, isApmSimNotPwrDown = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 338
    const-string/jumbo v3, ", isAPMOn:"

    .line 337
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->logd(Ljava/lang/String;)V

    .line 339
    return v4

    .line 349
    :cond_3
    invoke-direct {p0}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->isShuttingDown()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 350
    const-string/jumbo v2, " isRadioInValidState: device shutdown in progress "

    invoke-direct {p0, v2}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->logd(Ljava/lang/String;)V

    .line 351
    return v4

    .line 353
    :cond_4
    return v5
.end method

.method public isSMSPromptEnabled()Z
    .locals 5

    .prologue
    .line 570
    const/4 v0, 0x0

    .line 571
    .local v0, "prompt":Z
    const/4 v2, 0x0

    .line 573
    .local v2, "value":I
    :try_start_0
    iget-object v3, p0, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 574
    const-string/jumbo v4, "multi_sim_sms_prompt"

    .line 573
    invoke-static {v3, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 578
    :goto_0
    if-nez v2, :cond_0

    const/4 v0, 0x0

    .line 581
    :goto_1
    return v0

    .line 575
    :catch_0
    move-exception v1

    .line 576
    .local v1, "snfe":Landroid/provider/Settings$SettingNotFoundException;
    const-string/jumbo v3, "Settings Exception Reading Dual Sim SMS Prompt Values"

    invoke-direct {p0, v3}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->loge(Ljava/lang/String;)V

    goto :goto_0

    .line 578
    .end local v1    # "snfe":Landroid/provider/Settings$SettingNotFoundException;
    :cond_0
    const/4 v0, 0x1

    goto :goto_1
.end method

.method public registerForAddSubscriptionRecord(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 4
    .param p1, "handler"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 203
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 204
    .local v0, "r":Landroid/os/Registrant;
    iget-object v3, p0, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->mAddSubscriptionRecordRegistrants:Landroid/os/RegistrantList;

    monitor-enter v3

    .line 205
    :try_start_0
    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->mAddSubscriptionRecordRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v2, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 207
    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->getActiveSubscriptionInfoList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 208
    .local v1, "subInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    if-eqz v1, :cond_0

    .line 209
    invoke-virtual {v0}, Landroid/os/Registrant;->notifyRegistrant()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v3

    .line 202
    return-void

    .line 204
    .end local v1    # "subInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public setDefaultDataSubId(I)V
    .locals 4
    .param p1, "subId"    # I

    .prologue
    .line 241
    const-string/jumbo v2, "setDefaultDataSubId"

    invoke-virtual {p0, v2}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->enforceModifyPhoneState(Ljava/lang/String;)V

    .line 243
    const-string/jumbo v2, "persist.radio.flexmap_type"

    const-string/jumbo v3, "nw_mode"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 247
    .local v0, "flexMapSupportType":Ljava/lang/String;
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string/jumbo v2, "dds"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 249
    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->getInstance()Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;

    move-result-object v1

    .line 251
    .local v1, "radioCapController":Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;
    invoke-virtual {v1}, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->isBothPhonesMappedToSameStack()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 252
    invoke-virtual {v1}, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->initNormalMappingRequest()Z

    .line 253
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, " setDefaultDataSubId init normal mapping: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->logd(Ljava/lang/String;)V

    .line 257
    .end local v1    # "radioCapController":Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;
    :cond_0
    invoke-super {p0, p1}, Lcom/android/internal/telephony/SubscriptionController;->setDefaultDataSubId(I)V

    .line 240
    return-void
.end method

.method public setDefaultSmsSubId(I)V
    .locals 6
    .param p1, "subId"    # I

    .prologue
    const/4 v5, 0x1

    .line 490
    const/4 v0, 0x0

    .line 491
    .local v0, "activeCount":I
    iget-object v4, p0, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->getActiveSubscriptionInfoList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 492
    .local v1, "sil":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-le v4, v5, :cond_1

    .line 493
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "subInfo$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/SubscriptionInfo;

    .line 494
    .local v2, "subInfo":Landroid/telephony/SubscriptionInfo;
    invoke-virtual {v2}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result v4

    invoke-direct {p0, v4}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->getUiccProvisionStatus(I)I

    move-result v4

    if-ne v4, v5, :cond_0

    .line 495
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 499
    .end local v2    # "subInfo":Landroid/telephony/SubscriptionInfo;
    .end local v3    # "subInfo$iterator":Ljava/util/Iterator;
    :cond_1
    const/4 v4, 0x2

    if-ne v0, v4, :cond_2

    .line 500
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setDefaultSmsSubId set property persist.radio.sms_account to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->logd(Ljava/lang/String;)V

    .line 501
    const-string/jumbo v4, "persist.radio.sms_account"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 503
    :cond_2
    invoke-super {p0, p1}, Lcom/android/internal/telephony/SubscriptionController;->setDefaultSmsSubId(I)V

    .line 488
    return-void
.end method

.method public setSMSPromptEnabled(Z)V
    .locals 8
    .param p1, "enabled"    # Z

    .prologue
    const/4 v7, 0x1

    .line 586
    const-string/jumbo v5, "setSMSPromptEnabled"

    invoke-virtual {p0, v5}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->enforceModifyPhoneState(Ljava/lang/String;)V

    .line 587
    if-nez p1, :cond_1

    const/4 v4, 0x0

    .line 588
    .local v4, "value":I
    :goto_0
    iget-object v5, p0, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    .line 589
    const-string/jumbo v6, "multi_sim_sms_prompt"

    .line 588
    invoke-static {v5, v6, v4}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 590
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "setSMSPromptOption to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->logi(Ljava/lang/String;)V

    .line 592
    const/4 v0, 0x0

    .line 593
    .local v0, "activeCount":I
    iget-object v5, p0, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->getActiveSubscriptionInfoList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 594
    .local v1, "sil":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    if-eqz v1, :cond_2

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    if-le v5, v7, :cond_2

    .line 595
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "subInfo$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/SubscriptionInfo;

    .line 596
    .local v2, "subInfo":Landroid/telephony/SubscriptionInfo;
    invoke-virtual {v2}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result v5

    invoke-direct {p0, v5}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->getUiccProvisionStatus(I)I

    move-result v5

    if-ne v5, v7, :cond_0

    .line 597
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 587
    .end local v0    # "activeCount":I
    .end local v1    # "sil":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    .end local v2    # "subInfo":Landroid/telephony/SubscriptionInfo;
    .end local v3    # "subInfo$iterator":Ljava/util/Iterator;
    .end local v4    # "value":I
    :cond_1
    const/4 v4, 0x1

    .restart local v4    # "value":I
    goto :goto_0

    .line 601
    .restart local v0    # "activeCount":I
    .restart local v1    # "sil":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    :cond_2
    const/4 v5, 0x2

    if-ne v0, v5, :cond_3

    if-eqz p1, :cond_3

    .line 602
    const-string/jumbo v5, "setDefaultSmsSubId set property persist.radio.sms_account to -1 "

    invoke-direct {p0, v5}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->logd(Ljava/lang/String;)V

    .line 603
    const-string/jumbo v5, "persist.radio.sms_account"

    const/4 v6, -0x1

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 585
    :cond_3
    return-void
.end method

.method protected shouldDefaultBeCleared(Ljava/util/List;I)Z
    .locals 8
    .param p2, "subId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/telephony/SubscriptionInfo;",
            ">;I)Z"
        }
    .end annotation

    .prologue
    .local p1, "records":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 289
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "[shouldDefaultBeCleared: subId] "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->logdl(Ljava/lang/String;)V

    .line 290
    if-nez p1, :cond_0

    .line 291
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "[shouldDefaultBeCleared] return true no records subId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->logdl(Ljava/lang/String;)V

    .line 292
    return v7

    .line 294
    :cond_0
    invoke-static {p2}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v4

    if-nez v4, :cond_1

    .line 296
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "[shouldDefaultBeCleared] return false only one subId, subId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->logdl(Ljava/lang/String;)V

    .line 297
    return v6

    .line 299
    :cond_1
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "record$iterator":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/SubscriptionInfo;

    .line 300
    .local v1, "record":Landroid/telephony/SubscriptionInfo;
    invoke-virtual {v1}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v0

    .line 301
    .local v0, "id":I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "[shouldDefaultBeCleared] Record.id: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->logdl(Ljava/lang/String;)V

    .line 302
    if-ne v0, p2, :cond_2

    .line 303
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "[shouldDefaultBeCleared] return false subId is active, subId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->logdl(Ljava/lang/String;)V

    .line 304
    return v6

    .line 307
    .end local v0    # "id":I
    .end local v1    # "record":Landroid/telephony/SubscriptionInfo;
    :cond_3
    invoke-virtual {p0, p2}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->getSlotId(I)I

    move-result v3

    .line 308
    .local v3, "slotId":I
    invoke-direct {p0, v3}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->getUiccProvisionStatus(I)I

    move-result v4

    if-ne v4, v7, :cond_4

    .line 309
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "[shouldDefaultBeCleared] return false subId is provisioned, subId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->logdl(Ljava/lang/String;)V

    .line 310
    return v6

    .line 312
    :cond_4
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "[shouldDefaultBeCleared] return true not active subId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->logdl(Ljava/lang/String;)V

    .line 313
    return v7
.end method

.method public unregisterForAddSubscriptionRecord(Landroid/os/Handler;)V
    .locals 2
    .param p1, "handler"    # Landroid/os/Handler;

    .prologue
    .line 215
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->mAddSubscriptionRecordRegistrants:Landroid/os/RegistrantList;

    monitor-enter v1

    .line 216
    :try_start_0
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->mAddSubscriptionRecordRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 214
    return-void

    .line 215
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method declared-synchronized updateUserPreferences()V
    .locals 12

    .prologue
    const/4 v11, 0x1

    monitor-enter p0

    .line 362
    const/4 v2, 0x0

    .line 363
    .local v2, "mNextActivatedSub":Landroid/telephony/SubscriptionInfo;
    const/4 v0, 0x0

    .line 364
    .local v0, "activeCount":I
    :try_start_0
    invoke-virtual {p0}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->isRadioInValidState()Z

    move-result v9

    if-nez v9, :cond_0

    .line 365
    const-string/jumbo v9, "Radio is in Invalid state, Ignore Updating User Preference!!!"

    invoke-direct {p0, v9}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->logd(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 366
    return-void

    .line 368
    :cond_0
    :try_start_1
    iget-object v9, p0, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->getActiveSubscriptionInfoList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    .line 371
    .local v4, "sil":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    if-eqz v4, :cond_1

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v9

    if-ge v9, v11, :cond_2

    .line 372
    :cond_1
    const-string/jumbo v9, "updateUserPreferences: Subscription list is empty"

    invoke-direct {p0, v9}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->logi(Ljava/lang/String;)V

    .line 375
    invoke-direct {p0}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->clearVoiceSubId()V

    .line 376
    const v9, 0x7ffffffb

    invoke-virtual {p0, v9}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->setDefaultFallbackSubId(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    .line 377
    return-void

    .line 382
    :cond_2
    :try_start_2
    const-string/jumbo v9, "persist.radio.aosp_usr_pref_sel"

    const/4 v10, 0x0

    invoke-static {v9, v10}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 383
    const-string/jumbo v9, "updateUserPreferences: AOSP user preference option enabled "

    invoke-direct {p0, v9}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->logi(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    .line 384
    return-void

    .line 388
    :cond_3
    :try_start_3
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .end local v2    # "mNextActivatedSub":Landroid/telephony/SubscriptionInfo;
    .local v8, "subInfo$iterator":Ljava/util/Iterator;
    :cond_4
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_5

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/telephony/SubscriptionInfo;

    .line 389
    .local v7, "subInfo":Landroid/telephony/SubscriptionInfo;
    invoke-virtual {v7}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result v9

    invoke-direct {p0, v9}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->getUiccProvisionStatus(I)I

    move-result v9

    if-ne v9, v11, :cond_4

    .line 390
    add-int/lit8 v0, v0, 0x1

    .line 391
    if-nez v2, :cond_4

    move-object v2, v7

    .local v2, "mNextActivatedSub":Landroid/telephony/SubscriptionInfo;
    goto :goto_0

    .line 394
    .end local v2    # "mNextActivatedSub":Landroid/telephony/SubscriptionInfo;
    .end local v7    # "subInfo":Landroid/telephony/SubscriptionInfo;
    :cond_5
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "updateUserPreferences:: active sub count = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " dds = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 395
    invoke-virtual {p0}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->getDefaultDataSubId()I

    move-result v10

    .line 394
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 395
    const-string/jumbo v10, " voice = "

    .line 394
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 395
    invoke-virtual {p0}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->getDefaultVoiceSubId()I

    move-result v10

    .line 394
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 396
    const-string/jumbo v10, " sms = "

    .line 394
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 396
    invoke-virtual {p0}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->getDefaultSmsSubId()I

    move-result v10

    .line 394
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->logd(Ljava/lang/String;)V

    .line 400
    if-ne v0, v11, :cond_6

    .line 401
    const/4 v9, 0x0

    invoke-virtual {p0, v9}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->setSMSPromptEnabled(Z)V

    .line 407
    :cond_6
    if-eqz v2, :cond_7

    invoke-virtual {p0}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->getActiveSubInfoCountMax()I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result v9

    if-ne v9, v11, :cond_8

    :cond_7
    monitor-exit p0

    return-void

    .line 416
    :cond_8
    if-ne v0, v11, :cond_9

    .line 418
    :try_start_4
    invoke-virtual {p0}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->getDefaultSmsSubId()I

    move-result v9

    invoke-direct {p0, v9}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->isSubProvisioned(I)Z

    move-result v9

    if-eqz v9, :cond_d

    .line 421
    :cond_9
    :goto_1
    invoke-virtual {p0}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->getDefaultVoiceSubId()I

    move-result v9

    invoke-direct {p0, v9}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->isSubProvisioned(I)Z

    move-result v9

    if-nez v9, :cond_a

    .line 422
    invoke-virtual {v2}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v9

    invoke-virtual {p0, v9}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->setDefaultVoiceSubId(I)V

    .line 430
    :cond_a
    invoke-direct {p0}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->isNonSimAccountFound()Z

    move-result v9

    if-nez v9, :cond_e

    if-ne v0, v11, :cond_e

    .line 431
    invoke-virtual {v2}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v6

    .line 432
    .local v6, "subId":I
    invoke-direct {p0, v6}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->subscriptionIdToPhoneAccountHandle(I)Landroid/telecom/PhoneAccountHandle;

    move-result-object v3

    .line 433
    .local v3, "phoneAccountHandle":Landroid/telecom/PhoneAccountHandle;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "set default phoneaccount to  "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->logi(Ljava/lang/String;)V

    .line 434
    iget-object v9, p0, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->mTelecomManager:Landroid/telecom/TelecomManager;

    invoke-virtual {v9, v3}, Landroid/telecom/TelecomManager;->setUserSelectedOutgoingPhoneAccount(Landroid/telecom/PhoneAccountHandle;)V

    .line 478
    .end local v3    # "phoneAccountHandle":Landroid/telecom/PhoneAccountHandle;
    .end local v6    # "subId":I
    :cond_b
    :goto_2
    sget v9, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->mDefaultFallbackSubId:I

    invoke-direct {p0, v9}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->isSubProvisioned(I)Z

    move-result v9

    if-nez v9, :cond_c

    .line 479
    invoke-virtual {v2}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v9

    invoke-virtual {p0, v9}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->setDefaultFallbackSubId(I)V

    .line 482
    :cond_c
    invoke-virtual {p0}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->notifySubscriptionInfoChanged()V

    .line 483
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "updateUserPreferences: after currentDds = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p0}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->getDefaultDataSubId()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " voice = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 484
    invoke-virtual {p0}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->getDefaultVoiceSubId()I

    move-result v10

    .line 483
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 484
    const-string/jumbo v10, " sms = "

    .line 483
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 484
    invoke-virtual {p0}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->getDefaultSmsSubId()I

    move-result v10

    .line 483
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->logd(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    monitor-exit p0

    .line 361
    return-void

    .line 419
    :cond_d
    :try_start_5
    invoke-virtual {v2}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v9

    invoke-virtual {p0, v9}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->setDefaultSmsSubId(I)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_1

    .end local v4    # "sil":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    .end local v8    # "subInfo$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v9

    monitor-exit p0

    throw v9

    .line 437
    .restart local v4    # "sil":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    .restart local v8    # "subInfo$iterator":Ljava/util/Iterator;
    :cond_e
    const/4 v9, 0x2

    if-ne v0, v9, :cond_12

    .line 438
    :try_start_6
    const-string/jumbo v9, "persist.sys.phone_account"

    .line 439
    const/4 v10, -0x1

    .line 438
    invoke-static {v9, v10}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v6

    .line 440
    .restart local v6    # "subId":I
    if-eqz v6, :cond_10

    invoke-direct {p0, v6}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->isSubProvisioned(I)Z

    move-result v9

    if-eqz v9, :cond_10

    .line 446
    invoke-direct {p0, v6}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->subscriptionIdToPhoneAccountHandle(I)Landroid/telecom/PhoneAccountHandle;

    move-result-object v3

    .line 447
    .restart local v3    # "phoneAccountHandle":Landroid/telecom/PhoneAccountHandle;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "updateUserPreferences set default phoneaccount to  "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ", phoneAccountHandle = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->logd(Ljava/lang/String;)V

    .line 448
    if-eqz v3, :cond_f

    .line 449
    iget-object v9, p0, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->mTelecomManager:Landroid/telecom/TelecomManager;

    invoke-virtual {v9, v3}, Landroid/telecom/TelecomManager;->setUserSelectedOutgoingPhoneAccount(Landroid/telecom/PhoneAccountHandle;)V

    .line 454
    .end local v3    # "phoneAccountHandle":Landroid/telecom/PhoneAccountHandle;
    :cond_f
    :goto_3
    const-string/jumbo v9, "persist.radio.sms_account"

    .line 455
    const/4 v10, -0x1

    .line 454
    invoke-static {v9, v10}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v5

    .line 456
    .local v5, "smsSubId":I
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "updateUserPreferences get property persist.radio.sms_account "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->logd(Ljava/lang/String;)V

    .line 457
    if-eqz v5, :cond_11

    invoke-direct {p0, v5}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->isSubProvisioned(I)Z

    move-result v9

    if-eqz v9, :cond_11

    .line 458
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "updateUserPreferences setDefaultSmsSubId to  "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->logd(Ljava/lang/String;)V

    .line 459
    invoke-virtual {p0, v5}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->setDefaultSmsSubId(I)V

    goto/16 :goto_2

    .line 442
    .end local v5    # "smsSubId":I
    :cond_10
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "updateUserPreferences set default phoneaccount to  null subId = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->logd(Ljava/lang/String;)V

    .line 443
    iget-object v9, p0, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->mTelecomManager:Landroid/telecom/TelecomManager;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/telecom/TelecomManager;->setUserSelectedOutgoingPhoneAccount(Landroid/telecom/PhoneAccountHandle;)V

    goto :goto_3

    .line 462
    .restart local v5    # "smsSubId":I
    :cond_11
    const-string/jumbo v9, "updateUserPreferences setDefaultSmsSubId to  slot1"

    invoke-direct {p0, v9}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->logd(Ljava/lang/String;)V

    .line 463
    const/4 v9, 0x0

    invoke-virtual {p0, v9}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->getSubId(I)[I

    move-result-object v1

    .line 464
    .local v1, "defaultsmsSubId":[I
    const/4 v9, 0x0

    aget v9, v1, v9

    invoke-virtual {p0, v9}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->setDefaultSmsSubId(I)V

    .line 465
    const-string/jumbo v9, "persist.radio.sms_account"

    const/4 v10, -0x1

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 471
    .end local v1    # "defaultsmsSubId":[I
    .end local v5    # "smsSubId":I
    .end local v6    # "subId":I
    :cond_12
    iget-object v9, p0, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->mTelecomManager:Landroid/telecom/TelecomManager;

    const-string/jumbo v10, "tel"

    invoke-virtual {v9, v10}, Landroid/telecom/TelecomManager;->getPhoneAccountsSupportingScheme(Ljava/lang/String;)Ljava/util/List;

    move-result-object v9

    if-eqz v9, :cond_b

    .line 472
    iget-object v9, p0, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->mTelecomManager:Landroid/telecom/TelecomManager;

    const-string/jumbo v10, "tel"

    invoke-virtual {v9, v10}, Landroid/telecom/TelecomManager;->getPhoneAccountsSupportingScheme(Ljava/lang/String;)Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    if-le v9, v0, :cond_b

    .line 473
    const-string/jumbo v9, "updateUserPreferences set default phoneaccount to  null "

    invoke-direct {p0, v9}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->logd(Ljava/lang/String;)V

    .line 474
    iget-object v9, p0, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->mTelecomManager:Landroid/telecom/TelecomManager;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/telecom/TelecomManager;->setUserSelectedOutgoingPhoneAccount(Landroid/telecom/PhoneAccountHandle;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_2
.end method
