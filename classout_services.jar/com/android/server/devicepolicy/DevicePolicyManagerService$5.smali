.class Lcom/android/server/devicepolicy/DevicePolicyManagerService$5;
.super Ljava/lang/Object;
.source "DevicePolicyManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/devicepolicy/DevicePolicyManagerService;->wipeDataLockedFor3LM(Ljava/lang/Boolean;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

.field final synthetic val$wipeReason:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/server/devicepolicy/DevicePolicyManagerService;Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 5176
    iput-object p1, p0, this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    iput-object p2, p0, val$wipeReason:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 5179
    :try_start_0
    const-string v1, "DevicePolicyManagerService"

    const-string v2, "RecoverySystem.rebootWipeUserData() start"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5180
    iget-object v1, p0, this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    iget-object v1, v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    iget-object v2, p0, val$wipeReason:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/os/RecoverySystem;->rebootWipeUserData(Landroid/content/Context;Ljava/lang/String;)V

    .line 5181
    const-string v1, "DevicePolicyManagerService"

    const-string v2, "RecoverySystem.rebootWipeUserData() end"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_17
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_17} :catch_18
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_17} :catch_21

    .line 5187
    :goto_17
    return-void

    .line 5182
    :catch_18
    move-exception v0

    .line 5183
    .local v0, "e":Ljava/io/IOException;
    const-string v1, "DevicePolicyManagerService"

    const-string v2, "Failed requesting data wipe"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_17

    .line 5184
    .end local v0    # "e":Ljava/io/IOException;
    :catch_21
    move-exception v0

    .line 5185
    .local v0, "e":Ljava/lang/SecurityException;
    const-string v1, "DevicePolicyManagerService"

    const-string v2, "Failed requesting data wipe"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_17
.end method
