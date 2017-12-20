.class final Lcom/qualcomm/qti/internal/telephony/QtiSmsUsageMonitor$CallBackAdapter;
.super Ljava/lang/Object;
.source "QtiSmsUsageMonitor.java"

# interfaces
.implements Lcom/qualcomm/qti/internal/telephony/QtiSmsSecurityService$SmsSecurityServiceCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qualcomm/qti/internal/telephony/QtiSmsUsageMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "CallBackAdapter"
.end annotation


# instance fields
.field private final mTarget:Lcom/android/internal/telephony/SmsUsageMonitor$SmsAuthorizationCallback;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/SmsUsageMonitor$SmsAuthorizationCallback;)V
    .locals 0
    .param p1, "callback"    # Lcom/android/internal/telephony/SmsUsageMonitor$SmsAuthorizationCallback;

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/qualcomm/qti/internal/telephony/QtiSmsUsageMonitor$CallBackAdapter;->mTarget:Lcom/android/internal/telephony/SmsUsageMonitor$SmsAuthorizationCallback;

    .line 37
    return-void
.end method


# virtual methods
.method public onAuthorizationResult(Z)V
    .locals 1
    .param p1, "authorized"    # Z

    .prologue
    .line 43
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiSmsUsageMonitor$CallBackAdapter;->mTarget:Lcom/android/internal/telephony/SmsUsageMonitor$SmsAuthorizationCallback;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/SmsUsageMonitor$SmsAuthorizationCallback;->onAuthorizationResult(Z)V

    .line 42
    return-void
.end method
