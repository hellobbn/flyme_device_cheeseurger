.class public Lcom/qualcomm/qti/internal/telephony/QtiSmsSecurityService;
.super Lcom/android/internal/telephony/ISmsSecurityService$Stub;
.source "QtiSmsSecurityService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qualcomm/qti/internal/telephony/QtiSmsSecurityService$PendingRequestRecord;,
        Lcom/qualcomm/qti/internal/telephony/QtiSmsSecurityService$SecurityAgentRecord;,
        Lcom/qualcomm/qti/internal/telephony/QtiSmsSecurityService$SmsSecurityServiceCallback;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String;

.field public static final SERVICE_NAME:Ljava/lang/String; = "sms-sec"


# instance fields
.field private volatile mAgentRecord:Lcom/qualcomm/qti/internal/telephony/QtiSmsSecurityService$SecurityAgentRecord;

.field private final mContext:Landroid/content/Context;

.field private final mPendingRequests:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Landroid/os/IBinder;",
            "Lcom/qualcomm/qti/internal/telephony/QtiSmsSecurityService$PendingRequestRecord;",
            ">;"
        }
    .end annotation
.end field

.field private final mTimeoutMs:J


# direct methods
.method static synthetic -wrap0(Lcom/qualcomm/qti/internal/telephony/QtiSmsSecurityService;Lcom/android/internal/telephony/ISmsSecurityAgent;)Z
    .locals 1
    .param p1, "agent"    # Lcom/android/internal/telephony/ISmsSecurityAgent;

    .prologue
    invoke-direct {p0, p1}, Lcom/qualcomm/qti/internal/telephony/QtiSmsSecurityService;->doUnregisterSafe(Lcom/android/internal/telephony/ISmsSecurityAgent;)Z

    move-result v0

    return v0
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    const-class v0, Lcom/qualcomm/qti/internal/telephony/QtiSmsSecurityService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/qualcomm/qti/internal/telephony/QtiSmsSecurityService;->LOG_TAG:Ljava/lang/String;

    .line 24
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/android/internal/telephony/ISmsSecurityService$Stub;-><init>()V

    .line 43
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiSmsSecurityService;->mPendingRequests:Ljava/util/concurrent/ConcurrentHashMap;

    .line 44
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e00b5

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiSmsSecurityService;->mTimeoutMs:J

    .line 45
    iput-object p1, p0, Lcom/qualcomm/qti/internal/telephony/QtiSmsSecurityService;->mContext:Landroid/content/Context;

    .line 42
    return-void
.end method

.method private doUnregisterSafe(Lcom/android/internal/telephony/ISmsSecurityAgent;)Z
    .locals 4
    .param p1, "agent"    # Lcom/android/internal/telephony/ISmsSecurityAgent;

    .prologue
    .line 126
    const/4 v0, 0x0

    .line 127
    .local v0, "unregistered":Z
    monitor-enter p0

    .line 128
    :try_start_0
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiSmsSecurityService;->mAgentRecord:Lcom/qualcomm/qti/internal/telephony/QtiSmsSecurityService$SecurityAgentRecord;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiSmsSecurityService;->mAgentRecord:Lcom/qualcomm/qti/internal/telephony/QtiSmsSecurityService$SecurityAgentRecord;

    invoke-static {v1}, Lcom/qualcomm/qti/internal/telephony/QtiSmsSecurityService$SecurityAgentRecord;->-get0(Lcom/qualcomm/qti/internal/telephony/QtiSmsSecurityService$SecurityAgentRecord;)Lcom/android/internal/telephony/ISmsSecurityAgent;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/ISmsSecurityAgent;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-interface {p1}, Lcom/android/internal/telephony/ISmsSecurityAgent;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 129
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiSmsSecurityService;->mAgentRecord:Lcom/qualcomm/qti/internal/telephony/QtiSmsSecurityService$SecurityAgentRecord;

    invoke-static {v1}, Lcom/qualcomm/qti/internal/telephony/QtiSmsSecurityService$SecurityAgentRecord;->-get0(Lcom/qualcomm/qti/internal/telephony/QtiSmsSecurityService$SecurityAgentRecord;)Lcom/android/internal/telephony/ISmsSecurityAgent;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/ISmsSecurityAgent;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/QtiSmsSecurityService;->mAgentRecord:Lcom/qualcomm/qti/internal/telephony/QtiSmsSecurityService$SecurityAgentRecord;

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 130
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiSmsSecurityService;->mAgentRecord:Lcom/qualcomm/qti/internal/telephony/QtiSmsSecurityService$SecurityAgentRecord;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 131
    const/4 v0, 0x1

    :cond_0
    monitor-exit p0

    .line 134
    return v0

    .line 127
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method


