.class Lcom/android/server/policy/DeviceKeyHandler$3;
.super Landroid/hardware/camera2/CameraManager$TorchCallback;
.source "DeviceKeyHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/DeviceKeyHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/DeviceKeyHandler;


# direct methods
.method constructor <init>(Lcom/android/server/policy/DeviceKeyHandler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/policy/DeviceKeyHandler;

    .prologue
    .line 868
    iput-object p1, p0, Lcom/android/server/policy/DeviceKeyHandler$3;->this$0:Lcom/android/server/policy/DeviceKeyHandler;

    invoke-direct {p0}, Landroid/hardware/camera2/CameraManager$TorchCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onTorchModeChanged(Ljava/lang/String;Z)V
    .locals 3
    .param p1, "cameraId"    # Ljava/lang/String;
    .param p2, "enabled"    # Z

    .prologue
    .line 881
    invoke-static {}, Lcom/android/server/policy/DeviceKeyHandler;->-get0()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 882
    const-string/jumbo v0, "DeviceKeyHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onTorchModeChanged(): enabled = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 885
    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/DeviceKeyHandler$3;->this$0:Lcom/android/server/policy/DeviceKeyHandler;

    invoke-static {v0}, Lcom/android/server/policy/DeviceKeyHandler;->-get3(Lcom/android/server/policy/DeviceKeyHandler;)Z

    move-result v0

    if-eq v0, p2, :cond_1

    .line 886
    iget-object v0, p0, Lcom/android/server/policy/DeviceKeyHandler$3;->this$0:Lcom/android/server/policy/DeviceKeyHandler;

    invoke-static {v0, p2}, Lcom/android/server/policy/DeviceKeyHandler;->-set0(Lcom/android/server/policy/DeviceKeyHandler;Z)Z

    .line 880
    :cond_1
    return-void
.end method

.method public onTorchModeUnavailable(Ljava/lang/String;)V
    .locals 2
    .param p1, "cameraId"    # Ljava/lang/String;

    .prologue
    .line 876
    iget-object v0, p0, Lcom/android/server/policy/DeviceKeyHandler$3;->this$0:Lcom/android/server/policy/DeviceKeyHandler;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/server/policy/DeviceKeyHandler;->-set0(Lcom/android/server/policy/DeviceKeyHandler;Z)Z

    .line 871
    return-void
.end method
