.class Lcom/samsung/android/smartface/SmartFaceManager$SmartFaceClient;
.super Lcom/samsung/android/smartface/ISmartFaceClient$Stub;
.source "SmartFaceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/smartface/SmartFaceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SmartFaceClient"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/smartface/SmartFaceManager;


# direct methods
.method constructor <init>(Lcom/samsung/android/smartface/SmartFaceManager;)V
    .registers 4

    .prologue
    .line 552
    iput-object p1, p0, this$0:Lcom/samsung/android/smartface/SmartFaceManager;

    invoke-direct {p0}, Lcom/samsung/android/smartface/ISmartFaceClient$Stub;-><init>()V

    .line 553
    const-string v0, "SmartFaceManager"

    const-string v1, "New SmartFaceClient"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 554
    return-void
.end method


# virtual methods
.method public onInfo(ILcom/samsung/android/smartface/FaceInfo;I)V
    .registers 7
    .param p1, "msg_type"    # I
    .param p2, "data"    # Lcom/samsung/android/smartface/FaceInfo;
    .param p3, "service_type"    # I

    .prologue
    const/4 v2, 0x0

    .line 558
    iget-object v1, p0, this$0:Lcom/samsung/android/smartface/SmartFaceManager;

    # getter for: Lcom/samsung/android/smartface/SmartFaceManager;->mInternalEventHandler:Lcom/samsung/android/smartface/SmartFaceManager$EventHandler;
    invoke-static {v1}, Lcom/samsung/android/smartface/SmartFaceManager;->access$300(Lcom/samsung/android/smartface/SmartFaceManager;)Lcom/samsung/android/smartface/SmartFaceManager$EventHandler;

    move-result-object v1

    if-eqz v1, :cond_1d

    .line 559
    iget-object v1, p0, this$0:Lcom/samsung/android/smartface/SmartFaceManager;

    # getter for: Lcom/samsung/android/smartface/SmartFaceManager;->mInternalEventHandler:Lcom/samsung/android/smartface/SmartFaceManager$EventHandler;
    invoke-static {v1}, Lcom/samsung/android/smartface/SmartFaceManager;->access$300(Lcom/samsung/android/smartface/SmartFaceManager;)Lcom/samsung/android/smartface/SmartFaceManager$EventHandler;

    move-result-object v1

    invoke-virtual {v1, p1, p3, v2, p2}, Lcom/samsung/android/smartface/SmartFaceManager$EventHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 560
    .local v0, "m":Landroid/os/Message;
    iget-object v1, p0, this$0:Lcom/samsung/android/smartface/SmartFaceManager;

    # getter for: Lcom/samsung/android/smartface/SmartFaceManager;->mInternalEventHandler:Lcom/samsung/android/smartface/SmartFaceManager$EventHandler;
    invoke-static {v1}, Lcom/samsung/android/smartface/SmartFaceManager;->access$300(Lcom/samsung/android/smartface/SmartFaceManager;)Lcom/samsung/android/smartface/SmartFaceManager$EventHandler;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/samsung/android/smartface/SmartFaceManager$EventHandler;->sendMessage(Landroid/os/Message;)Z

    .line 569
    .end local v0    # "m":Landroid/os/Message;
    :goto_1c
    return-void

    .line 561
    :cond_1d
    iget-object v1, p0, this$0:Lcom/samsung/android/smartface/SmartFaceManager;

    # getter for: Lcom/samsung/android/smartface/SmartFaceManager;->mEventHandler:Lcom/samsung/android/smartface/SmartFaceManager$EventHandler;
    invoke-static {v1}, Lcom/samsung/android/smartface/SmartFaceManager;->access$400(Lcom/samsung/android/smartface/SmartFaceManager;)Lcom/samsung/android/smartface/SmartFaceManager$EventHandler;

    move-result-object v1

    if-eqz v1, :cond_39

    .line 562
    iget-object v1, p0, this$0:Lcom/samsung/android/smartface/SmartFaceManager;

    # getter for: Lcom/samsung/android/smartface/SmartFaceManager;->mEventHandler:Lcom/samsung/android/smartface/SmartFaceManager$EventHandler;
    invoke-static {v1}, Lcom/samsung/android/smartface/SmartFaceManager;->access$400(Lcom/samsung/android/smartface/SmartFaceManager;)Lcom/samsung/android/smartface/SmartFaceManager$EventHandler;

    move-result-object v1

    invoke-virtual {v1, p1, p3, v2, p2}, Lcom/samsung/android/smartface/SmartFaceManager$EventHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 563
    .restart local v0    # "m":Landroid/os/Message;
    iget-object v1, p0, this$0:Lcom/samsung/android/smartface/SmartFaceManager;

    # getter for: Lcom/samsung/android/smartface/SmartFaceManager;->mEventHandler:Lcom/samsung/android/smartface/SmartFaceManager$EventHandler;
    invoke-static {v1}, Lcom/samsung/android/smartface/SmartFaceManager;->access$400(Lcom/samsung/android/smartface/SmartFaceManager;)Lcom/samsung/android/smartface/SmartFaceManager$EventHandler;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/samsung/android/smartface/SmartFaceManager$EventHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_1c

    .line 567
    .end local v0    # "m":Landroid/os/Message;
    :cond_39
    const-string v1, "SmartFaceManager"

    const-string v2, "EventHandler is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1c
.end method