# virtual methods
.method protected onRequestTimeout(Lcom/android/internal/telephony/SmsAuthorizationRequest;)V
    .locals 3
    .param p1, "request"    # Lcom/android/internal/telephony/SmsAuthorizationRequest;

    .prologue
    .line 119
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiSmsSecurityService;->mPendingRequests:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Lcom/android/internal/telephony/SmsAuthorizationRequest;->getToken()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qualcomm/qti/internal/telephony/QtiSmsSecurityService$PendingRequestRecord;

    .line 120
    .local v0, "record":Lcom/qualcomm/qti/internal/telephony/QtiSmsSecurityService$PendingRequestRecord;
    if-eqz v0, :cond_0

    .line 121
    invoke-virtual {v0}, Lcom/qualcomm/qti/internal/telephony/QtiSmsSecurityService$PendingRequestRecord;->invokeTimeout()V

    .line 118
    :cond_0
    return-void
.end method

.method public register(Lcom/android/internal/telephony/ISmsSecurityAgent;)Z
    .locals 4
    .param p1, "agent"    # Lcom/android/internal/telephony/ISmsSecurityAgent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 50
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiSmsSecurityService;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "com.qti.permission.AUTHORIZE_OUTGOING_SMS"

    sget-object v3, Lcom/qualcomm/qti/internal/telephony/QtiSmsSecurityService;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    const/4 v0, 0x0

    .line 52
    .local v0, "registered":Z
    monitor-enter p0

    .line 53
    :try_start_0
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiSmsSecurityService;->mAgentRecord:Lcom/qualcomm/qti/internal/telephony/QtiSmsSecurityService$SecurityAgentRecord;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiSmsSecurityService;->mAgentRecord:Lcom/qualcomm/qti/internal/telephony/QtiSmsSecurityService$SecurityAgentRecord;

    invoke-static {v1}, Lcom/qualcomm/qti/internal/telephony/QtiSmsSecurityService$SecurityAgentRecord;->-get0(Lcom/qualcomm/qti/internal/telephony/QtiSmsSecurityService$SecurityAgentRecord;)Lcom/android/internal/telephony/ISmsSecurityAgent;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/ISmsSecurityAgent;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-interface {p1}, Lcom/android/internal/telephony/ISmsSecurityAgent;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 58
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiSmsSecurityService;->mAgentRecord:Lcom/qualcomm/qti/internal/telephony/QtiSmsSecurityService$SecurityAgentRecord;

    if-nez v1, :cond_1

    .line 59
    new-instance v1, Lcom/qualcomm/qti/internal/telephony/QtiSmsSecurityService$SecurityAgentRecord;

    invoke-direct {v1, p1, p0}, Lcom/qualcomm/qti/internal/telephony/QtiSmsSecurityService$SecurityAgentRecord;-><init>(Lcom/android/internal/telephony/ISmsSecurityAgent;Lcom/qualcomm/qti/internal/telephony/QtiSmsSecurityService;)V

    iput-object v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiSmsSecurityService;->mAgentRecord:Lcom/qualcomm/qti/internal/telephony/QtiSmsSecurityService$SecurityAgentRecord;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 60
    const/4 v0, 0x1

    :cond_1
    monitor-exit p0

    .line 63
    return v0

    .line 54
    :cond_2
    :try_start_1
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiSmsSecurityService;->mAgentRecord:Lcom/qualcomm/qti/internal/telephony/QtiSmsSecurityService$SecurityAgentRecord;

    invoke-static {v1}, Lcom/qualcomm/qti/internal/telephony/QtiSmsSecurityService$SecurityAgentRecord;->-get0(Lcom/qualcomm/qti/internal/telephony/QtiSmsSecurityService$SecurityAgentRecord;)Lcom/android/internal/telephony/ISmsSecurityAgent;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/qualcomm/qti/internal/telephony/QtiSmsSecurityService;->unregister(Lcom/android/internal/telephony/ISmsSecurityAgent;)Z

    .line 55
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiSmsSecurityService;->mAgentRecord:Lcom/qualcomm/qti/internal/telephony/QtiSmsSecurityService$SecurityAgentRecord;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 52
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public requestAuthorization(Landroid/content/pm/PackageInfo;Ljava/lang/String;Ljava/lang/String;Lcom/qualcomm/qti/internal/telephony/QtiSmsSecurityService$SmsSecurityServiceCallback;Landroid/os/Handler;)V
    .locals 13
    .param p1, "packageInfo"    # Landroid/content/pm/PackageInfo;
    .param p2, "destinationAddress"    # Ljava/lang/String;
    .param p3, "message"    # Ljava/lang/String;
    .param p4, "callback"    # Lcom/qualcomm/qti/internal/telephony/QtiSmsSecurityService$SmsSecurityServiceCallback;
    .param p5, "callbackHandler"    # Landroid/os/Handler;

    .prologue
    .line 88
    const/4 v12, 0x0

    .line 90
    .local v12, "requested":Z
    new-instance v4, Landroid/os/Binder;

    invoke-direct {v4}, Landroid/os/Binder;-><init>()V

    .line 91
    .local v4, "token":Landroid/os/IBinder;
    new-instance v2, Lcom/android/internal/telephony/SmsAuthorizationRequest;

    .line 92
    iget-object v5, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    move-object v3, p0

    move-object v6, p2

    move-object/from16 v7, p3

    .line 91
    invoke-direct/range {v2 .. v7}, Lcom/android/internal/telephony/SmsAuthorizationRequest;-><init>(Lcom/android/internal/telephony/ISmsSecurityService;Landroid/os/IBinder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    .local v2, "request":Lcom/android/internal/telephony/SmsAuthorizationRequest;
    new-instance v11, Lcom/qualcomm/qti/internal/telephony/QtiSmsSecurityService$PendingRequestRecord;

    move-object/from16 v0, p4

    move-object/from16 v1, p5

    invoke-direct {v11, p0, v2, v0, v1}, Lcom/qualcomm/qti/internal/telephony/QtiSmsSecurityService$PendingRequestRecord;-><init>(Lcom/qualcomm/qti/internal/telephony/QtiSmsSecurityService;Lcom/android/internal/telephony/SmsAuthorizationRequest;Lcom/qualcomm/qti/internal/telephony/QtiSmsSecurityService$SmsSecurityServiceCallback;Landroid/os/Handler;)V

    .line 96
    .local v11, "requestRecord":Lcom/qualcomm/qti/internal/telephony/QtiSmsSecurityService$PendingRequestRecord;
    iget-object v3, p0, Lcom/qualcomm/qti/internal/telephony/QtiSmsSecurityService;->mPendingRequests:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3, v4, v11}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    iget-object v10, p0, Lcom/qualcomm/qti/internal/telephony/QtiSmsSecurityService;->mAgentRecord:Lcom/qualcomm/qti/internal/telephony/QtiSmsSecurityService$SecurityAgentRecord;

    .line 99
    .local v10, "record":Lcom/qualcomm/qti/internal/telephony/QtiSmsSecurityService$SecurityAgentRecord;
    if-eqz v10, :cond_0

    .line 100
    iget-wide v6, p0, Lcom/qualcomm/qti/internal/telephony/QtiSmsSecurityService;->mTimeoutMs:J

    invoke-virtual {v11, v6, v7}, Lcom/qualcomm/qti/internal/telephony/QtiSmsSecurityService$PendingRequestRecord;->scheduleTimeout(J)V

    .line 102
    :try_start_0
    invoke-static {v10}, Lcom/qualcomm/qti/internal/telephony/QtiSmsSecurityService$SecurityAgentRecord;->-get0(Lcom/qualcomm/qti/internal/telephony/QtiSmsSecurityService$SecurityAgentRecord;)Lcom/android/internal/telephony/ISmsSecurityAgent;

    move-result-object v3

    invoke-interface {v3, v2}, Lcom/android/internal/telephony/ISmsSecurityAgent;->onAuthorize(Lcom/android/internal/telephony/SmsAuthorizationRequest;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 103
    const/4 v12, 0x1

    .line 110
    :cond_0
    :goto_0
    if-nez v12, :cond_1

    .line 111
    iget-object v3, p0, Lcom/qualcomm/qti/internal/telephony/QtiSmsSecurityService;->mPendingRequests:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2}, Lcom/android/internal/telephony/SmsAuthorizationRequest;->getToken()Landroid/os/IBinder;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/qualcomm/qti/internal/telephony/QtiSmsSecurityService$PendingRequestRecord;

    .line 112
    .local v9, "failedRequest":Lcom/qualcomm/qti/internal/telephony/QtiSmsSecurityService$PendingRequestRecord;
    if-eqz v9, :cond_1

    .line 113
    const/4 v3, 0x1

    invoke-virtual {v9, v3}, Lcom/qualcomm/qti/internal/telephony/QtiSmsSecurityService$PendingRequestRecord;->invokeCallback(Z)V

    .line 87
    .end local v9    # "failedRequest":Lcom/qualcomm/qti/internal/telephony/QtiSmsSecurityService$PendingRequestRecord;
    :cond_1
    return-void

    .line 104
    :catch_0
    move-exception v8

    .line 105
    .local v8, "e":Landroid/os/RemoteException;
    sget-object v3, Lcom/qualcomm/qti/internal/telephony/QtiSmsSecurityService;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v5, "Unable to request SMS authentication."

    invoke-static {v3, v5, v8}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 106
    invoke-virtual {v11}, Lcom/qualcomm/qti/internal/telephony/QtiSmsSecurityService$PendingRequestRecord;->cancelTimeout()V

    goto :goto_0
