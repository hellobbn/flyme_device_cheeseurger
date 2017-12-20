.class public Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;
.super Landroid/os/Handler;
.source "QtiUiccCardProvisioner.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner$1;,
        Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner$UiccProvisionStatus;
    }
.end annotation


# static fields
.field public static final ACTION_SIP_ADD_PHONE:Ljava/lang/String; = "com.android.phone.SIP_ADD_PHONE"

.field public static final ACTION_SIP_REMOVE_PHONE:Ljava/lang/String; = "com.android.phone.SIP_REMOVE_PHONE"

.field private static final ACTION_UICC_MANUAL_PROVISION_STATUS_CHANGED:Ljava/lang/String; = "org.codeaurora.intent.action.ACTION_UICC_MANUAL_PROVISION_STATUS_CHANGED"

.field private static final DBG:Z = true

.field private static final EVENT_ICC_CHANGED:I = 0x1

.field private static final EVENT_MANUAL_PROVISION_DONE:I = 0x4

.field private static final EVENT_OEM_HOOK_SERVICE_READY:I = 0x3

.field private static final EVENT_UNSOL_MANUAL_PROVISION_STATUS_CHANGED:I = 0x2

.field private static final EXTRA_NEW_PROVISION_STATE:Ljava/lang/String; = "newProvisionState"

.field private static final GENERIC_FAILURE:I = -0x1

.field private static final INVALID_INPUT:I = -0x2

.field private static final LOG_TAG:Ljava/lang/String; = "QtiUiccCardProvisioner"

.field private static final REQUEST_IN_PROGRESS:I = -0x3

.field private static final SUCCESS:I

.field private static final VDBG:Z

.field private static final mNumPhones:I

.field private static mRequestInProgress:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

.field private static sInstance:Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;

.field private static sManualProvLock:Ljava/lang/Object;


