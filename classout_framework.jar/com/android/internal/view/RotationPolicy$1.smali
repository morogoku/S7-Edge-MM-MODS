.class final Lcom/android/internal/view/RotationPolicy$1;
.super Ljava/lang/Object;
.source "RotationPolicy.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/view/RotationPolicy;->setRotationLock(ZI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$enabled:Z

.field final synthetic val$rotation:I


# direct methods
.method constructor <init>(ZI)V
    .registers 3

    .prologue
    .line 137
    iput-boolean p1, p0, val$enabled:Z

    iput p2, p0, val$rotation:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 141
    :try_start_0
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v1

    .line 142
    .local v1, "wm":Landroid/view/IWindowManager;
    iget-boolean v2, p0, val$enabled:Z

    if-eqz v2, :cond_e

    .line 143
    iget v2, p0, val$rotation:I

    invoke-interface {v1, v2}, Landroid/view/IWindowManager;->freezeRotation(I)V

    .line 150
    .end local v1    # "wm":Landroid/view/IWindowManager;
    :goto_d
    return-void

    .line 145
    .restart local v1    # "wm":Landroid/view/IWindowManager;
    :cond_e
    invoke-interface {v1}, Landroid/view/IWindowManager;->thawRotation()V
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_11} :catch_12

    goto :goto_d

    .line 147
    .end local v1    # "wm":Landroid/view/IWindowManager;
    :catch_12
    move-exception v0

    .line 148
    .local v0, "exc":Landroid/os/RemoteException;
    const-string v2, "RotationPolicy"

    const-string v3, "Unable to save auto-rotate setting"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d
.end method
