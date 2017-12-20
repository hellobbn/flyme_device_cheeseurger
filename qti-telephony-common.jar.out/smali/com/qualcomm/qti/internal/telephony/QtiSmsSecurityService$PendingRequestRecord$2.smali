.class Lcom/qualcomm/qti/internal/telephony/QtiSmsSecurityService$PendingRequestRecord$2;
.super Ljava/lang/Object;
.source "QtiSmsSecurityService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qualcomm/qti/internal/telephony/QtiSmsSecurityService$PendingRequestRecord;->invokeCallback(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/qualcomm/qti/internal/telephony/QtiSmsSecurityService$PendingRequestRecord;

.field final synthetic val$authorized:Z


# direct methods
.method constructor <init>(Lcom/qualcomm/qti/internal/telephony/QtiSmsSecurityService$PendingRequestRecord;Z)V
    .locals 0
    .param p1, "this$1"    # Lcom/qualcomm/qti/internal/telephony/QtiSmsSecurityService$PendingRequestRecord;
    .param p2, "val$authorized"    # Z

    .prologue
    .line 177
    iput-object p1, p0, Lcom/qualcomm/qti/internal/telephony/QtiSmsSecurityService$PendingRequestRecord$2;->this$1:Lcom/qualcomm/qti/internal/telephony/QtiSmsSecurityService$PendingRequestRecord;

    iput-boolean p2, p0, Lcom/qualcomm/qti/internal/telephony/QtiSmsSecurityService$PendingRequestRecord$2;->val$authorized:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 180
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiSmsSecurityService$PendingRequestRecord$2;->this$1:Lcom/qualcomm/qti/internal/telephony/QtiSmsSecurityService$PendingRequestRecord;

    invoke-static {v0}, Lcom/qualcomm/qti/internal/telephony/QtiSmsSecurityService$PendingRequestRecord;->-get0(Lcom/qualcomm/qti/internal/telephony/QtiSmsSecurityService$PendingRequestRecord;)Lcom/qualcomm/qti/internal/telephony/QtiSmsSecurityService$SmsSecurityServiceCallback;

    move-result-object v0

    iget-boolean v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiSmsSecurityService$PendingRequestRecord$2;->val$authorized:Z

    invoke-interface {v0, v1}, Lcom/qualcomm/qti/internal/telephony/QtiSmsSecurityService$SmsSecurityServiceCallback;->onAuthorizationResult(Z)V

    .line 179
    return-void
.end method
