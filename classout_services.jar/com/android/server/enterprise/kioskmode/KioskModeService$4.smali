.class Lcom/android/server/enterprise/kioskmode/KioskModeService$4;
.super Landroid/content/BroadcastReceiver;
.source "KioskModeService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/enterprise/kioskmode/KioskModeService;->registerSwitchingUserReceiver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/enterprise/kioskmode/KioskModeService;


# direct methods
.method constructor <init>(Lcom/android/server/enterprise/kioskmode/KioskModeService;)V
    .registers 2

    .prologue
    .line 994
    iput-object p1, p0, this$0:Lcom/android/server/enterprise/kioskmode/KioskModeService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v2, 0x0

    .line 997
    const-string v1, "android.intent.extra.user_handle"

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 998
    .local v0, "userId":I
    iget-object v1, p0, this$0:Lcom/android/server/enterprise/kioskmode/KioskModeService;

    # invokes: Lcom/android/server/enterprise/kioskmode/KioskModeService;->applyHideSystemBarPolicy()V
    invoke-static {v1}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->access$1100(Lcom/android/server/enterprise/kioskmode/KioskModeService;)V

    .line 999
    iget-object v1, p0, this$0:Lcom/android/server/enterprise/kioskmode/KioskModeService;

    # invokes: Lcom/android/server/enterprise/kioskmode/KioskModeService;->applyMultiWindowPolicy(Z)Z
    invoke-static {v1, v2}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->access$1200(Lcom/android/server/enterprise/kioskmode/KioskModeService;Z)Z

    .line 1000
    iget-object v1, p0, this$0:Lcom/android/server/enterprise/kioskmode/KioskModeService;

    # invokes: Lcom/android/server/enterprise/kioskmode/KioskModeService;->evaluateAirModeConfigurationsAsUser(I)V
    invoke-static {v1, v0}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->access$1300(Lcom/android/server/enterprise/kioskmode/KioskModeService;I)V

    .line 1001
    return-void
.end method
