.class Lcom/android/server/hdmi/DeviceDiscoveryAction$1;
.super Ljava/lang/Object;
.source "DeviceDiscoveryAction.java"

# interfaces
.implements Lcom/android/server/hdmi/HdmiControlService$DevicePollingCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/hdmi/DeviceDiscoveryAction;->start()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/hdmi/DeviceDiscoveryAction;


# direct methods
.method constructor <init>(Lcom/android/server/hdmi/DeviceDiscoveryAction;)V
    .registers 2

    .prologue
    .line 108
    iput-object p1, p0, this$0:Lcom/android/server/hdmi/DeviceDiscoveryAction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPollingFinished(Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 111
    .local p1, "ackedAddress":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 112
    const-string v0, "DeviceDiscoveryAction"

    const-string v1, "No device is detected."

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    iget-object v0, p0, this$0:Lcom/android/server/hdmi/DeviceDiscoveryAction;

    # invokes: Lcom/android/server/hdmi/DeviceDiscoveryAction;->wrapUpAndFinish()V
    invoke-static {v0}, Lcom/android/server/hdmi/DeviceDiscoveryAction;->access$000(Lcom/android/server/hdmi/DeviceDiscoveryAction;)V

    .line 120
    :goto_12
    return-void

    .line 117
    :cond_13
    const-string v0, "DeviceDiscoveryAction"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Device detected: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    iget-object v0, p0, this$0:Lcom/android/server/hdmi/DeviceDiscoveryAction;

    # invokes: Lcom/android/server/hdmi/DeviceDiscoveryAction;->allocateDevices(Ljava/util/List;)V
    invoke-static {v0, p1}, Lcom/android/server/hdmi/DeviceDiscoveryAction;->access$100(Lcom/android/server/hdmi/DeviceDiscoveryAction;Ljava/util/List;)V

    .line 119
    iget-object v0, p0, this$0:Lcom/android/server/hdmi/DeviceDiscoveryAction;

    # invokes: Lcom/android/server/hdmi/DeviceDiscoveryAction;->startPhysicalAddressStage()V
    invoke-static {v0}, Lcom/android/server/hdmi/DeviceDiscoveryAction;->access$200(Lcom/android/server/hdmi/DeviceDiscoveryAction;)V

    goto :goto_12
.end method