# instance fields
.field private final mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mCardState:[Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

.field private mContext:Landroid/content/Context;

.field private mManualProvisionChangedRegistrants:Landroid/os/RegistrantList;

.field private mProvisionStatus:[Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner$UiccProvisionStatus;

.field private mQtiRilInterface:Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;

.field private mSimIccId:[Ljava/lang/String;


# direct methods
.method static synthetic -wrap0(Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;Ljava/lang/String;)V
    .locals 0
    .param p1, "string"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap1(Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;I)V
    .locals 0
    .param p1, "slotId"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->updateIccAvailability(I)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 91
    const/4 v0, 0x0

    sput-object v0, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    .line 92
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v0

    sput v0, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->mNumPhones:I

    .line 93
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->sManualProvLock:Ljava/lang/Object;

    .line 94
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->mRequestInProgress:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 56
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x0

    .line 184
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 75
    new-instance v2, Landroid/os/RegistrantList;

    invoke-direct {v2}, Landroid/os/RegistrantList;-><init>()V

    iput-object v2, p0, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->mManualProvisionChangedRegistrants:Landroid/os/RegistrantList;

    .line 215
    new-instance v2, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner$1;

    invoke-direct {v2, p0}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner$1;-><init>(Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;)V

    iput-object v2, p0, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 185
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, " Invoking constructor, no of phones = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->mNumPhones:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->logd(Ljava/lang/String;)V

    .line 186
    iput-object p1, p0, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->mContext:Landroid/content/Context;

    .line 188
    sget v2, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->mNumPhones:I

    new-array v2, v2, [Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner$UiccProvisionStatus;

    iput-object v2, p0, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->mProvisionStatus:[Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner$UiccProvisionStatus;

    .line 189
    sget v2, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->mNumPhones:I

    new-array v2, v2, [Ljava/lang/String;

    iput-object v2, p0, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->mSimIccId:[Ljava/lang/String;

    .line 190
    sget v2, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->mNumPhones:I

    new-array v2, v2, [Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    iput-object v2, p0, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->mCardState:[Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    .line 191
    const/4 v1, 0x0

    .local v1, "index":I
    :goto_0
    sget v2, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->mNumPhones:I

    if-ge v1, v2, :cond_0

    .line 192
    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->mSimIccId:[Ljava/lang/String;

    aput-object v4, v2, v1

    .line 193
    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->mProvisionStatus:[Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner$UiccProvisionStatus;

    new-instance v3, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner$UiccProvisionStatus;

    invoke-direct {v3}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner$UiccProvisionStatus;-><init>()V

    aput-object v3, v2, v1

    .line 194
    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->mCardState:[Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    sget-object v3, Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;->CARDSTATE_ABSENT:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    aput-object v3, v2, v1

    .line 191
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 196
    :cond_0
    invoke-static {}, Lcom/android/internal/telephony/uicc/UiccController;->getInstance()Lcom/android/internal/telephony/uicc/UiccController;

    move-result-object v2

    sput-object v2, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    .line 197
    sget-object v2, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    const/4 v3, 0x1

    invoke-virtual {v2, p0, v3, v4}, Lcom/android/internal/telephony/uicc/UiccController;->registerForIccChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 199
    invoke-static {p1}, Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;->getInstance(Landroid/content/Context;)Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;

    move-result-object v2

    iput-object v2, p0, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->mQtiRilInterface:Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;

    .line 200
    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->mQtiRilInterface:Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;

    const/4 v3, 0x3

    invoke-virtual {v2, p0, v3, v4}, Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;->registerForServiceReadyEvent(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 201
    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->mQtiRilInterface:Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;

    .line 202
    const/4 v3, 0x2

    .line 201
    invoke-virtual {v2, p0, v3, v4}, Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;->registerForUnsol(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 204
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 205
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v2, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 207
    const-string/jumbo v2, "com.android.phone.SIP_ADD_PHONE"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 208
    const-string/jumbo v2, "com.android.phone.SIP_REMOVE_PHONE"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 210
    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 184
    return-void
.end method

.method private broadcastManualProvisionStatusChanged(II)V
    .locals 5
    .param p1, "phoneId"    # I
    .param p2, "newProvisionState"    # I

    .prologue
    const/4 v4, 0x0

    .line 430
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "org.codeaurora.intent.action.ACTION_UICC_MANUAL_PROVISION_STATUS_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 431
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "phone"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 432
    const-string/jumbo v1, "newProvisionState"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 433
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 434
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->mManualProvisionChangedRegistrants:Landroid/os/RegistrantList;

    new-instance v2, Landroid/os/AsyncResult;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v2, v4, v3, v4}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 429
    return-void
.end method

.method private canProcessRequest(I)Z
    .locals 3
    .param p1, "slotId"    # I

    .prologue
    .line 551
    const/4 v0, 0x0

    .line 553
    .local v0, "retVal":Z
    sget v1, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->mNumPhones:I

    const/4 v2, 0x1

    if-le v1, v2, :cond_0

    invoke-direct {p0, p1}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->isValidSlotId(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 554
    const/4 v0, 0x1

    .line 558
    :goto_0
    return v0

    .line 556
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Request can\'t be processed, slotId "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " numPhones "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->mNumPhones:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->loge(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private enforceModifyPhoneState(Ljava/lang/String;)V
    .locals 2
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 545
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->mContext:Landroid/content/Context;

    .line 546
    const-string/jumbo v1, "android.permission.MODIFY_PHONE_STATE"

    .line 545
    invoke-virtual {v0, v1, p1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 544
    return-void
.end method

.method private getCurrentProvisioningStatus(I)I
    .locals 2
    .param p1, "slotId"    # I

    .prologue
    .line 439
    sget-object v1, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->sManualProvLock:Ljava/lang/Object;

    monitor-enter v1

    .line 440
    :try_start_0
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->mProvisionStatus:[Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner$UiccProvisionStatus;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner$UiccProvisionStatus;->getCurrentState()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit v1

    return v0

    .line 439
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static getInstance()Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;
    .locals 2

    .prologue
    .line 178
    sget-object v0, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->sInstance:Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;

    if-nez v0, :cond_0

    .line 179
    const-string/jumbo v0, "QtiUiccCardProvisioner"

    const-string/jumbo v1, "QtiUiccCardProvisioner.getInstance called before make"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    :cond_0
    sget-object v0, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->sInstance:Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;

    return-object v0
.end method

.method private handleUnsolManualProvisionEvent(Landroid/os/Message;)V
    .locals 7
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 306
    if-eqz p1, :cond_0

    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-nez v5, :cond_1

    .line 307
    :cond_0
    const-string/jumbo v5, "Null data received in handleUnsolManualProvisionEvent"

    invoke-direct {p0, v5}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->loge(Ljava/lang/String;)V

    .line 308
    return-void

    .line 310
    :cond_1
    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, [B

    invoke-static {v5}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 311
    .local v2, "payload":Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 313
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v3

    .line 314
    .local v3, "rspId":I
    iget v4, p1, Landroid/os/Message;->arg1:I

    .line 316
    .local v4, "slotId":I
    invoke-direct {p0, v4}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->isValidSlotId(I)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 317
    const v5, 0x80404

    .line 316
    if-ne v3, v5, :cond_2

    .line 318
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, " Unsol: rspId "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " slotId "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->logi(Ljava/lang/String;)V

    .line 319
    invoke-direct {p0, v4}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->queryUiccProvisionInfo(I)V

    .line 320
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    move-result v1

    .line 321
    .local v1, "dataSubId":I
    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->getSlotId(I)I

    move-result v0

    .line 322
    .local v0, "dataSlotId":I
    if-ne v4, v0, :cond_2

    .line 323
    invoke-direct {p0, v0}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->getCurrentProvisioningStatus(I)I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_2

    .line 324
    const-string/jumbo v5, "Set dds after SSR"

    invoke-direct {p0, v5}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->logd(Ljava/lang/String;)V

    .line 325
    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->getInstance()Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->setDdsIfRequired(Z)V

    .line 305
    .end local v0    # "dataSlotId":I
    .end local v1    # "dataSubId":I
    :cond_2
    return-void
.end method

.method private isValidSlotId(I)Z
    .locals 2
    .param p1, "slotId"    # I

    .prologue
    .line 562
    const/4 v0, 0x0

    .line 564
    .local v0, "retVal":Z
    if-ltz p1, :cond_0

    sget v1, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->mNumPhones:I

    if-ge p1, v1, :cond_0

    .line 565
    const/4 v0, 0x1

    .line 567
    :cond_0
    return v0
.end method

.method private logd(Ljava/lang/String;)V
    .locals 1
    .param p1, "string"    # Ljava/lang/String;

    .prologue
    .line 604
    const-string/jumbo v0, "QtiUiccCardProvisioner"

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 603
    return-void
.end method

.method private loge(Ljava/lang/String;)V
    .locals 1
    .param p1, "string"    # Ljava/lang/String;

    .prologue
    .line 612
    const-string/jumbo v0, "QtiUiccCardProvisioner"

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 611
    return-void
.end method

.method private logi(Ljava/lang/String;)V
    .locals 1
    .param p1, "string"    # Ljava/lang/String;

    .prologue
    .line 608
    const-string/jumbo v0, "QtiUiccCardProvisioner"

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 607
    return-void
.end method

.method public static make(Landroid/content/Context;)Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 152
    sget-object v0, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->sInstance:Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;

    if-nez v0, :cond_0

    .line 153
    new-instance v0, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;

    invoke-direct {v0, p0}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->sInstance:Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;

    .line 157
    :goto_0
    sget-object v0, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->sInstance:Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;

    return-object v0

    .line 155
    :cond_0
    const-string/jumbo v0, "QtiUiccCardProvisioner"

    const-string/jumbo v1, "QtiUiccCardProvisioner.make() should be called once"

    invoke-static {v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private queryAllUiccProvisionInfo()V
    .locals 3

    .prologue
    .line 331
    const/4 v0, 0x0

    .local v0, "index":I
    :goto_0
    sget v1, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->mNumPhones:I

    if-ge v0, v1, :cond_1

    .line 332
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, " query  provision info, card state["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "] = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->mCardState:[Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->logd(Ljava/lang/String;)V

    .line 333
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->mCardState:[Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    aget-object v1, v1, v0

    sget-object v2, Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;->CARDSTATE_PRESENT:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    if-ne v1, v2, :cond_0

    .line 334
    invoke-direct {p0, v0}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->queryUiccProvisionInfo(I)V

    .line 331
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 330
    :cond_1
    return-void
.end method

.method private queryUiccProvisionInfo(I)V
    .locals 7
    .param p1, "phoneId"    # I

    .prologue
    const/4 v6, 0x0

    const/4 v5, -0x1

    .line 344
    iget-object v4, p0, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->mQtiRilInterface:Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;

    invoke-virtual {v4}, Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;->isServiceReady()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-direct {p0, p1}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->isValidSlotId(I)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 348
    iget-object v4, p0, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->mProvisionStatus:[Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner$UiccProvisionStatus;

    aget-object v1, v4, p1

    .line 350
    .local v1, "oldStatus":Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner$UiccProvisionStatus;
    iget-object v4, p0, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->mQtiRilInterface:Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;

    invoke-virtual {v4, p1}, Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;->getUiccProvisionPreference(I)Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner$UiccProvisionStatus;

    move-result-object v3

    .line 351
    .local v3, "subStatus":Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner$UiccProvisionStatus;
    invoke-virtual {v3}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner$UiccProvisionStatus;->getCurrentState()I

    move-result v4

    if-eq v4, v5, :cond_0

    .line 352
    invoke-virtual {v3}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner$UiccProvisionStatus;->getUserPreference()I

    move-result v4

    if-eq v4, v5, :cond_0

    .line 353
    sget-object v5, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->sManualProvLock:Ljava/lang/Object;

    monitor-enter v5

    .line 354
    :try_start_0
    iget-object v4, p0, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->mProvisionStatus:[Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner$UiccProvisionStatus;

    aput-object v3, v4, p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v5

    .line 360
    :cond_0
    iget-object v4, p0, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->mSimIccId:[Ljava/lang/String;

    aget-object v4, v4, p1

    if-nez v4, :cond_1

    .line 361
    iget-object v4, p0, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->mQtiRilInterface:Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;

    invoke-virtual {v4, p1}, Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;->getUiccIccId(I)Ljava/lang/String;

    move-result-object v0

    .line 363
    .local v0, "iccId":Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 364
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "add subInfo record, iccId["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "] = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->logi(Ljava/lang/String;)V

    .line 365
    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionInfoUpdater;->getInstance()Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionInfoUpdater;

    move-result-object v4

    invoke-virtual {v4, p1, v0}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionInfoUpdater;->addSubInfoRecord(ILjava/lang/String;)V

    .line 366
    iget-object v4, p0, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->mSimIccId:[Ljava/lang/String;

    aput-object v0, v4, p1

    .line 369
    .end local v0    # "iccId":Ljava/lang/String;
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, " queryUiccProvisionInfo, iccId["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "] = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 370
    iget-object v5, p0, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->mSimIccId:[Ljava/lang/String;

    aget-object v5, v5, p1

    .line 369
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 370
    const-string/jumbo v5, " "

    .line 369
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 370
    iget-object v5, p0, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->mProvisionStatus:[Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner$UiccProvisionStatus;

    aget-object v5, v5, p1

    .line 369
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->logd(Ljava/lang/String;)V

    .line 372
    iget-object v4, p0, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->mProvisionStatus:[Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner$UiccProvisionStatus;

    aget-object v4, v4, p1

    invoke-virtual {v1, v4}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner$UiccProvisionStatus;->equals(Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner$UiccProvisionStatus;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 373
    iget-object v4, p0, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->mSimIccId:[Ljava/lang/String;

    aget-object v4, v4, p1

    if-eqz v4, :cond_2

    invoke-virtual {p0}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->isAllCardProvisionInfoReceived()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 374
    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->getInstance()Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->getSubId(I)[I

    move-result-object v2

    .line 380
    .local v2, "subIds":[I
    if-eqz v2, :cond_2

    array-length v4, v2

    if-eqz v4, :cond_2

    .line 381
    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->getInstance()Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;

    move-result-object v4

    aget v5, v2, v6

    invoke-virtual {v4, v5}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->isActiveSubId(I)Z

    move-result v4

    .line 380
    if-eqz v4, :cond_2

    .line 382
    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->getInstance()Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;

    move-result-object v4

    invoke-virtual {v4}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->updateUserPreferences()V

    .line 386
    .end local v2    # "subIds":[I
    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, " broadcasting ProvisionInfo, phoneId = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->logd(Ljava/lang/String;)V

    .line 387
    invoke-direct {p0, p1}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->getCurrentProvisioningStatus(I)I

    move-result v4

    invoke-direct {p0, p1, v4}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->broadcastManualProvisionStatusChanged(II)V

    .line 343
    :cond_3
    return-void

    .line 345
    .end local v1    # "oldStatus":Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner$UiccProvisionStatus;
    .end local v3    # "subStatus":Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner$UiccProvisionStatus;
    :cond_4
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Oem hook service is not ready yet "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->logi(Ljava/lang/String;)V

    .line 346
    return-void

    .line 353
    .restart local v1    # "oldStatus":Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner$UiccProvisionStatus;
    .restart local v3    # "subStatus":Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner$UiccProvisionStatus;
    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4
.end method

.method private updateIccAvailability(I)V
    .locals 9
    .param p1, "slotId"    # I

    .prologue
    const/4 v5, -0x2

    .line 392
    invoke-direct {p0, p1}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->isValidSlotId(I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 393
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Invalid slot Index!!! "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->loge(Ljava/lang/String;)V

    .line 394
    return-void

    .line 396
    :cond_0
    sget-object v2, Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;->CARDSTATE_ABSENT:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    .line 397
    .local v2, "newState":Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;
    sget-object v3, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    invoke-virtual {v3, p1}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccCard(I)Lcom/android/internal/telephony/uicc/UiccCard;

    move-result-object v1

    .line 398
    .local v1, "newCard":Lcom/android/internal/telephony/uicc/UiccCard;
    if-eqz v1, :cond_3

    .line 399
    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/UiccCard;->getCardState()Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    move-result-object v2

    .line 404
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "updateIccAvailability, card state["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "] = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->logd(Ljava/lang/String;)V

    .line 406
    iget-object v3, p0, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->mCardState:[Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    aput-object v2, v3, p1

    .line 407
    invoke-direct {p0, p1}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->getCurrentProvisioningStatus(I)I

    move-result v0

    .line 408
    .local v0, "currentState":I
    iget-object v3, p0, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->mCardState:[Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    aget-object v3, v3, p1

    sget-object v4, Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;->CARDSTATE_PRESENT:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    if-ne v3, v4, :cond_5

    .line 409
    iget-object v3, p0, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->mSimIccId:[Ljava/lang/String;

    aget-object v3, v3, p1

    if-eqz v3, :cond_1

    .line 410
    const/4 v3, -0x1

    if-ne v0, v3, :cond_4

    .line 416
    :cond_1
    invoke-direct {p0, p1}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->queryUiccProvisionInfo(I)V

    .line 391
    :cond_2
    :goto_0
    return-void

    .line 401
    .end local v0    # "currentState":I
    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "updateIccAvailability, uicc card null, ignore "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->logd(Ljava/lang/String;)V

    .line 402
    return-void

    .line 411
    .restart local v0    # "currentState":I
    :cond_4
    if-eq v0, v5, :cond_1

    .line 413
    if-eqz v0, :cond_1

    .line 417
    :cond_5
    iget-object v3, p0, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->mCardState:[Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    aget-object v3, v3, p1

    sget-object v4, Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;->CARDSTATE_ABSENT:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    if-eq v3, v4, :cond_6

    .line 418
    iget-object v3, p0, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->mCardState:[Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    aget-object v3, v3, p1

    sget-object v4, Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;->CARDSTATE_ERROR:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    if-ne v3, v4, :cond_2

    .line 419
    :cond_6
    sget-object v4, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->sManualProvLock:Ljava/lang/Object;

    monitor-enter v4

    .line 420
    :try_start_0
    iget-object v3, p0, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->mProvisionStatus:[Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner$UiccProvisionStatus;

    aget-object v3, v3, p1

    const/4 v5, -0x2

    invoke-virtual {v3, v5}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner$UiccProvisionStatus;->setUserPreference(I)V

    .line 421
    iget-object v3, p0, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->mProvisionStatus:[Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner$UiccProvisionStatus;

    aget-object v3, v3, p1

    const/4 v5, -0x2

    invoke-virtual {v3, v5}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner$UiccProvisionStatus;->setCurrentState(I)V

    .line 422
    iget-object v3, p0, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->mSimIccId:[Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v5, v3, p1

    .line 423
    iget-object v3, p0, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->mManualProvisionChangedRegistrants:Landroid/os/RegistrantList;

    .line 424
    new-instance v5, Landroid/os/AsyncResult;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-direct {v5, v7, v6, v8}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 423
    invoke-virtual {v3, v5}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v4

    goto :goto_0

    .line 419
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method


# virtual methods
.method public activateUiccCard(I)I
    .locals 7
    .param p1, "slotId"    # I

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 474
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, " activateUiccCard: phoneId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->logd(Ljava/lang/String;)V

    .line 476
    const-string/jumbo v2, "activateUiccCard"

    invoke-direct {p0, v2}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->enforceModifyPhoneState(Ljava/lang/String;)V

    .line 478
    const/4 v0, 0x0

    .line 480
    .local v0, "activateStatus":I
    invoke-direct {p0, p1}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->canProcessRequest(I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 481
    const/4 v0, -0x2

    .line 506
    :goto_0
    return v0

    .line 482
    :cond_0
    invoke-direct {p0, p1}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->getCurrentProvisioningStatus(I)I

    move-result v2

    if-ne v2, v5, :cond_1

    .line 483
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, " Uicc card in slot["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "] already activated "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->logd(Ljava/lang/String;)V

    goto :goto_0

    .line 484
    :cond_1
    invoke-virtual {p0}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->isFlexMapInProgress()Z

    move-result v2

    if-nez v2, :cond_3

    sget-object v2, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->mRequestInProgress:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2, v6, v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 485
    const/4 v1, 0x0

    .line 487
    .local v1, "retVal":Z
    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->mQtiRilInterface:Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;

    invoke-virtual {v2, v5, p1}, Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;->setUiccProvisionPreference(II)Z

    move-result v1

    .line 489
    .local v1, "retVal":Z
    if-nez v1, :cond_2

    .line 490
    const/4 v0, -0x1

    .line 500
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, " activation result["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "] = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->logi(Ljava/lang/String;)V

    .line 501
    sget-object v2, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->mRequestInProgress:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2, v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto :goto_0

    .line 492
    :cond_2
    sget-object v3, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->sManualProvLock:Ljava/lang/Object;

    monitor-enter v3

    .line 493
    :try_start_0
    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->mProvisionStatus:[Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner$UiccProvisionStatus;

    aget-object v2, v2, p1

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner$UiccProvisionStatus;->setCurrentState(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v3

    .line 496
    const/4 v2, 0x4

    invoke-virtual {p0, v2, p1, v5}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->sendMessage(Landroid/os/Message;)Z

    goto :goto_1

    .line 492
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2

    .line 503
    .end local v1    # "retVal":Z
    :cond_3
    const/4 v0, -0x3

    goto :goto_0
.end method

.method public deactivateUiccCard(I)I
    .locals 6
    .param p1, "slotId"    # I

    .prologue
    const/4 v5, 0x0

    .line 510
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, " deactivateUiccCard: phoneId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->logd(Ljava/lang/String;)V

    .line 512
    const-string/jumbo v2, "deactivateUiccCard"

    invoke-direct {p0, v2}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->enforceModifyPhoneState(Ljava/lang/String;)V

    .line 514
    const/4 v0, 0x0

    .line 515
    .local v0, "deactivateState":I
    invoke-direct {p0, p1}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->canProcessRequest(I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 516
    const/4 v0, -0x2

    .line 541
    :goto_0
    return v0

    .line 517
    :cond_0
    invoke-direct {p0, p1}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->getCurrentProvisioningStatus(I)I

    move-result v2

    if-nez v2, :cond_1

    .line 518
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, " Uicc card in slot["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "] already in deactive state "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->logd(Ljava/lang/String;)V

    goto :goto_0

    .line 519
    :cond_1
    invoke-virtual {p0}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->isFlexMapInProgress()Z

    move-result v2

    if-nez v2, :cond_3

    sget-object v2, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->mRequestInProgress:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v3, 0x1

    invoke-virtual {v2, v5, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 520
    const/4 v1, 0x0

    .line 522
    .local v1, "retVal":Z
    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->mQtiRilInterface:Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;

    invoke-virtual {v2, v5, p1}, Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;->setUiccProvisionPreference(II)Z

    move-result v1

    .line 524
    .local v1, "retVal":Z
    if-nez v1, :cond_2

    .line 525
    const/4 v0, -0x1

    .line 535
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, " deactivation result["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "] = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->logi(Ljava/lang/String;)V

    .line 536
    sget-object v2, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->mRequestInProgress:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2, v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto :goto_0

    .line 527
    :cond_2
    sget-object v3, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->sManualProvLock:Ljava/lang/Object;

    monitor-enter v3

    .line 528
    :try_start_0
    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->mProvisionStatus:[Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner$UiccProvisionStatus;

    aget-object v2, v2, p1

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner$UiccProvisionStatus;->setCurrentState(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v3

    .line 531
    const/4 v2, 0x4

    invoke-virtual {p0, v2, p1, v5}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->sendMessage(Landroid/os/Message;)Z

    goto :goto_1

    .line 527
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2

    .line 538
    .end local v1    # "retVal":Z
    :cond_3
    const/4 v0, -0x3

    goto :goto_0
.end method

.method public dispose()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 163
    const-string/jumbo v0, " disposing... "

    invoke-direct {p0, v0}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->logd(Ljava/lang/String;)V

    .line 165
    sget-object v0, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/uicc/UiccController;->unregisterForIccChanged(Landroid/os/Handler;)V

    .line 166
    sput-object v1, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    .line 168
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->mQtiRilInterface:Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;

    invoke-virtual {v0, p0}, Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;->unRegisterForServiceReadyEvent(Landroid/os/Handler;)V

    .line 169
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->mQtiRilInterface:Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;

    invoke-virtual {v0, p0}, Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;->unRegisterForUnsol(Landroid/os/Handler;)V

    .line 170
    iput-object v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->mQtiRilInterface:Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;

    .line 173
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 161
    return-void
.end method

.method public getCurrentUiccCardProvisioningStatus(I)I
    .locals 3
    .param p1, "slotId"    # I

    .prologue
    .line 445
    const/4 v0, -0x1

    .line 448
    .local v0, "currentStatus":I
    sget v1, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->mNumPhones:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    invoke-direct {p0, p1}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->isValidSlotId(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 449
    const/4 v0, 0x1

    .line 455
    :cond_0
    :goto_0
    return v0

    .line 450
    :cond_1
    invoke-direct {p0, p1}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->canProcessRequest(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 451
    invoke-direct {p0, p1}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->getCurrentProvisioningStatus(I)I

    move-result v0

    goto :goto_0
.end method

.method public getUiccCardProvisioningUserPreference(I)I
    .locals 3
    .param p1, "slotId"    # I

    .prologue
    .line 459
    const/4 v0, -0x1

    .line 462
    .local v0, "userPref":I
    sget v1, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->mNumPhones:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    invoke-direct {p0, p1}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->isValidSlotId(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 463
    const/4 v0, 0x1

    .line 470
    :cond_0
    :goto_0
    return v0

    .line 464
    :cond_1
    invoke-direct {p0, p1}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->canProcessRequest(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 465
    sget-object v2, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->sManualProvLock:Ljava/lang/Object;

    monitor-enter v2

    .line 466
    :try_start_0
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->mProvisionStatus:[Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner$UiccProvisionStatus;

    aget-object v1, v1, p1

    invoke-virtual {v1}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner$UiccProvisionStatus;->getUserPreference()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit v2

    goto :goto_0

    .line 465
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public getUiccIccId(I)Ljava/lang/String;
    .locals 1
    .param p1, "slotId"    # I

    .prologue
    .line 340
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->mSimIccId:[Ljava/lang/String;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 263
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 300
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Error: hit default case "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->loge(Ljava/lang/String;)V

    .line 260
    :cond_0
    :goto_0
    return-void

    .line 265
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 266
    .local v0, "ar":Landroid/os/AsyncResult;
    if-eqz v0, :cond_1

    iget-object v2, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v2, :cond_1

    .line 267
    iget-object v2, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->updateIccAvailability(I)V

    goto :goto_0

    .line 269
    :cond_1
    const-string/jumbo v2, "Error: Invalid card index EVENT_ICC_CHANGED "

    invoke-direct {p0, v2}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->loge(Ljava/lang/String;)V

    goto :goto_0

    .line 273
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 274
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    if-eqz v0, :cond_2

    iget-object v2, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v2, :cond_2

    .line 275
    iget-object v2, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 276
    .local v1, "isServiceReady":Z
    if-eqz v1, :cond_0

    .line 277
    invoke-direct {p0}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->queryAllUiccProvisionInfo()V

    goto :goto_0

    .line 280
    .end local v1    # "isServiceReady":Z
    :cond_2
    const-string/jumbo v2, "Error: empty result, EVENT_OEM_HOOK_SERVICE_READY"

    invoke-direct {p0, v2}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->loge(Ljava/lang/String;)V

    goto :goto_0

    .line 285
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :pswitch_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 286
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    if-eqz v0, :cond_3

    iget-object v2, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v2, :cond_3

    .line 287
    iget-object v2, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, Landroid/os/Message;

    invoke-direct {p0, v2}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->handleUnsolManualProvisionEvent(Landroid/os/Message;)V

    goto :goto_0

    .line 289
    :cond_3
    const-string/jumbo v2, "Error: empty result, UNSOL_MANUAL_PROVISION_STATUS_CHANGED"

    invoke-direct {p0, v2}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->loge(Ljava/lang/String;)V

    goto :goto_0

    .line 294
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :pswitch_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, " MANUAL_PROVISION_STATUS_CHANGED, pref["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "] = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->logd(Ljava/lang/String;)V

    .line 295
    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->getInstance()Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->updateUserPreferences()V

    .line 296
    iget v2, p1, Landroid/os/Message;->arg1:I

    iget v3, p1, Landroid/os/Message;->arg2:I

    invoke-direct {p0, v2, v3}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->broadcastManualProvisionStatusChanged(II)V

    goto/16 :goto_0

    .line 263
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method public isAllCardProvisionInfoReceived()Z
    .locals 5

    .prologue
    .line 589
    const/4 v2, 0x1

    .line 590
    .local v2, "received":Z
    const/4 v0, 0x0

    .local v0, "index":I
    :goto_0
    sget v3, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->mNumPhones:I

    if-ge v0, v3, :cond_1

    .line 591
    invoke-direct {p0, v0}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->getCurrentProvisioningStatus(I)I

    move-result v1

    .line 592
    .local v1, "provPref":I
    const/4 v3, -0x1

    if-eq v1, v3, :cond_0

    .line 593
    iget-object v3, p0, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->mSimIccId:[Ljava/lang/String;

    aget-object v3, v3, v0

    if-eqz v3, :cond_2

    .line 594
    const/4 v3, -0x2

    if-ne v1, v3, :cond_2

    .line 595
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "isAllCardProvisionInfoReceived, prov pref["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "] = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->logd(Ljava/lang/String;)V

    .line 596
    const/4 v2, 0x0

    .line 600
    .end local v1    # "provPref":I
    :cond_1
    return v2

    .line 590
    .restart local v1    # "provPref":I
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public isAnyProvisionRequestInProgress()Z
    .locals 1

    .prologue
    .line 583
    sget-object v0, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->mRequestInProgress:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public isFlexMapInProgress()Z
    .locals 4

    .prologue
    .line 571
    const/4 v1, 0x0

    .line 572
    .local v1, "retVal":Z
    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->getInstance()Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;

    move-result-object v0

    .line 574
    .local v0, "rcController":Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;
    if-eqz v0, :cond_0

    .line 575
    invoke-virtual {v0}, Lcom/qualcomm/qti/internal/telephony/QtiRadioCapabilityController;->isSetNWModeInProgress()Z

    move-result v1

    .line 576
    .local v1, "retVal":Z
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isFlexMapInProgress: = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->logd(Ljava/lang/String;)V

    .line 579
    .end local v1    # "retVal":Z
    :cond_0
    return v1
.end method

.method public registerForManualProvisionChanged(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 3
    .param p1, "handler"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 246
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 247
    .local v0, "r":Landroid/os/Registrant;
    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->mManualProvisionChangedRegistrants:Landroid/os/RegistrantList;

    monitor-enter v2

    .line 248
    :try_start_0
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->mManualProvisionChangedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 249
    invoke-virtual {v0}, Landroid/os/Registrant;->notifyRegistrant()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    .line 245
    return-void

    .line 247
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public unregisterForManualProvisionChanged(Landroid/os/Handler;)V
    .locals 2
    .param p1, "handler"    # Landroid/os/Handler;

    .prologue
    .line 254
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->mManualProvisionChangedRegistrants:Landroid/os/RegistrantList;

    monitor-enter v1

    .line 255
    :try_start_0
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->mManualProvisionChangedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 253
    return-void

    .line 254
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
