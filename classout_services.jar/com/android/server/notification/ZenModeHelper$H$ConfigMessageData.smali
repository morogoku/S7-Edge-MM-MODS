.class final Lcom/android/server/notification/ZenModeHelper$H$ConfigMessageData;
.super Ljava/lang/Object;
.source "ZenModeHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/notification/ZenModeHelper$H;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ConfigMessageData"
.end annotation


# instance fields
.field public final config:Landroid/service/notification/ZenModeConfig;

.field public final reason:Ljava/lang/String;

.field final synthetic this$1:Lcom/android/server/notification/ZenModeHelper$H;


# direct methods
.method constructor <init>(Lcom/android/server/notification/ZenModeHelper$H;Landroid/service/notification/ZenModeConfig;Ljava/lang/String;)V
    .registers 4
    .param p2, "config"    # Landroid/service/notification/ZenModeConfig;
    .param p3, "reason"    # Ljava/lang/String;

    .prologue
    .line 964
    iput-object p1, p0, this$1:Lcom/android/server/notification/ZenModeHelper$H;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 965
    iput-object p2, p0, config:Landroid/service/notification/ZenModeConfig;

    .line 966
    iput-object p3, p0, reason:Ljava/lang/String;

    .line 967
    return-void
.end method
