.class Lcom/android/settings/SimPinLockSettings$1$2;
.super Ljava/lang/Object;
.source "SimPinLockSettings.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/SimPinLockSettings$1;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings/SimPinLockSettings$1;


# direct methods
.method constructor <init>(Lcom/android/settings/SimPinLockSettings$1;)V
    .locals 0

    .prologue
    .line 109
    iput-object p1, p0, Lcom/android/settings/SimPinLockSettings$1$2;->this$1:Lcom/android/settings/SimPinLockSettings$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 111
    iget-object v0, p0, Lcom/android/settings/SimPinLockSettings$1$2;->this$1:Lcom/android/settings/SimPinLockSettings$1;

    iget-object v0, v0, Lcom/android/settings/SimPinLockSettings$1;->this$0:Lcom/android/settings/SimPinLockSettings;

    iget-object v1, p0, Lcom/android/settings/SimPinLockSettings$1$2;->this$1:Lcom/android/settings/SimPinLockSettings$1;

    iget-object v1, v1, Lcom/android/settings/SimPinLockSettings$1;->this$0:Lcom/android/settings/SimPinLockSettings;

    # getter for: Lcom/android/settings/SimPinLockSettings;->mExceptionIsNull:Z
    invoke-static {v1}, Lcom/android/settings/SimPinLockSettings;->access$000(Lcom/android/settings/SimPinLockSettings;)Z

    move-result v1

    # invokes: Lcom/android/settings/SimPinLockSettings;->iccPinChanged(Z)V
    invoke-static {v0, v1}, Lcom/android/settings/SimPinLockSettings;->access$200(Lcom/android/settings/SimPinLockSettings;Z)V

    .line 112
    return-void
.end method
