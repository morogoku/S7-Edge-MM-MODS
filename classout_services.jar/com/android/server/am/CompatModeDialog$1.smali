.class Lcom/android/server/am/CompatModeDialog$1;
.super Ljava/lang/Object;
.source "CompatModeDialog.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/am/CompatModeDialog;-><init>(Lcom/android/server/am/ActivityManagerService;Landroid/content/Context;Landroid/content/pm/ApplicationInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/CompatModeDialog;


# direct methods
.method constructor <init>(Lcom/android/server/am/CompatModeDialog;)V
    .registers 2

    .prologue
    .line 52
    iput-object p1, p0, this$0:Lcom/android/server/am/CompatModeDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .registers 7
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    .line 55
    iget-object v0, p0, this$0:Lcom/android/server/am/CompatModeDialog;

    iget-object v1, v0, Lcom/android/server/am/CompatModeDialog;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v1

    .line 56
    :try_start_5
    iget-object v0, p0, this$0:Lcom/android/server/am/CompatModeDialog;

    iget-object v0, v0, Lcom/android/server/am/CompatModeDialog;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v0, Lcom/android/server/am/ActivityManagerService;->mCompatModePackages:Lcom/android/server/am/CompatModePackages;

    iget-object v0, p0, this$0:Lcom/android/server/am/CompatModeDialog;

    iget-object v0, v0, Lcom/android/server/am/CompatModeDialog;->mAppInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v0, p0, this$0:Lcom/android/server/am/CompatModeDialog;

    iget-object v0, v0, Lcom/android/server/am/CompatModeDialog;->mCompatEnabled:Landroid/widget/Switch;

    invoke-virtual {v0}, Landroid/widget/Switch;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_26

    const/4 v0, 0x1

    :goto_1c
    invoke-virtual {v2, v3, v0}, Lcom/android/server/am/CompatModePackages;->setPackageScreenCompatModeLocked(Ljava/lang/String;I)V

    .line 60
    iget-object v0, p0, this$0:Lcom/android/server/am/CompatModeDialog;

    invoke-virtual {v0}, Lcom/android/server/am/CompatModeDialog;->updateControls()V

    .line 61
    monitor-exit v1

    .line 62
    return-void

    .line 56
    :cond_26
    const/4 v0, 0x0

    goto :goto_1c

    .line 61
    :catchall_28
    move-exception v0

    monitor-exit v1
    :try_end_2a
    .catchall {:try_start_5 .. :try_end_2a} :catchall_28

    throw v0
.end method
