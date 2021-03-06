.class Lcom/android/server/hdmi/HdmiControlService$1;
.super Ljava/lang/Object;
.source "HdmiControlService.java"

# interfaces
.implements Lcom/android/server/hdmi/HdmiCecController$AllocateAddressCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/hdmi/HdmiControlService;->allocateLogicalAddress(Ljava/util/ArrayList;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/hdmi/HdmiControlService;

.field final synthetic val$allocatedDevices:Ljava/util/ArrayList;

.field final synthetic val$allocatingDevices:Ljava/util/ArrayList;

.field final synthetic val$finished:[I

.field final synthetic val$initiatedBy:I

.field final synthetic val$localDevice:Lcom/android/server/hdmi/HdmiCecLocalDevice;


# direct methods
.method constructor <init>(Lcom/android/server/hdmi/HdmiControlService;Lcom/android/server/hdmi/HdmiCecLocalDevice;Ljava/util/ArrayList;Ljava/util/ArrayList;[II)V
    .registers 7

    .prologue
    .line 587
    iput-object p1, p0, this$0:Lcom/android/server/hdmi/HdmiControlService;

    iput-object p2, p0, val$localDevice:Lcom/android/server/hdmi/HdmiCecLocalDevice;

    iput-object p3, p0, val$allocatedDevices:Ljava/util/ArrayList;

    iput-object p4, p0, val$allocatingDevices:Ljava/util/ArrayList;

    iput-object p5, p0, val$finished:[I

    iput p6, p0, val$initiatedBy:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAllocated(II)V
    .registers 8
    .param p1, "deviceType"    # I
    .param p2, "logicalAddress"    # I

    .prologue
    const/4 v4, 0x0

    .line 590
    const/16 v1, 0xf

    if-ne p2, v1, :cond_58

    .line 591
    const-string v1, "HdmiControlService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to allocate address:[device_type:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 604
    :goto_23
    iget-object v1, p0, val$allocatingDevices:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    iget-object v2, p0, val$finished:[I

    aget v3, v2, v4

    add-int/lit8 v3, v3, 0x1

    aput v3, v2, v4

    if-ne v1, v3, :cond_57

    .line 605
    iget-object v1, p0, this$0:Lcom/android/server/hdmi/HdmiControlService;

    const/4 v2, 0x1

    # setter for: Lcom/android/server/hdmi/HdmiControlService;->mAddressAllocated:Z
    invoke-static {v1, v2}, Lcom/android/server/hdmi/HdmiControlService;->access$1602(Lcom/android/server/hdmi/HdmiControlService;Z)Z

    .line 606
    iget v1, p0, val$initiatedBy:I

    const/4 v2, 0x4

    if-eq v1, v2, :cond_45

    .line 609
    iget-object v1, p0, this$0:Lcom/android/server/hdmi/HdmiControlService;

    iget v2, p0, val$initiatedBy:I

    # invokes: Lcom/android/server/hdmi/HdmiControlService;->onInitializeCecComplete(I)V
    invoke-static {v1, v2}, Lcom/android/server/hdmi/HdmiControlService;->access$1700(Lcom/android/server/hdmi/HdmiControlService;I)V

    .line 611
    :cond_45
    iget-object v1, p0, this$0:Lcom/android/server/hdmi/HdmiControlService;

    iget-object v2, p0, val$allocatedDevices:Ljava/util/ArrayList;

    iget v3, p0, val$initiatedBy:I

    # invokes: Lcom/android/server/hdmi/HdmiControlService;->notifyAddressAllocated(Ljava/util/ArrayList;I)V
    invoke-static {v1, v2, v3}, Lcom/android/server/hdmi/HdmiControlService;->access$1800(Lcom/android/server/hdmi/HdmiControlService;Ljava/util/ArrayList;I)V

    .line 612
    iget-object v1, p0, this$0:Lcom/android/server/hdmi/HdmiControlService;

    # getter for: Lcom/android/server/hdmi/HdmiControlService;->mCecMessageBuffer:Lcom/android/server/hdmi/HdmiControlService$CecMessageBuffer;
    invoke-static {v1}, Lcom/android/server/hdmi/HdmiControlService;->access$1900(Lcom/android/server/hdmi/HdmiControlService;)Lcom/android/server/hdmi/HdmiControlService$CecMessageBuffer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/hdmi/HdmiControlService$CecMessageBuffer;->processMessages()V

    .line 614
    :cond_57
    return-void

    .line 595
    :cond_58
    iget-object v1, p0, this$0:Lcom/android/server/hdmi/HdmiControlService;

    # invokes: Lcom/android/server/hdmi/HdmiControlService;->createDeviceInfo(III)Landroid/hardware/hdmi/HdmiDeviceInfo;
    invoke-static {v1, p2, p1, v4}, Lcom/android/server/hdmi/HdmiControlService;->access$1500(Lcom/android/server/hdmi/HdmiControlService;III)Landroid/hardware/hdmi/HdmiDeviceInfo;

    move-result-object v0

    .line 597
    .local v0, "deviceInfo":Landroid/hardware/hdmi/HdmiDeviceInfo;
    iget-object v1, p0, val$localDevice:Lcom/android/server/hdmi/HdmiCecLocalDevice;

    invoke-virtual {v1, v0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->setDeviceInfo(Landroid/hardware/hdmi/HdmiDeviceInfo;)V

    .line 598
    iget-object v1, p0, this$0:Lcom/android/server/hdmi/HdmiControlService;

    # getter for: Lcom/android/server/hdmi/HdmiControlService;->mCecController:Lcom/android/server/hdmi/HdmiCecController;
    invoke-static {v1}, Lcom/android/server/hdmi/HdmiControlService;->access$1300(Lcom/android/server/hdmi/HdmiControlService;)Lcom/android/server/hdmi/HdmiCecController;

    move-result-object v1

    iget-object v2, p0, val$localDevice:Lcom/android/server/hdmi/HdmiCecLocalDevice;

    invoke-virtual {v1, p1, v2}, Lcom/android/server/hdmi/HdmiCecController;->addLocalDevice(ILcom/android/server/hdmi/HdmiCecLocalDevice;)V

    .line 599
    iget-object v1, p0, this$0:Lcom/android/server/hdmi/HdmiControlService;

    # getter for: Lcom/android/server/hdmi/HdmiControlService;->mCecController:Lcom/android/server/hdmi/HdmiCecController;
    invoke-static {v1}, Lcom/android/server/hdmi/HdmiControlService;->access$1300(Lcom/android/server/hdmi/HdmiControlService;)Lcom/android/server/hdmi/HdmiCecController;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/android/server/hdmi/HdmiCecController;->addLogicalAddress(I)I

    .line 600
    iget-object v1, p0, val$allocatedDevices:Ljava/util/ArrayList;

    iget-object v2, p0, val$localDevice:Lcom/android/server/hdmi/HdmiCecLocalDevice;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_23
.end method
