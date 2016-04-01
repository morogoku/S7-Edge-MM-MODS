.class Lcom/android/server/backup/BackupManagerService$FullBackupParams;
.super Lcom/android/server/backup/BackupManagerService$FullParams;
.source "BackupManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/backup/BackupManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "FullBackupParams"
.end annotation


# instance fields
.field public allApps:Z

.field public doCompress:Z

.field public doWidgets:Z

.field public extraFlag:I

.field public includeApks:Z

.field public includeObbs:Z

.field public includeShared:Z

.field public includeSystem:Z

.field public packages:[Ljava/lang/String;

.field final synthetic this$0:Lcom/android/server/backup/BackupManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/backup/BackupManagerService;Landroid/os/ParcelFileDescriptor;ZZZZZZZ[Ljava/lang/String;I)V
    .registers 12
    .param p2, "output"    # Landroid/os/ParcelFileDescriptor;
    .param p3, "saveApks"    # Z
    .param p4, "saveObbs"    # Z
    .param p5, "saveShared"    # Z
    .param p6, "alsoWidgets"    # Z
    .param p7, "doAllApps"    # Z
    .param p8, "doSystem"    # Z
    .param p9, "compress"    # Z
    .param p10, "pkgList"    # [Ljava/lang/String;
    .param p11, "extraFlag"    # I

    .prologue
    .line 562
    iput-object p1, p0, this$0:Lcom/android/server/backup/BackupManagerService;

    invoke-direct {p0, p1}, Lcom/android/server/backup/BackupManagerService$FullParams;-><init>(Lcom/android/server/backup/BackupManagerService;)V

    .line 563
    iput-object p2, p0, fd:Landroid/os/ParcelFileDescriptor;

    .line 564
    iput-boolean p3, p0, includeApks:Z

    .line 565
    iput-boolean p4, p0, includeObbs:Z

    .line 566
    iput-boolean p5, p0, includeShared:Z

    .line 567
    iput-boolean p6, p0, doWidgets:Z

    .line 568
    iput-boolean p7, p0, allApps:Z

    .line 569
    iput-boolean p8, p0, includeSystem:Z

    .line 570
    iput-boolean p9, p0, doCompress:Z

    .line 571
    iput-object p10, p0, packages:[Ljava/lang/String;

    .line 572
    iput p11, p0, extraFlag:I

    .line 573
    return-void
.end method
