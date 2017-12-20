.class public Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;
.super Ljava/lang/Object;
.source "QtiRilInterface.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qualcomm/qti/internal/telephony/QtiRilInterface$1;,
        Lcom/qualcomm/qti/internal/telephony/QtiRilInterface$DepersoCallback;,
        Lcom/qualcomm/qti/internal/telephony/QtiRilInterface$OmhCallProfileCallback;
    }
.end annotation


# static fields
.field private static final BYTE_SIZE:I = 0x1

.field private static final INT_SIZE:I = 0x4

.field private static final LOG_TAG:Ljava/lang/String; = "QtiRilInterface"

.field private static final NULL_TERMINATOR:C = '\u0000'

.field private static final NULL_TERMINATOR_LENGTH:I = 0x1

.field private static mIsServiceReady:Z

.field private static sInstance:Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;


# instance fields
.field private OMH_FAKE_QCRIL_HOOK_RESPONSE:Ljava/lang/String;

.field private mQcRilHook:Lcom/qualcomm/qcrilhook/QcRilHook;

.field private mQcrilHookCb:Lcom/qualcomm/qcrilhook/QcRilHookCallback;

.field private mServiceReadyRegistrantList:Landroid/os/RegistrantList;


# direct methods
.method static synthetic -get0(Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;->OMH_FAKE_QCRIL_HOOK_RESPONSE:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get1()Z
    .locals 1

    sget-boolean v0, Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;->mIsServiceReady:Z

    return v0
.end method

.method static synthetic -get2(Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;)Landroid/os/RegistrantList;
    .locals 1

    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;->mServiceReadyRegistrantList:Landroid/os/RegistrantList;

    return-object v0
.end method

.method static synthetic -set0(Z)Z
    .locals 0

    sput-boolean p0, Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;->mIsServiceReady:Z

    return p0
.end method

.method static synthetic -set1(Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;)Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;
    .locals 0

    sput-object p0, Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;->sInstance:Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;

    return-object p0
.end method

.method static synthetic -wrap0(Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;I)Ljava/util/ArrayList;
    .locals 1
    .param p1, "profileId"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;->getFakeOmhProfiles(I)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;[B)Ljava/util/ArrayList;
    .locals 1
    .param p1, "buffer"    # [B

    .prologue
    invoke-direct {p0, p1}, Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;->parseOmhProfiles([B)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap2(Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;Ljava/lang/String;)V
    .locals 0
    .param p1, "string"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1}, Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap3(Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;Ljava/lang/String;)V
    .locals 0
    .param p1, "string"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1}, Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;->logi(Ljava/lang/String;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 52
    const/4 v0, 0x0

    sput-object v0, Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;->sInstance:Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;

    .line 56
    const/4 v0, 0x0

    sput-boolean v0, Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;->mIsServiceReady:Z

    .line 42
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    const-string/jumbo v0, "persist.test.omh.fakeprofile"

    iput-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;->OMH_FAKE_QCRIL_HOOK_RESPONSE:Ljava/lang/String;

    .line 62
    new-instance v0, Lcom/qualcomm/qti/internal/telephony/QtiRilInterface$1;

    invoke-direct {v0, p0}, Lcom/qualcomm/qti/internal/telephony/QtiRilInterface$1;-><init>(Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;)V

    iput-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;->mQcrilHookCb:Lcom/qualcomm/qcrilhook/QcRilHookCallback;

    .line 95
    const-string/jumbo v0, " in constructor "

    invoke-direct {p0, v0}, Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;->logd(Ljava/lang/String;)V

    .line 97
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;->mServiceReadyRegistrantList:Landroid/os/RegistrantList;

    .line 98
    new-instance v0, Lcom/qualcomm/qcrilhook/QcRilHook;

    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;->mQcrilHookCb:Lcom/qualcomm/qcrilhook/QcRilHookCallback;

    invoke-direct {v0, p1, v1}, Lcom/qualcomm/qcrilhook/QcRilHook;-><init>(Landroid/content/Context;Lcom/qualcomm/qcrilhook/QcRilHookCallback;)V

    iput-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;->mQcRilHook:Lcom/qualcomm/qcrilhook/QcRilHook;

    .line 94
    return-void
.end method

.method private getFakeOmhProfiles(I)Ljava/util/ArrayList;
    .locals 8
    .param p1, "profileId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiApnSetting;",
            ">;"
        }
    .end annotation

    .prologue
    .line 149
    const/4 v4, 0x2

    const/16 v5, 0x20

    const/16 v6, 0x40

    const/4 v7, 0x1

    filled-new-array {v4, v5, v6, v7}, [I

    move-result-object v1

    .line 151
    .local v1, "prioritySortedProfiles":[I
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 152
    .local v3, "profilesList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiApnSetting;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v4, v1

    if-ge v0, v4, :cond_0

    .line 153
    aget v4, v1, v0

    if-ne v4, p1, :cond_1

    .line 154
    new-instance v2, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiApnProfileOmh;

    aget v4, v1, v0

    invoke-direct {v2, v4, v0}, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiApnProfileOmh;-><init>(II)V

    .line 155
    .local v2, "profile":Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiApnProfileOmh;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "profile(id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ") ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;->logi(Ljava/lang/String;)V

    .line 156
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 160
    .end local v2    # "profile":Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiApnProfileOmh;
    :cond_0
    return-object v3

    .line 152
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const-class v1, Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;

    monitor-enter v1

    .line 82
    :try_start_0
    sget-object v0, Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;->sInstance:Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;

    if-nez v0, :cond_0

    .line 83
    new-instance v0, Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;

    invoke-direct {v0, p0}, Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;->sInstance:Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;

    .line 91
    :goto_0
    sget-object v0, Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;->sInstance:Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 87
    :cond_0
    :try_start_1
    const-string/jumbo v0, "QtiRilInterface"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "instance = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;->sInstance:Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private logd(Ljava/lang/String;)V
    .locals 1
    .param p1, "string"    # Ljava/lang/String;

    .prologue
    .line 366
    const-string/jumbo v0, "QtiRilInterface"

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 365
    return-void
.end method

.method private loge(Ljava/lang/String;)V
    .locals 1
    .param p1, "string"    # Ljava/lang/String;

    .prologue
    .line 374
    const-string/jumbo v0, "QtiRilInterface"

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 373
    return-void
.end method

.method private logi(Ljava/lang/String;)V
    .locals 1
    .param p1, "string"    # Ljava/lang/String;

    .prologue
    .line 370
    const-string/jumbo v0, "QtiRilInterface"

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 369
    return-void
.end method

.method private parseOmhProfiles([B)Ljava/util/ArrayList;
    .locals 9
    .param p1, "buffer"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiApnSetting;",
            ">;"
        }
    .end annotation

    .prologue
    .line 122
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 123
    .local v6, "profilesList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiApnSetting;>;"
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 124
    .local v0, "byteBuf":Ljava/nio/ByteBuffer;
    if-eqz v0, :cond_0

    .line 125
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 127
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Data received: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;->logi(Ljava/lang/String;)V

    .line 129
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v2

    .line 131
    .local v2, "nProfiles":I
    const/4 v5, 0x0

    .line 132
    .local v5, "profileId":I
    const/4 v3, 0x0

    .line 134
    .local v3, "priority":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 135
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v5

    .line 136
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v3

    .line 137
    new-instance v4, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiApnProfileOmh;

    invoke-direct {v4, v5, v3}, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiApnProfileOmh;-><init>(II)V

    .line 138
    .local v4, "profile":Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiApnProfileOmh;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "getOmhCallProfile "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ":"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;->logi(Ljava/lang/String;)V

    .line 139
    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 134
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 143
    .end local v1    # "i":I
    .end local v2    # "nProfiles":I
    .end local v3    # "priority":I
    .end local v4    # "profile":Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiApnProfileOmh;
    .end local v5    # "profileId":I
    :cond_0
    return-object v6
.end method


# virtual methods
.method public getMaxDataAllowed()I
    .locals 5

    .prologue
    .line 290
    const/4 v1, 0x0

    .line 291
    .local v1, "maxData":I
    iget-object v3, p0, Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;->mQcRilHook:Lcom/qualcomm/qcrilhook/QcRilHook;

    .line 292
    const v4, 0x8005d

    .line 291
    invoke-virtual {v3, v4}, Lcom/qualcomm/qcrilhook/QcRilHook;->sendQcRilHookMsg(I)Landroid/os/AsyncResult;

    move-result-object v0

    .line 293
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v3, :cond_0

    iget-object v3, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v3, :cond_0

    .line 294
    iget-object v2, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [B

    .line 295
    .local v2, "response":[B
    invoke-static {v2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    .line 298
    .end local v2    # "response":[B
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getMaxDataAllowed maxData = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;->logi(Ljava/lang/String;)V

    .line 299
    return v1
.end method

.method public getOmhCallProfile(ILandroid/os/Message;I)V
    .locals 5
    .param p1, "modemApnType"    # I
    .param p2, "callbackMsg"    # Landroid/os/Message;
    .param p3, "phoneId"    # I

    .prologue
    .line 198
    const-string/jumbo v3, "getOmhCallProfile()"

    invoke-direct {p0, v3}, Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;->logi(Ljava/lang/String;)V

    .line 199
    const/4 v3, 0x4

    new-array v2, v3, [B

    .line 200
    .local v2, "requestData":[B
    iget-object v3, p0, Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;->mQcRilHook:Lcom/qualcomm/qcrilhook/QcRilHook;

    invoke-static {v2}, Lcom/qualcomm/qcrilhook/QcRilHook;->createBufferWithNativeByteOrder([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 202
    .local v1, "reqBuffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v1, p1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 203
    new-instance v0, Lcom/qualcomm/qti/internal/telephony/QtiRilInterface$OmhCallProfileCallback;

    invoke-direct {v0, p0, p1, p2}, Lcom/qualcomm/qti/internal/telephony/QtiRilInterface$OmhCallProfileCallback;-><init>(Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;ILandroid/os/Message;)V

    .line 205
    .local v0, "oemHookCb":Lcom/qualcomm/qcrilhook/OemHookCallback;
    iget-object v3, p0, Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;->mQcRilHook:Lcom/qualcomm/qcrilhook/QcRilHook;

    .line 206
    const v4, 0x800ca

    .line 205
    invoke-virtual {v3, v4, v2, v0, p3}, Lcom/qualcomm/qcrilhook/QcRilHook;->sendQcRilHookMsgAsync(I[BLcom/qualcomm/qcrilhook/OemHookCallback;I)V

    .line 197
    return-void
.end method

.method public getUiccIccId(I)Ljava/lang/String;
    .locals 6
    .param p1, "phoneId"    # I

    .prologue
    .line 274
    const/4 v1, 0x0

    .line 275
    .local v1, "iccId":Ljava/lang/String;
    const/4 v4, 0x4

    new-array v3, v4, [B

    .line 276
    .local v3, "requestData":[B
    iget-object v4, p0, Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;->mQcRilHook:Lcom/qualcomm/qcrilhook/QcRilHook;

    invoke-static {v3}, Lcom/qualcomm/qcrilhook/QcRilHook;->createBufferWithNativeByteOrder([B)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 278
    .local v2, "reqBuffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v2, p1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 279
    iget-object v4, p0, Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;->mQcRilHook:Lcom/qualcomm/qcrilhook/QcRilHook;

    .line 280
    const v5, 0x8005c

    .line 279
    invoke-virtual {v4, v5, v3, p1}, Lcom/qualcomm/qcrilhook/QcRilHook;->sendQcRilHookMsg(I[BI)Landroid/os/AsyncResult;

    move-result-object v0

    .line 281
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v4, :cond_0

    iget-object v4, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v4, :cond_0

    .line 282
    new-instance v1, Ljava/lang/String;

    .end local v1    # "iccId":Ljava/lang/String;
    iget-object v4, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v4, [B

    invoke-direct {v1, v4}, Ljava/lang/String;-><init>([B)V

    .line 285
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "getUiccIccId iccId["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "] = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;->logi(Ljava/lang/String;)V

    .line 286
    return-object v1
.end method

.method public getUiccProvisionPreference(I)Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner$UiccProvisionStatus;
    .locals 6
    .param p1, "phoneId"    # I

    .prologue
    .line 102
    new-instance v2, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner$UiccProvisionStatus;

    invoke-direct {v2}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner$UiccProvisionStatus;-><init>()V

    .line 103
    .local v2, "provStatus":Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner$UiccProvisionStatus;
    const/4 v4, 0x0

    new-array v3, v4, [B

    .line 105
    .local v3, "requestData":[B
    iget-object v4, p0, Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;->mQcRilHook:Lcom/qualcomm/qcrilhook/QcRilHook;

    .line 106
    const v5, 0x8005a

    .line 105
    invoke-virtual {v4, v5, v3, p1}, Lcom/qualcomm/qcrilhook/QcRilHook;->sendQcRilHookMsg(I[BI)Landroid/os/AsyncResult;

    move-result-object v0

    .line 107
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v4, :cond_0

    iget-object v4, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v4, :cond_0

    .line 108
    iget-object v4, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v4, [B

    invoke-static {v4}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 109
    .local v1, "byteBuf":Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 111
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Data received: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;->logd(Ljava/lang/String;)V

    .line 113
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v4

    invoke-virtual {v2, v4}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner$UiccProvisionStatus;->setUserPreference(I)V

    .line 114
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v4

    invoke-virtual {v2, v4}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner$UiccProvisionStatus;->setCurrentState(I)V

    .line 117
    .end local v1    # "byteBuf":Ljava/nio/ByteBuffer;
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "get pref, phoneId "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " exception "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;->logi(Ljava/lang/String;)V

    .line 118
    return-object v2
.end method

.method public isServiceReady()Z
    .locals 1

    .prologue
    .line 333
    sget-boolean v0, Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;->mIsServiceReady:Z

    return v0
.end method

.method public qcRilSendDDSInfo(II)V
    .locals 1
    .param p1, "ddsPhoneId"    # I
    .param p2, "rilId"    # I

    .prologue
    .line 354
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;->mQcRilHook:Lcom/qualcomm/qcrilhook/QcRilHook;

    invoke-virtual {v0, p1, p2}, Lcom/qualcomm/qcrilhook/QcRilHook;->qcRilSendDDSInfo(II)Z

    .line 353
    return-void
.end method

.method public registerForServiceReadyEvent(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 4
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v3, 0x0

    .line 345
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 347
    .local v0, "r":Landroid/os/Registrant;
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;->mServiceReadyRegistrantList:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 348
    invoke-virtual {p0}, Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;->isServiceReady()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 349
    new-instance v1, Landroid/os/AsyncResult;

    sget-boolean v2, Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;->mIsServiceReady:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {v1, v3, v2, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Landroid/os/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    .line 344
    :cond_0
    return-void
.end method

.method public registerForUnsol(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "handler"    # Landroid/os/Handler;
    .param p2, "event"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 337
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;->mQcRilHook:Lcom/qualcomm/qcrilhook/QcRilHook;

    invoke-static {p1, p2, p3}, Lcom/qualcomm/qcrilhook/QcRilHook;->register(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 336
    return-void
.end method

.method public sendPhoneStatus(II)V
    .locals 6
    .param p1, "isReady"    # I
    .param p2, "phoneId"    # I

    .prologue
    .line 303
    const/4 v1, 0x0

    .line 304
    .local v1, "iccId":Ljava/lang/String;
    const/4 v4, 0x1

    new-array v3, v4, [B

    .line 305
    .local v3, "requestData":[B
    iget-object v4, p0, Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;->mQcRilHook:Lcom/qualcomm/qcrilhook/QcRilHook;

    invoke-static {v3}, Lcom/qualcomm/qcrilhook/QcRilHook;->createBufferWithNativeByteOrder([B)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 307
    .local v2, "reqBuffer":Ljava/nio/ByteBuffer;
    int-to-byte v4, p1

    invoke-virtual {v2, v4}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 308
    iget-object v4, p0, Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;->mQcRilHook:Lcom/qualcomm/qcrilhook/QcRilHook;

    .line 309
    const v5, 0x8001a

    .line 308
    invoke-virtual {v4, v5, v3, p2}, Lcom/qualcomm/qcrilhook/QcRilHook;->sendQcRilHookMsg(I[BI)Landroid/os/AsyncResult;

    move-result-object v0

    .line 302
    .local v0, "ar":Landroid/os/AsyncResult;
    return-void
.end method

.method setLocalCallHold(IZ)Z
    .locals 1
    .param p1, "phoneId"    # I
    .param p2, "enable"    # Z

    .prologue
    .line 362
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;->mQcRilHook:Lcom/qualcomm/qcrilhook/QcRilHook;

    invoke-virtual {v0, p1, p2}, Lcom/qualcomm/qcrilhook/QcRilHook;->setLocalCallHold(IZ)Z

    move-result v0

    return v0
.end method

.method public setUiccProvisionPreference(II)Z
    .locals 6
    .param p1, "userPref"    # I
    .param p2, "phoneId"    # I

    .prologue
    .line 314
    const/4 v3, 0x0

    .line 315
    .local v3, "retval":Z
    const/16 v4, 0x8

    new-array v2, v4, [B

    .line 316
    .local v2, "requestData":[B
    iget-object v4, p0, Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;->mQcRilHook:Lcom/qualcomm/qcrilhook/QcRilHook;

    invoke-static {v2}, Lcom/qualcomm/qcrilhook/QcRilHook;->createBufferWithNativeByteOrder([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 318
    .local v1, "reqBuffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v1, p1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 319
    invoke-virtual {v1, p2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 321
    iget-object v4, p0, Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;->mQcRilHook:Lcom/qualcomm/qcrilhook/QcRilHook;

    .line 322
    const v5, 0x8005b

    .line 321
    invoke-virtual {v4, v5, v2, p2}, Lcom/qualcomm/qcrilhook/QcRilHook;->sendQcRilHookMsg(I[BI)Landroid/os/AsyncResult;

    move-result-object v0

    .line 323
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v4, :cond_0

    .line 324
    const/4 v3, 0x1

    .line 327
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "set provision userPref "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " phoneId "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 328
    const-string/jumbo v5, " exception: "

    .line 327
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 328
    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 327
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;->logi(Ljava/lang/String;)V

    .line 329
    return v3
.end method

.method public supplyIccDepersonalization(Ljava/lang/String;Ljava/lang/String;Lorg/codeaurora/internal/IDepersoResCallback;I)V
    .locals 8
    .param p1, "netpin"    # Ljava/lang/String;
    .param p2, "type"    # Ljava/lang/String;
    .param p3, "callback"    # Lorg/codeaurora/internal/IDepersoResCallback;
    .param p4, "phoneId"    # I

    .prologue
    const/4 v7, 0x0

    .line 243
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "supplyDepersonalization: netpin = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " type = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 244
    const-string/jumbo v6, "phoneId = "

    .line 243
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;->logd(Ljava/lang/String;)V

    .line 246
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 247
    .local v1, "msg":Landroid/os/Message;
    const/4 v3, 0x0

    .line 250
    .local v3, "payload":[B
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v6, v5, 0x1

    .line 251
    if-nez p1, :cond_1

    const/4 v5, 0x1

    .line 250
    :goto_0
    add-int v4, v6, v5

    .line 258
    .local v4, "payloadLength":I
    new-array v3, v4, [B

    .line 259
    .local v3, "payload":[B
    iget-object v5, p0, Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;->mQcRilHook:Lcom/qualcomm/qcrilhook/QcRilHook;

    invoke-static {v3}, Lcom/qualcomm/qcrilhook/QcRilHook;->createBufferWithNativeByteOrder([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 261
    .local v0, "buf":Ljava/nio/ByteBuffer;
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 262
    invoke-virtual {v0, v7}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 264
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 265
    :cond_0
    invoke-virtual {v0, v7}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 267
    new-instance v2, Lcom/qualcomm/qti/internal/telephony/QtiRilInterface$DepersoCallback;

    invoke-direct {v2, p0, p3, v1}, Lcom/qualcomm/qti/internal/telephony/QtiRilInterface$DepersoCallback;-><init>(Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;Lorg/codeaurora/internal/IDepersoResCallback;Landroid/os/Message;)V

    .line 268
    .local v2, "oemHookCb":Lcom/qualcomm/qcrilhook/OemHookCallback;
    iget-object v5, p0, Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;->mQcRilHook:Lcom/qualcomm/qcrilhook/QcRilHook;

    .line 269
    const v6, 0x800d8

    .line 268
    invoke-virtual {v5, v6, v3, v2, p4}, Lcom/qualcomm/qcrilhook/QcRilHook;->sendQcRilHookMsgAsync(I[BLcom/qualcomm/qcrilhook/OemHookCallback;I)V

    .line 242
    return-void

    .line 254
    .end local v0    # "buf":Ljava/nio/ByteBuffer;
    .end local v2    # "oemHookCb":Lcom/qualcomm/qcrilhook/OemHookCallback;
    .end local v4    # "payloadLength":I
    .local v3, "payload":[B
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    array-length v5, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_0
.end method

.method public unRegisterForServiceReadyEvent(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 358
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;->mServiceReadyRegistrantList:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 357
    return-void
.end method

.method public unRegisterForUnsol(Landroid/os/Handler;)V
    .locals 1
    .param p1, "handler"    # Landroid/os/Handler;

    .prologue
    .line 341
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;->mQcRilHook:Lcom/qualcomm/qcrilhook/QcRilHook;

    invoke-static {p1}, Lcom/qualcomm/qcrilhook/QcRilHook;->unregister(Landroid/os/Handler;)V

    .line 340
    return-void
.end method