.end method

.method public sendResponse(Lcom/android/internal/telephony/SmsAuthorizationRequest;Z)Z
    .locals 4
    .param p1, "request"    # Lcom/android/internal/telephony/SmsAuthorizationRequest;
    .param p2, "authorized"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 75
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiSmsSecurityService;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "com.qti.permission.AUTHORIZE_OUTGOING_SMS"

    sget-object v3, Lcom/qualcomm/qti/internal/telephony/QtiSmsSecurityService;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiSmsSecurityService;->mPendingRequests:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Lcom/android/internal/telephony/SmsAuthorizationRequest;->getToken()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qualcomm/qti/internal/telephony/QtiSmsSecurityService$PendingRequestRecord;

    .line 77
    .local v0, "record":Lcom/qualcomm/qti/internal/telephony/QtiSmsSecurityService$PendingRequestRecord;
    if-eqz v0, :cond_0

    .line 78
    invoke-virtual {v0, p2}, Lcom/qualcomm/qti/internal/telephony/QtiSmsSecurityService$PendingRequestRecord;->invokeCallback(Z)V

    .line 80
    :cond_0
    if-eqz v0, :cond_1

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public unregister(Lcom/android/internal/telephony/ISmsSecurityAgent;)Z
    .locals 3
    .param p1, "agent"    # Lcom/android/internal/telephony/ISmsSecurityAgent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 68
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiSmsSecurityService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "com.qti.permission.AUTHORIZE_OUTGOING_SMS"

    sget-object v2, Lcom/qualcomm/qti/internal/telephony/QtiSmsSecurityService;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    invoke-direct {p0, p1}, Lcom/qualcomm/qti/internal/telephony/QtiSmsSecurityService;->doUnregisterSafe(Lcom/android/internal/telephony/ISmsSecurityAgent;)Z

    move-result v0

    return v0
.end method
