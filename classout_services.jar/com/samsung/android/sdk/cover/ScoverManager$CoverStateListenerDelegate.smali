.class Lcom/samsung/android/sdk/cover/ScoverManager$CoverStateListenerDelegate;
.super Lcom/samsung/android/cover/ICoverStateListenerCallback$Stub;
.source "ScoverManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/cover/ScoverManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CoverStateListenerDelegate"
.end annotation


# static fields
.field private static final MSG_LISTEN_COVER_ATTACH_STATE_CHANGE:I = 0x1

.field private static final MSG_LISTEN_COVER_SWITCH_STATE_CHANGE:I = 0x0

.field public static final TYPE_COVER_STATE_LISTENER:I = 0x2


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private final mListener:Lcom/samsung/android/sdk/cover/ScoverManager$CoverStateListener;

.field final synthetic this$0:Lcom/samsung/android/sdk/cover/ScoverManager;


# direct methods
.method constructor <init>(Lcom/samsung/android/sdk/cover/ScoverManager;Lcom/samsung/android/sdk/cover/ScoverManager$CoverStateListener;Landroid/os/Handler;)V
    .registers 6
    .param p2, "listener"    # Lcom/samsung/android/sdk/cover/ScoverManager$CoverStateListener;
    .param p3, "handler"    # Landroid/os/Handler;

    .prologue
    .line 792
    iput-object p1, p0, this$0:Lcom/samsung/android/sdk/cover/ScoverManager;

    .line 793
    invoke-direct {p0}, Lcom/samsung/android/cover/ICoverStateListenerCallback$Stub;-><init>()V

    .line 794
    iput-object p2, p0, mListener:Lcom/samsung/android/sdk/cover/ScoverManager$CoverStateListener;

    .line 796
    if-nez p3, :cond_19

    # getter for: Lcom/samsung/android/sdk/cover/ScoverManager;->mContext:Landroid/content/Context;
    invoke-static {p1}, Lcom/samsung/android/sdk/cover/ScoverManager;->access$000(Lcom/samsung/android/sdk/cover/ScoverManager;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    .line 799
    .local v0, "looper":Landroid/os/Looper;
    :goto_11
    new-instance v1, Lcom/samsung/android/sdk/cover/ScoverManager$CoverStateListenerDelegate$1;

    invoke-direct {v1, p0, v0, p1}, Lcom/samsung/android/sdk/cover/ScoverManager$CoverStateListenerDelegate$1;-><init>(Lcom/samsung/android/sdk/cover/ScoverManager$CoverStateListenerDelegate;Landroid/os/Looper;Lcom/samsung/android/sdk/cover/ScoverManager;)V

    iput-object v1, p0, mHandler:Landroid/os/Handler;

    .line 814
    return-void

    .line 796
    .end local v0    # "looper":Landroid/os/Looper;
    :cond_19
    invoke-virtual {p3}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    goto :goto_11
.end method

.method static synthetic access$200(Lcom/samsung/android/sdk/cover/ScoverManager$CoverStateListenerDelegate;)Lcom/samsung/android/sdk/cover/ScoverManager$CoverStateListener;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/sdk/cover/ScoverManager$CoverStateListenerDelegate;

    .prologue
    .line 775
    iget-object v0, p0, mListener:Lcom/samsung/android/sdk/cover/ScoverManager$CoverStateListener;

    return-object v0
.end method


# virtual methods
.method public getListener()Lcom/samsung/android/sdk/cover/ScoverManager$CoverStateListener;
    .registers 2

    .prologue
    .line 822
    iget-object v0, p0, mListener:Lcom/samsung/android/sdk/cover/ScoverManager$CoverStateListener;

    return-object v0
.end method

.method public getListenerInfo()Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 845
    iget-object v0, p0, mListener:Lcom/samsung/android/sdk/cover/ScoverManager$CoverStateListener;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onCoverAttachStateChanged(Z)V
    .registers 6
    .param p1, "attached"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 833
    iget-object v3, p0, mHandler:Landroid/os/Handler;

    if-eqz p1, :cond_f

    move v0, v1

    :goto_7
    invoke-static {v3, v1, v0, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 835
    return-void

    :cond_f
    move v0, v2

    .line 833
    goto :goto_7
.end method

.method public onCoverSwitchStateChanged(Z)V
    .registers 5
    .param p1, "switchState"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 827
    iget-object v2, p0, mHandler:Landroid/os/Handler;

    if-eqz p1, :cond_e

    const/4 v0, 0x1

    :goto_6
    invoke-static {v2, v1, v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 829
    return-void

    :cond_e
    move v0, v1

    .line 827
    goto :goto_6
.end method
