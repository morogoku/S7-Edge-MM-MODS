.class Lcom/android/server/pm/PackageManagerService$10;
.super Ljava/lang/Object;
.source "PackageManagerService.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/pm/PackageManagerService;->createIdmapForPackagePairLI(Landroid/content/pm/PackageParser$Package;Landroid/content/pm/PackageParser$Package;Landroid/os/UserHandle;ZZ)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Landroid/content/pm/PackageParser$Package;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/pm/PackageManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/pm/PackageManagerService;)V
    .registers 2

    .prologue
    .line 8701
    iput-object p1, p0, this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Landroid/content/pm/PackageParser$Package;Landroid/content/pm/PackageParser$Package;)I
    .registers 5
    .param p1, "p1"    # Landroid/content/pm/PackageParser$Package;
    .param p2, "p2"    # Landroid/content/pm/PackageParser$Package;

    .prologue
    .line 8703
    iget v0, p1, Landroid/content/pm/PackageParser$Package;->mOverlayPriority:I

    iget v1, p2, Landroid/content/pm/PackageParser$Package;->mOverlayPriority:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 8701
    check-cast p1, Landroid/content/pm/PackageParser$Package;

    .end local p1    # "x0":Ljava/lang/Object;
    check-cast p2, Landroid/content/pm/PackageParser$Package;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, compare(Landroid/content/pm/PackageParser$Package;Landroid/content/pm/PackageParser$Package;)I

    move-result v0

    return v0
.end method