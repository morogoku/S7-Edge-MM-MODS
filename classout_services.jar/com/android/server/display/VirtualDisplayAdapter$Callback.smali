.class Lcom/android/server/display/VirtualDisplayAdapter$Callback;
.super Landroid/os/Handler;
.source "VirtualDisplayAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/VirtualDisplayAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Callback"
.end annotation


# static fields
.field private static final MSG_ON_DISPLAY_PAUSED:I = 0x0

.field private static final MSG_ON_DISPLAY_RESUMED:I = 0x1

.field private static final MSG_ON_DISPLAY_STOPPED:I = 0x2


# instance fields
.field private final mCallback:Landroid/hardware/display/IVirtualDisplayCallback;


# direct methods
.method public constructor <init>(Landroid/hardware/display/IVirtualDisplayCallback;Landroid/os/Handler;)V
    .registers 4
    .param p1, "callback"    # Landroid/hardware/display/IVirtualDisplayCallback;
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 429
    invoke-virtual {p2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 430
    iput-object p1, p0, mCallback:Landroid/hardware/display/IVirtualDisplayCallback;

    .line 431
    return-void
.end method


# virtual methods
.method public dispatchDisplayPaused()V
    .registers 2

    .prologue
    .line 453
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, sendEmptyMessage(I)Z

    .line 454
    return-void
.end method

.method public dispatchDisplayResumed()V
    .registers 2

    .prologue
    .line 457
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, sendEmptyMessage(I)Z

    .line 458
    return-void
.end method

.method public dispatchDisplayStopped()V
    .registers 2

    .prologue
    .line 461
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, sendEmptyMessage(I)Z

    .line 462
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .registers 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 436
    :try_start_0
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_22

    .line 450
    :goto_5
    return-void

    .line 438
    :pswitch_6
    iget-object v1, p0, mCallback:Landroid/hardware/display/IVirtualDisplayCallback;

    invoke-interface {v1}, Landroid/hardware/display/IVirtualDisplayCallback;->onPaused()V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_b} :catch_c

    goto :goto_5

    .line 447
    :catch_c
    move-exception v0

    .line 448
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "VirtualDisplayAdapter"

    const-string v2, "Failed to notify listener of virtual display event."

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5

    .line 441
    .end local v0    # "e":Landroid/os/RemoteException;
    :pswitch_15
    :try_start_15
    iget-object v1, p0, mCallback:Landroid/hardware/display/IVirtualDisplayCallback;

    invoke-interface {v1}, Landroid/hardware/display/IVirtualDisplayCallback;->onResumed()V

    goto :goto_5

    .line 444
    :pswitch_1b
    iget-object v1, p0, mCallback:Landroid/hardware/display/IVirtualDisplayCallback;

    invoke-interface {v1}, Landroid/hardware/display/IVirtualDisplayCallback;->onStopped()V
    :try_end_20
    .catch Landroid/os/RemoteException; {:try_start_15 .. :try_end_20} :catch_c

    goto :goto_5

    .line 436
    nop

    :pswitch_data_22
    .packed-switch 0x0
        :pswitch_6
        :pswitch_15
        :pswitch_1b
    .end packed-switch
.end method
