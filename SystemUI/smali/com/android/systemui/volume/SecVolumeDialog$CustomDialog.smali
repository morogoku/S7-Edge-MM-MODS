.class final Lcom/android/systemui/volume/SecVolumeDialog$CustomDialog;
.super Landroid/app/Dialog;
.source "SecVolumeDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/volume/SecVolumeDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "CustomDialog"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/volume/SecVolumeDialog;


# direct methods
.method public constructor <init>(Lcom/android/systemui/volume/SecVolumeDialog;Landroid/content/Context;)V
    .locals 0
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 1515
    iput-object p1, p0, Lcom/android/systemui/volume/SecVolumeDialog$CustomDialog;->this$0:Lcom/android/systemui/volume/SecVolumeDialog;

    .line 1516
    invoke-direct {p0, p2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 1517
    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 1521
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog$CustomDialog;->this$0:Lcom/android/systemui/volume/SecVolumeDialog;

    invoke-virtual {v0}, Lcom/android/systemui/volume/SecVolumeDialog;->rescheduleTimeoutH()V

    .line 1522
    invoke-super {p0, p1}, Landroid/app/Dialog;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method protected onStop()V
    .locals 4

    .prologue
    .line 1527
    invoke-super {p0}, Landroid/app/Dialog;->onStop()V

    .line 1528
    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumeDialog$CustomDialog;->this$0:Lcom/android/systemui/volume/SecVolumeDialog;

    # getter for: Lcom/android/systemui/volume/SecVolumeDialog;->mMotion:Lcom/android/systemui/volume/VolumeDialogMotion;
    invoke-static {v1}, Lcom/android/systemui/volume/SecVolumeDialog;->access$5800(Lcom/android/systemui/volume/SecVolumeDialog;)Lcom/android/systemui/volume/VolumeDialogMotion;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/volume/VolumeDialogMotion;->isAnimating()Z

    move-result v0

    .line 1529
    .local v0, "animating":Z
    sget-boolean v1, Lcom/android/systemui/volume/D;->BUG:Z

    if-eqz v1, :cond_0

    # getter for: Lcom/android/systemui/volume/SecVolumeDialog;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/systemui/volume/SecVolumeDialog;->access$100()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onStop animating="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1530
    :cond_0
    if-eqz v0, :cond_1

    .line 1531
    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumeDialog$CustomDialog;->this$0:Lcom/android/systemui/volume/SecVolumeDialog;

    const/4 v2, 0x1

    # setter for: Lcom/android/systemui/volume/SecVolumeDialog;->mPendingRecheckAll:Z
    invoke-static {v1, v2}, Lcom/android/systemui/volume/SecVolumeDialog;->access$402(Lcom/android/systemui/volume/SecVolumeDialog;Z)Z

    .line 1535
    :goto_0
    return-void

    .line 1534
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumeDialog$CustomDialog;->this$0:Lcom/android/systemui/volume/SecVolumeDialog;

    # getter for: Lcom/android/systemui/volume/SecVolumeDialog;->mHandler:Lcom/android/systemui/volume/SecVolumeDialog$H;
    invoke-static {v1}, Lcom/android/systemui/volume/SecVolumeDialog;->access$300(Lcom/android/systemui/volume/SecVolumeDialog;)Lcom/android/systemui/volume/SecVolumeDialog$H;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/android/systemui/volume/SecVolumeDialog$H;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v0, 0x1

    .line 1539
    invoke-virtual {p0}, Lcom/android/systemui/volume/SecVolumeDialog$CustomDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumeDialog$CustomDialog;->this$0:Lcom/android/systemui/volume/SecVolumeDialog;

    # getter for: Lcom/android/systemui/volume/SecVolumeDialog;->mSafetyWarning:Lcom/android/systemui/volume/SafetyWarningDialog;
    invoke-static {v1}, Lcom/android/systemui/volume/SecVolumeDialog;->access$4200(Lcom/android/systemui/volume/SecVolumeDialog;)Lcom/android/systemui/volume/SafetyWarningDialog;

    move-result-object v1

    if-nez v1, :cond_0

    .line 1540
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    .line 1541
    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumeDialog$CustomDialog;->this$0:Lcom/android/systemui/volume/SecVolumeDialog;

    invoke-virtual {v1, v0}, Lcom/android/systemui/volume/SecVolumeDialog;->dismissH(I)V

    .line 1545
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
