.class Lcom/android/server/power/ShutdownDialog$StateDrawing;
.super Ljava/lang/Object;
.source "ShutdownDialog.java"

# interfaces
.implements Lcom/android/server/power/ShutdownDialog$DrawState;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/ShutdownDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StateDrawing"
.end annotation


# instance fields
.field imageLoadThread:Lcom/android/server/power/ShutdownDialog$ImageLoadThread;

.field soundThread:Lcom/android/server/power/ShutdownDialog$SoundThread;

.field final synthetic this$0:Lcom/android/server/power/ShutdownDialog;


# direct methods
.method private constructor <init>(Lcom/android/server/power/ShutdownDialog;)V
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 416
    iput-object p1, p0, this$0:Lcom/android/server/power/ShutdownDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 417
    iput-object v0, p0, imageLoadThread:Lcom/android/server/power/ShutdownDialog$ImageLoadThread;

    .line 418
    iput-object v0, p0, soundThread:Lcom/android/server/power/ShutdownDialog$SoundThread;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/power/ShutdownDialog;Lcom/android/server/power/ShutdownDialog$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/android/server/power/ShutdownDialog;
    .param p2, "x1"    # Lcom/android/server/power/ShutdownDialog$1;

    .prologue
    .line 416
    invoke-direct {p0, p1}, <init>(Lcom/android/server/power/ShutdownDialog;)V

    return-void
.end method


# virtual methods
.method public checkRunning()Z
    .registers 2

    .prologue
    .line 441
    iget-object v0, p0, soundThread:Lcom/android/server/power/ShutdownDialog$SoundThread;

    invoke-virtual {v0}, Lcom/android/server/power/ShutdownDialog$SoundThread;->checkRunning()Z

    move-result v0

    if-nez v0, :cond_10

    iget-object v0, p0, imageLoadThread:Lcom/android/server/power/ShutdownDialog$ImageLoadThread;

    invoke-virtual {v0}, Lcom/android/server/power/ShutdownDialog$ImageLoadThread;->checkRunning()Z

    move-result v0

    if-eqz v0, :cond_12

    :cond_10
    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method public checkStart()Z
    .registers 2

    .prologue
    .line 437
    const/4 v0, 0x1

    return v0
.end method

.method public prepare()V
    .registers 3

    .prologue
    .line 421
    invoke-virtual {p0}, checkRunning()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 422
    const-string v0, "ShutdownDialog"

    const-string v1, "becareful prepare while draw"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 426
    :goto_d
    return-void

    .line 424
    :cond_e
    iget-object v0, p0, this$0:Lcom/android/server/power/ShutdownDialog;

    # getter for: Lcom/android/server/power/ShutdownDialog;->mDrawHandler:Lcom/android/server/power/ShutdownDialog$DrawHandler;
    invoke-static {v0}, Lcom/android/server/power/ShutdownDialog;->access$1400(Lcom/android/server/power/ShutdownDialog;)Lcom/android/server/power/ShutdownDialog$DrawHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/power/ShutdownDialog$DrawHandler;->init()V

    goto :goto_d
.end method

.method public start()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 429
    const-string v0, "ShutdownDialog"

    const-string v1, "StateDrawing.start()"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 430
    new-instance v0, Lcom/android/server/power/ShutdownDialog$SoundThread;

    iget-object v1, p0, this$0:Lcom/android/server/power/ShutdownDialog;

    invoke-direct {v0, v1, v2}, Lcom/android/server/power/ShutdownDialog$SoundThread;-><init>(Lcom/android/server/power/ShutdownDialog;Lcom/android/server/power/ShutdownDialog$1;)V

    iput-object v0, p0, soundThread:Lcom/android/server/power/ShutdownDialog$SoundThread;

    .line 431
    new-instance v0, Lcom/android/server/power/ShutdownDialog$ImageLoadThread;

    iget-object v1, p0, this$0:Lcom/android/server/power/ShutdownDialog;

    invoke-direct {v0, v1, v2}, Lcom/android/server/power/ShutdownDialog$ImageLoadThread;-><init>(Lcom/android/server/power/ShutdownDialog;Lcom/android/server/power/ShutdownDialog$1;)V

    iput-object v0, p0, imageLoadThread:Lcom/android/server/power/ShutdownDialog$ImageLoadThread;

    .line 432
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, soundThread:Lcom/android/server/power/ShutdownDialog$SoundThread;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 433
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, imageLoadThread:Lcom/android/server/power/ShutdownDialog$ImageLoadThread;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 434
    return-void
.end method
