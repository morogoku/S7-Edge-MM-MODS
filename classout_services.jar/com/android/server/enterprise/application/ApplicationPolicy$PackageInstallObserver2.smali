.class Lcom/android/server/enterprise/application/ApplicationPolicy$PackageInstallObserver2;
.super Landroid/content/pm/IPackageInstallObserver2$Stub;
.source "ApplicationPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/application/ApplicationPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PackageInstallObserver2"
.end annotation


# instance fields
.field finished:Z

.field pkgName:Ljava/lang/String;

.field result:I

.field final synthetic this$0:Lcom/android/server/enterprise/application/ApplicationPolicy;


# direct methods
.method private constructor <init>(Lcom/android/server/enterprise/application/ApplicationPolicy;)V
    .registers 3

    .prologue
    .line 2206
    iput-object p1, p0, this$0:Lcom/android/server/enterprise/application/ApplicationPolicy;

    invoke-direct {p0}, Landroid/content/pm/IPackageInstallObserver2$Stub;-><init>()V

    .line 2208
    const/4 v0, 0x0

    iput-object v0, p0, pkgName:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/enterprise/application/ApplicationPolicy;Lcom/android/server/enterprise/application/ApplicationPolicy$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/android/server/enterprise/application/ApplicationPolicy;
    .param p2, "x1"    # Lcom/android/server/enterprise/application/ApplicationPolicy$1;

    .prologue
    .line 2206
    invoke-direct {p0, p1}, <init>(Lcom/android/server/enterprise/application/ApplicationPolicy;)V

    return-void
.end method


# virtual methods
.method public onPackageInstalled(Ljava/lang/String;ILjava/lang/String;Landroid/os/Bundle;)V
    .registers 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "returnCode"    # I
    .param p3, "msg"    # Ljava/lang/String;
    .param p4, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 2213
    monitor-enter p0

    .line 2214
    const/4 v0, 0x1

    :try_start_2
    iput-boolean v0, p0, finished:Z

    .line 2215
    iput-object p1, p0, pkgName:Ljava/lang/String;

    .line 2216
    iput p2, p0, result:I

    .line 2217
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 2218
    monitor-exit p0

    .line 2219
    return-void

    .line 2218
    :catchall_d
    move-exception v0

    monitor-exit p0
    :try_end_f
    .catchall {:try_start_2 .. :try_end_f} :catchall_d

    throw v0
.end method

.method public onUserActionRequired(Landroid/content/Intent;)V
    .registers 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 2223
    return-void
.end method
