.class abstract Lcom/android/server/backup/BackupManagerService$FullBackupTask;
.super Ljava/lang/Object;
.source "BackupManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/backup/BackupManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x400
    name = "FullBackupTask"
.end annotation


# instance fields
.field mObserver:Landroid/app/backup/IFullBackupRestoreObserver;

.field final synthetic this$0:Lcom/android/server/backup/BackupManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/backup/BackupManagerService;Landroid/app/backup/IFullBackupRestoreObserver;)V
    .registers 3
    .param p2, "observer"    # Landroid/app/backup/IFullBackupRestoreObserver;

    .prologue
    .line 3825
    iput-object p1, p0, this$0:Lcom/android/server/backup/BackupManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3826
    iput-object p2, p0, mObserver:Landroid/app/backup/IFullBackupRestoreObserver;

    .line 3827
    return-void
.end method


# virtual methods
.method final sendEndBackup()V
    .registers 4

    .prologue
    .line 3854
    iget-object v1, p0, mObserver:Landroid/app/backup/IFullBackupRestoreObserver;

    if-eqz v1, :cond_9

    .line 3856
    :try_start_4
    iget-object v1, p0, mObserver:Landroid/app/backup/IFullBackupRestoreObserver;

    invoke-interface {v1}, Landroid/app/backup/IFullBackupRestoreObserver;->onEndBackup()V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_a

    .line 3862
    :cond_9
    :goto_9
    return-void

    .line 3857
    :catch_a
    move-exception v0

    .line 3858
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "BackupManagerService"

    const-string/jumbo v2, "full backup observer went away: endBackup"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3859
    const/4 v1, 0x0

    iput-object v1, p0, mObserver:Landroid/app/backup/IFullBackupRestoreObserver;

    goto :goto_9
.end method

.method final sendOnBackupPackage(Ljava/lang/String;)V
    .registers 5
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 3842
    iget-object v1, p0, mObserver:Landroid/app/backup/IFullBackupRestoreObserver;

    if-eqz v1, :cond_9

    .line 3845
    :try_start_4
    iget-object v1, p0, mObserver:Landroid/app/backup/IFullBackupRestoreObserver;

    invoke-interface {v1, p1}, Landroid/app/backup/IFullBackupRestoreObserver;->onBackupPackage(Ljava/lang/String;)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_a

    .line 3851
    :cond_9
    :goto_9
    return-void

    .line 3846
    :catch_a
    move-exception v0

    .line 3847
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "BackupManagerService"

    const-string/jumbo v2, "full backup observer went away: backupPackage"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3848
    const/4 v1, 0x0

    iput-object v1, p0, mObserver:Landroid/app/backup/IFullBackupRestoreObserver;

    goto :goto_9
.end method

.method final sendStartBackup()V
    .registers 4

    .prologue
    .line 3831
    iget-object v1, p0, mObserver:Landroid/app/backup/IFullBackupRestoreObserver;

    if-eqz v1, :cond_9

    .line 3833
    :try_start_4
    iget-object v1, p0, mObserver:Landroid/app/backup/IFullBackupRestoreObserver;

    invoke-interface {v1}, Landroid/app/backup/IFullBackupRestoreObserver;->onStartBackup()V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_a

    .line 3839
    :cond_9
    :goto_9
    return-void

    .line 3834
    :catch_a
    move-exception v0

    .line 3835
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "BackupManagerService"

    const-string/jumbo v2, "full backup observer went away: startBackup"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3836
    const/4 v1, 0x0

    iput-object v1, p0, mObserver:Landroid/app/backup/IFullBackupRestoreObserver;

    goto :goto_9
.end method
