.class final Lcom/android/server/am/MultiWindowPolicy$TaskController;
.super Ljava/lang/Object;
.source "MultiWindowPolicy.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/MultiWindowPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "TaskController"
.end annotation


# instance fields
.field stringName:Ljava/lang/String;

.field public final taskController:Lcom/samsung/android/multiwindow/ITaskController;

.field final synthetic this$0:Lcom/android/server/am/MultiWindowPolicy;

.field public final type:I


# direct methods
.method constructor <init>(Lcom/android/server/am/MultiWindowPolicy;Lcom/samsung/android/multiwindow/ITaskController;)V
    .registers 4
    .param p2, "_taskController"    # Lcom/samsung/android/multiwindow/ITaskController;

    .prologue
    .line 2519
    iput-object p1, p0, this$0:Lcom/android/server/am/MultiWindowPolicy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2520
    iput-object p2, p0, taskController:Lcom/samsung/android/multiwindow/ITaskController;

    .line 2521
    sget v0, Lcom/samsung/android/multiwindow/MultiWindowFacade;->TASK_CONTROLLER_TYPE_RUNNING:I

    iput v0, p0, type:I

    .line 2522
    return-void
.end method

.method constructor <init>(Lcom/android/server/am/MultiWindowPolicy;Lcom/samsung/android/multiwindow/ITaskController;I)V
    .registers 4
    .param p2, "_taskController"    # Lcom/samsung/android/multiwindow/ITaskController;
    .param p3, "_type"    # I

    .prologue
    .line 2524
    iput-object p1, p0, this$0:Lcom/android/server/am/MultiWindowPolicy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2525
    iput-object p2, p0, taskController:Lcom/samsung/android/multiwindow/ITaskController;

    .line 2526
    iput p3, p0, type:I

    .line 2527
    return-void
.end method


# virtual methods
.method public binderDied()V
    .registers 3

    .prologue
    .line 2530
    iget-object v0, p0, this$0:Lcom/android/server/am/MultiWindowPolicy;

    iget-object v1, p0, taskController:Lcom/samsung/android/multiwindow/ITaskController;

    invoke-virtual {v0, v1}, Lcom/android/server/am/MultiWindowPolicy;->unregisterTaskController(Lcom/samsung/android/multiwindow/ITaskController;)V

    .line 2531
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 2534
    iget-object v1, p0, stringName:Ljava/lang/String;

    if-eqz v1, :cond_7

    .line 2535
    iget-object v1, p0, stringName:Ljava/lang/String;

    .line 2543
    :goto_6
    return-object v1

    .line 2537
    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 2538
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "TaskController{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2539
    iget-object v1, p0, taskController:Lcom/samsung/android/multiwindow/ITaskController;

    invoke-interface {v1}, Lcom/samsung/android/multiwindow/ITaskController;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 2540
    const-string v1, " type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2541
    iget v1, p0, type:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2542
    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2543
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, stringName:Ljava/lang/String;

    goto :goto_6
.end method
