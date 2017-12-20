.class public Lcom/qualcomm/qti/internal/telephony/QtiSmsUsageMonitor;
.super Lcom/android/internal/telephony/SmsUsageMonitor;
.source "QtiSmsUsageMonitor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qualcomm/qti/internal/telephony/QtiSmsUsageMonitor$CallBackAdapter;
    }
.end annotation


# instance fields
.field private final mSmsSecurityService:Lcom/qualcomm/qti/internal/telephony/QtiSmsSecurityService;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/qualcomm/qti/internal/telephony/QtiSmsSecurityService;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "service"    # Lcom/qualcomm/qti/internal/telephony/QtiSmsSecurityService;

    .prologue
    .line 21
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SmsUsageMonitor;-><init>(Landroid/content/Context;)V

    .line 22
    iput-object p2, p0, Lcom/qualcomm/qti/internal/telephony/QtiSmsUsageMonitor;->mSmsSecurityService:Lcom/qualcomm/qti/internal/telephony/QtiSmsSecurityService;

    .line 20
    return-void
.end method


# virtual methods
.method public authorizeOutgoingSms(Landroid/content/pm/PackageInfo;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/SmsUsageMonitor$SmsAuthorizationCallback;Landroid/os/Handler;)V
    .locals 6
    .param p1, "packageInfo"    # Landroid/content/pm/PackageInfo;
    .param p2, "destinationAddress"    # Ljava/lang/String;
    .param p3, "message"    # Ljava/lang/String;
    .param p4, "callback"    # Lcom/android/internal/telephony/SmsUsageMonitor$SmsAuthorizationCallback;
    .param p5, "callbackHandler"    # Landroid/os/Handler;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiSmsUsageMonitor;->mSmsSecurityService:Lcom/qualcomm/qti/internal/telephony/QtiSmsSecurityService;

    .line 32
    new-instance v4, Lcom/qualcomm/qti/internal/telephony/QtiSmsUsageMonitor$CallBackAdapter;

    invoke-direct {v4, p4}, Lcom/qualcomm/qti/internal/telephony/QtiSmsUsageMonitor$CallBackAdapter;-><init>(Lcom/android/internal/telephony/SmsUsageMonitor$SmsAuthorizationCallback;)V

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p5

    .line 31
    invoke-virtual/range {v0 .. v5}, Lcom/qualcomm/qti/internal/telephony/QtiSmsSecurityService;->requestAuthorization(Landroid/content/pm/PackageInfo;Ljava/lang/String;Ljava/lang/String;Lcom/qualcomm/qti/internal/telephony/QtiSmsSecurityService$SmsSecurityServiceCallback;Landroid/os/Handler;)V

    .line 30
    return-void
.end method
