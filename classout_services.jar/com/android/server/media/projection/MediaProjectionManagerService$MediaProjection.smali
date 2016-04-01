.class final Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;
.super Landroid/media/projection/IMediaProjection$Stub;
.source "MediaProjectionManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/media/projection/MediaProjectionManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "MediaProjection"
.end annotation


# instance fields
.field private mCallback:Landroid/media/projection/IMediaProjectionCallback;

.field private mDeathEater:Landroid/os/IBinder$DeathRecipient;

.field private mToken:Landroid/os/IBinder;

.field private mType:I

.field public final packageName:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/server/media/projection/MediaProjectionManagerService;

.field public final uid:I

.field public final userHandle:Landroid/os/UserHandle;


# direct methods
.method public constructor <init>(Lcom/android/server/media/projection/MediaProjectionManagerService;IILjava/lang/String;)V
    .registers 7
    .param p2, "type"    # I
    .param p3, "uid"    # I
    .param p4, "packageName"    # Ljava/lang/String;

    .prologue
    .line 350
    iput-object p1, p0, this$0:Lcom/android/server/media/projection/MediaProjectionManagerService;

    invoke-direct {p0}, Landroid/media/projection/IMediaProjection$Stub;-><init>()V

    .line 351
    iput p2, p0, mType:I

    .line 352
    iput p3, p0, uid:I

    .line 353
    iput-object p4, p0, packageName:Ljava/lang/String;

    .line 354
    new-instance v0, Landroid/os/UserHandle;

    invoke-static {p3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    invoke-direct {v0, v1}, Landroid/os/UserHandle;-><init>(I)V

    iput-object v0, p0, userHandle:Landroid/os/UserHandle;

    .line 355
    return-void
.end method


# virtual methods
.method public applyVirtualDisplayFlags(I)I
    .registers 5
    .param p1, "flags"    # I

    .prologue
    .line 376
    iget v1, p0, mType:I

    if-nez v1, :cond_a

    .line 377
    and-int/lit8 p1, p1, -0x9

    .line 378
    or-int/lit8 p1, p1, 0x12

    move v0, p1

    .line 392
    .end local p1    # "flags":I
    .local v0, "flags":I
    :goto_9
    return v0

    .line 381
    .end local v0    # "flags":I
    .restart local p1    # "flags":I
    :cond_a
    iget v1, p0, mType:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_15

    .line 382
    and-int/lit8 p1, p1, -0x12

    .line 384
    or-int/lit8 p1, p1, 0xa

    move v0, p1

    .line 386
    .end local p1    # "flags":I
    .restart local v0    # "flags":I
    goto :goto_9

    .line 387
    .end local v0    # "flags":I
    .restart local p1    # "flags":I
    :cond_15
    iget v1, p0, mType:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_20

    .line 388
    and-int/lit8 p1, p1, -0x9

    .line 389
    or-int/lit8 p1, p1, 0x13

    move v0, p1

    .line 392
    .end local p1    # "flags":I
    .restart local v0    # "flags":I
    goto :goto_9

    .line 394
    .end local v0    # "flags":I
    .restart local p1    # "flags":I
    :cond_20
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Unknown MediaProjection type"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public canProjectAudio()Z
    .registers 4

    .prologue
    const/4 v0, 0x1

    .line 370
    iget v1, p0, mType:I

    if-eq v1, v0, :cond_a

    iget v1, p0, mType:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_b

    :cond_a
    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public canProjectSecureVideo()Z
    .registers 2

    .prologue
    .line 365
    const/4 v0, 0x0

    return v0
.end method

.method public canProjectVideo()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 359
    iget v1, p0, mType:I

    if-eq v1, v0, :cond_9

    iget v1, p0, mType:I

    if-nez v1, :cond_a

    :cond_9
    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .registers 4
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .prologue
    .line 467
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", uid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, uid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, mType:I

    # invokes: Lcom/android/server/media/projection/MediaProjectionManagerService;->typeToString(I)Ljava/lang/String;
    invoke-static {v1}, Lcom/android/server/media/projection/MediaProjectionManagerService;->access$1400(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 468
    return-void
.end method

.method public getProjectionInfo()Landroid/media/projection/MediaProjectionInfo;
    .registers 4

    .prologue
    .line 463
    new-instance v0, Landroid/media/projection/MediaProjectionInfo;

    iget-object v1, p0, packageName:Ljava/lang/String;

    iget-object v2, p0, userHandle:Landroid/os/UserHandle;

    invoke-direct {v0, v1, v2}, Landroid/media/projection/MediaProjectionInfo;-><init>(Ljava/lang/String;Landroid/os/UserHandle;)V

    return-object v0
.end method

.method public registerCallback(Landroid/media/projection/IMediaProjectionCallback;)V
    .registers 4
    .param p1, "callback"    # Landroid/media/projection/IMediaProjectionCallback;

    .prologue
    .line 448
    if-nez p1, :cond_a

    .line 449
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "callback must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 451
    :cond_a
    iget-object v0, p0, this$0:Lcom/android/server/media/projection/MediaProjectionManagerService;

    # getter for: Lcom/android/server/media/projection/MediaProjectionManagerService;->mCallbackDelegate:Lcom/android/server/media/projection/MediaProjectionManagerService$CallbackDelegate;
    invoke-static {v0}, Lcom/android/server/media/projection/MediaProjectionManagerService;->access$1100(Lcom/android/server/media/projection/MediaProjectionManagerService;)Lcom/android/server/media/projection/MediaProjectionManagerService$CallbackDelegate;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/media/projection/MediaProjectionManagerService$CallbackDelegate;->add(Landroid/media/projection/IMediaProjectionCallback;)V

    .line 452
    return-void
.end method

.method public start(Landroid/media/projection/IMediaProjectionCallback;)V
    .registers 7
    .param p1, "callback"    # Landroid/media/projection/IMediaProjectionCallback;

    .prologue
    .line 400
    if-nez p1, :cond_a

    .line 401
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "callback must not be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 403
    :cond_a
    iget-object v1, p0, this$0:Lcom/android/server/media/projection/MediaProjectionManagerService;

    # getter for: Lcom/android/server/media/projection/MediaProjectionManagerService;->mLock:Ljava/lang/Object;
    invoke-static {v1}, Lcom/android/server/media/projection/MediaProjectionManagerService;->access$1000(Lcom/android/server/media/projection/MediaProjectionManagerService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 404
    :try_start_11
    iget-object v1, p0, this$0:Lcom/android/server/media/projection/MediaProjectionManagerService;

    invoke-virtual {p0}, asBinder()Landroid/os/IBinder;

    move-result-object v3

    # invokes: Lcom/android/server/media/projection/MediaProjectionManagerService;->isValidMediaProjection(Landroid/os/IBinder;)Z
    invoke-static {v1, v3}, Lcom/android/server/media/projection/MediaProjectionManagerService;->access$500(Lcom/android/server/media/projection/MediaProjectionManagerService;Landroid/os/IBinder;)Z

    move-result v1

    if-eqz v1, :cond_28

    .line 405
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v3, "Cannot start already started MediaProjection"

    invoke-direct {v1, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 426
    :catchall_25
    move-exception v1

    monitor-exit v2
    :try_end_27
    .catchall {:try_start_11 .. :try_end_27} :catchall_25

    throw v1

    .line 408
    :cond_28
    :try_start_28
    iput-object p1, p0, mCallback:Landroid/media/projection/IMediaProjectionCallback;

    .line 409
    iget-object v1, p0, mCallback:Landroid/media/projection/IMediaProjectionCallback;

    invoke-virtual {p0, v1}, registerCallback(Landroid/media/projection/IMediaProjectionCallback;)V
    :try_end_2f
    .catchall {:try_start_28 .. :try_end_2f} :catchall_25

    .line 411
    :try_start_2f
    invoke-interface {p1}, Landroid/media/projection/IMediaProjectionCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    iput-object v1, p0, mToken:Landroid/os/IBinder;

    .line 412
    new-instance v1, Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection$1;

    invoke-direct {v1, p0, p1}, Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection$1;-><init>(Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;Landroid/media/projection/IMediaProjectionCallback;)V

    iput-object v1, p0, mDeathEater:Landroid/os/IBinder$DeathRecipient;

    .line 419
    iget-object v1, p0, mToken:Landroid/os/IBinder;

    iget-object v3, p0, mDeathEater:Landroid/os/IBinder$DeathRecipient;

    const/4 v4, 0x0

    invoke-interface {v1, v3, v4}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_44
    .catch Landroid/os/RemoteException; {:try_start_2f .. :try_end_44} :catch_4b
    .catchall {:try_start_2f .. :try_end_44} :catchall_25

    .line 425
    :try_start_44
    iget-object v1, p0, this$0:Lcom/android/server/media/projection/MediaProjectionManagerService;

    # invokes: Lcom/android/server/media/projection/MediaProjectionManagerService;->startProjectionLocked(Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;)V
    invoke-static {v1, p0}, Lcom/android/server/media/projection/MediaProjectionManagerService;->access$1200(Lcom/android/server/media/projection/MediaProjectionManagerService;Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;)V

    .line 426
    monitor-exit v2

    .line 427
    :goto_4a
    return-void

    .line 420
    :catch_4b
    move-exception v0

    .line 421
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "MediaProjectionManagerService"

    const-string v3, "MediaProjectionCallbacks must be valid, aborting MediaProjection"

    invoke-static {v1, v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 423
    monitor-exit v2
    :try_end_54
    .catchall {:try_start_44 .. :try_end_54} :catchall_25

    goto :goto_4a
.end method

.method public stop()V
    .registers 5

    .prologue
    .line 431
    iget-object v0, p0, this$0:Lcom/android/server/media/projection/MediaProjectionManagerService;

    # getter for: Lcom/android/server/media/projection/MediaProjectionManagerService;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/media/projection/MediaProjectionManagerService;->access$1000(Lcom/android/server/media/projection/MediaProjectionManagerService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 432
    :try_start_7
    iget-object v0, p0, this$0:Lcom/android/server/media/projection/MediaProjectionManagerService;

    invoke-virtual {p0}, asBinder()Landroid/os/IBinder;

    move-result-object v2

    # invokes: Lcom/android/server/media/projection/MediaProjectionManagerService;->isValidMediaProjection(Landroid/os/IBinder;)Z
    invoke-static {v0, v2}, Lcom/android/server/media/projection/MediaProjectionManagerService;->access$500(Lcom/android/server/media/projection/MediaProjectionManagerService;Landroid/os/IBinder;)Z

    move-result v0

    if-nez v0, :cond_4c

    .line 433
    const-string v0, "MediaProjectionManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Attempted to stop inactive MediaProjection (uid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "pid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 436
    monitor-exit v1

    .line 444
    :goto_4b
    return-void

    .line 438
    :cond_4c
    iget-object v0, p0, this$0:Lcom/android/server/media/projection/MediaProjectionManagerService;

    # invokes: Lcom/android/server/media/projection/MediaProjectionManagerService;->stopProjectionLocked(Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;)V
    invoke-static {v0, p0}, Lcom/android/server/media/projection/MediaProjectionManagerService;->access$1300(Lcom/android/server/media/projection/MediaProjectionManagerService;Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;)V

    .line 439
    iget-object v0, p0, mToken:Landroid/os/IBinder;

    iget-object v2, p0, mDeathEater:Landroid/os/IBinder$DeathRecipient;

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 440
    const/4 v0, 0x0

    iput-object v0, p0, mToken:Landroid/os/IBinder;

    .line 441
    iget-object v0, p0, mCallback:Landroid/media/projection/IMediaProjectionCallback;

    invoke-virtual {p0, v0}, unregisterCallback(Landroid/media/projection/IMediaProjectionCallback;)V

    .line 442
    const/4 v0, 0x0

    iput-object v0, p0, mCallback:Landroid/media/projection/IMediaProjectionCallback;

    .line 443
    monitor-exit v1

    goto :goto_4b

    :catchall_66
    move-exception v0

    monitor-exit v1
    :try_end_68
    .catchall {:try_start_7 .. :try_end_68} :catchall_66

    throw v0
.end method

.method public unregisterCallback(Landroid/media/projection/IMediaProjectionCallback;)V
    .registers 4
    .param p1, "callback"    # Landroid/media/projection/IMediaProjectionCallback;

    .prologue
    .line 456
    if-nez p1, :cond_a

    .line 457
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "callback must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 459
    :cond_a
    iget-object v0, p0, this$0:Lcom/android/server/media/projection/MediaProjectionManagerService;

    # getter for: Lcom/android/server/media/projection/MediaProjectionManagerService;->mCallbackDelegate:Lcom/android/server/media/projection/MediaProjectionManagerService$CallbackDelegate;
    invoke-static {v0}, Lcom/android/server/media/projection/MediaProjectionManagerService;->access$1100(Lcom/android/server/media/projection/MediaProjectionManagerService;)Lcom/android/server/media/projection/MediaProjectionManagerService$CallbackDelegate;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/media/projection/MediaProjectionManagerService$CallbackDelegate;->remove(Landroid/media/projection/IMediaProjectionCallback;)V

    .line 460
    return-void
.end method
