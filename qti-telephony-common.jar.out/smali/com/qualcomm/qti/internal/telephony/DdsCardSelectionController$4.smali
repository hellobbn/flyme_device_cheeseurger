.class Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController$4;
.super Landroid/database/ContentObserver;
.source "DdsCardSelectionController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;


# direct methods
.method constructor <init>(Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;Landroid/os/Handler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;
    .param p2, "$anonymous0"    # Landroid/os/Handler;

    .prologue
    .line 320
    iput-object p1, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController$4;->this$0:Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 10
    .param p1, "selfChange"    # Z

    .prologue
    const-wide/16 v8, 0xbb8

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/16 v4, 0x1f

    .line 323
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController$4;->this$0:Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;

    invoke-static {v1}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->-get4(Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 324
    const-string/jumbo v2, "display_ctrl_psensor_positive"

    .line 323
    invoke-static {v1, v2, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v6, :cond_0

    .line 324
    const/4 v0, 0x1

    .line 325
    .local v0, "mPSensorPositive":Z
    :goto_0
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController$4;->this$0:Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mPSensorPositive = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->-wrap9(Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;Ljava/lang/String;)V

    .line 326
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController$4;->this$0:Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;

    const-wide/16 v2, 0x1770

    invoke-static {v1, v2, v3}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->-wrap3(Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;J)V

    .line 327
    if-eqz v0, :cond_1

    .line 329
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController$4;->this$0:Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;

    invoke-static {v1}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->-get6(Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 330
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController$4;->this$0:Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;

    invoke-static {v1}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->-get6(Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController$4;->this$0:Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;

    invoke-static {v2}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->-get6(Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v4, v5, v5}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2, v8, v9}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 322
    :goto_1
    return-void

    .line 324
    .end local v0    # "mPSensorPositive":Z
    :cond_0
    const/4 v0, 0x0

    .restart local v0    # "mPSensorPositive":Z
    goto :goto_0

    .line 334
    :cond_1
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController$4;->this$0:Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;

    invoke-static {v1}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->-get6(Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 335
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController$4;->this$0:Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;

    invoke-static {v1}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->-get6(Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController$4;->this$0:Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;

    invoke-static {v2}, Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;->-get6(Lcom/qualcomm/qti/internal/telephony/DdsCardSelectionController;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v4, v6, v6}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2, v8, v9}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_1
.end method
