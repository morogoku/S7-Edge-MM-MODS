.class Lcom/android/server/InputMethodManagerService$CarModeReceiver;
.super Landroid/content/BroadcastReceiver;
.source "InputMethodManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/InputMethodManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CarModeReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/InputMethodManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/InputMethodManagerService;)V
    .registers 2

    .prologue
    .line 1122
    iput-object p1, p0, this$0:Lcom/android/server/InputMethodManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private restorePreviousUsedInputMethod()V
    .registers 6

    .prologue
    .line 1150
    iget-object v1, p0, this$0:Lcom/android/server/InputMethodManagerService;

    # getter for: Lcom/android/server/InputMethodManagerService;->mPrevInputMethodForCarMode:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/server/InputMethodManagerService;->access$1100(Lcom/android/server/InputMethodManagerService;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_10

    .line 1151
    const-string v1, "InputMethodManagerService"

    const-string v2, "Failed to return the previous IME becuase the stored info is null"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1163
    :cond_f
    :goto_f
    return-void

    .line 1155
    :cond_10
    iget-object v1, p0, this$0:Lcom/android/server/InputMethodManagerService;

    iget-object v2, p0, this$0:Lcom/android/server/InputMethodManagerService;

    iget-object v2, v2, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    iget-object v3, p0, this$0:Lcom/android/server/InputMethodManagerService;

    iget-object v3, v3, Lcom/android/server/InputMethodManagerService;->mContentResolver:Landroid/content/ContentResolver;

    # invokes: Lcom/android/server/InputMethodManagerService;->getCurrentInputMethodPackageName(Landroid/content/Context;Landroid/content/ContentResolver;)Ljava/lang/String;
    invoke-static {v1, v2, v3}, Lcom/android/server/InputMethodManagerService;->access$1200(Lcom/android/server/InputMethodManagerService;Landroid/content/Context;Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v0

    .line 1156
    .local v0, "currentIME":Ljava/lang/String;
    if-eqz v0, :cond_f

    iget-object v1, p0, this$0:Lcom/android/server/InputMethodManagerService;

    # getter for: Lcom/android/server/InputMethodManagerService;->mPrevInputMethodForCarMode:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/server/InputMethodManagerService;->access$1100(Lcom/android/server/InputMethodManagerService;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 1158
    const-string v1, "InputMethodManagerService"

    const-string v2, "Restore the Previous Used IME because MirrorLink Disconnected"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1159
    iget-object v1, p0, this$0:Lcom/android/server/InputMethodManagerService;

    iget-object v2, p0, this$0:Lcom/android/server/InputMethodManagerService;

    # getter for: Lcom/android/server/InputMethodManagerService;->mPrevInputMethodForCarMode:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/server/InputMethodManagerService;->access$1100(Lcom/android/server/InputMethodManagerService;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, this$0:Lcom/android/server/InputMethodManagerService;

    iget-object v3, v3, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    iget-object v4, p0, this$0:Lcom/android/server/InputMethodManagerService;

    # getter for: Lcom/android/server/InputMethodManagerService;->mPrevInputMethodForCarMode:Ljava/lang/String;
    invoke-static {v4}, Lcom/android/server/InputMethodManagerService;->access$1100(Lcom/android/server/InputMethodManagerService;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getSelectedInputMethodSubtypeId(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/android/server/InputMethodManagerService;->setInputMethodLocked(Ljava/lang/String;I)V

    goto :goto_f
.end method

.method private setDefaultCarModeInputMethod()V
    .registers 5

    .prologue
    .line 1126
    iget-object v0, p0, this$0:Lcom/android/server/InputMethodManagerService;

    # invokes: Lcom/android/server/InputMethodManagerService;->isChineseRegion()Z
    invoke-static {v0}, Lcom/android/server/InputMethodManagerService;->access$500(Lcom/android/server/InputMethodManagerService;)Z

    move-result v0

    if-eqz v0, :cond_4e

    .line 1127
    iget-object v0, p0, this$0:Lcom/android/server/InputMethodManagerService;

    const-string v1, "com.samsung.inputmethod/.SamsungIME"

    # invokes: Lcom/android/server/InputMethodManagerService;->isInstalledInputMethod(Ljava/lang/String;)Z
    invoke-static {v0, v1}, Lcom/android/server/InputMethodManagerService;->access$600(Lcom/android/server/InputMethodManagerService;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_30

    .line 1129
    const-string v0, "com.samsung.inputmethod/.SamsungIME"

    iget-object v1, p0, this$0:Lcom/android/server/InputMethodManagerService;

    iget-object v1, v1, Lcom/android/server/InputMethodManagerService;->mCurMethodId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2f

    .line 1130
    iget-object v0, p0, this$0:Lcom/android/server/InputMethodManagerService;

    const-string v1, "com.samsung.inputmethod/.SamsungIME"

    iget-object v2, p0, this$0:Lcom/android/server/InputMethodManagerService;

    iget-object v2, v2, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    const-string v3, "com.samsung.inputmethod/.SamsungIME"

    invoke-virtual {v2, v3}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getSelectedInputMethodSubtypeId(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/android/server/InputMethodManagerService;->setInputMethodLocked(Ljava/lang/String;I)V

    .line 1146
    :cond_2f
    :goto_2f
    return-void

    .line 1134
    :cond_30
    const-string v0, "com.sec.android.inputmethod/.SamsungKeypad"

    iget-object v1, p0, this$0:Lcom/android/server/InputMethodManagerService;

    iget-object v1, v1, Lcom/android/server/InputMethodManagerService;->mCurMethodId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2f

    .line 1135
    iget-object v0, p0, this$0:Lcom/android/server/InputMethodManagerService;

    const-string v1, "com.sec.android.inputmethod/.SamsungKeypad"

    iget-object v2, p0, this$0:Lcom/android/server/InputMethodManagerService;

    iget-object v2, v2, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    const-string v3, "com.sec.android.inputmethod/.SamsungKeypad"

    invoke-virtual {v2, v3}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getSelectedInputMethodSubtypeId(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/android/server/InputMethodManagerService;->setInputMethodLocked(Ljava/lang/String;I)V

    goto :goto_2f

    .line 1138
    :cond_4e
    iget-object v0, p0, this$0:Lcom/android/server/InputMethodManagerService;

    # invokes: Lcom/android/server/InputMethodManagerService;->isJapaneseRegion()Z
    invoke-static {v0}, Lcom/android/server/InputMethodManagerService;->access$400(Lcom/android/server/InputMethodManagerService;)Z

    move-result v0

    if-eqz v0, :cond_74

    .line 1140
    const-string v0, "com.sec.android.inputmethod.iwnnime.japan/.standardcommon.IWnnLanguageSwitcher"

    iget-object v1, p0, this$0:Lcom/android/server/InputMethodManagerService;

    iget-object v1, v1, Lcom/android/server/InputMethodManagerService;->mCurMethodId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2f

    .line 1141
    iget-object v0, p0, this$0:Lcom/android/server/InputMethodManagerService;

    const-string v1, "com.sec.android.inputmethod.iwnnime.japan/.standardcommon.IWnnLanguageSwitcher"

    iget-object v2, p0, this$0:Lcom/android/server/InputMethodManagerService;

    iget-object v2, v2, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    const-string v3, "com.sec.android.inputmethod.iwnnime.japan/.standardcommon.IWnnLanguageSwitcher"

    invoke-virtual {v2, v3}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getSelectedInputMethodSubtypeId(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/android/server/InputMethodManagerService;->setInputMethodLocked(Ljava/lang/String;I)V

    goto :goto_2f

    .line 1143
    :cond_74
    const-string v0, "com.sec.android.inputmethod/.SamsungKeypad"

    iget-object v1, p0, this$0:Lcom/android/server/InputMethodManagerService;

    iget-object v1, v1, Lcom/android/server/InputMethodManagerService;->mCurMethodId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2f

    .line 1144
    iget-object v0, p0, this$0:Lcom/android/server/InputMethodManagerService;

    const-string v1, "com.sec.android.inputmethod/.SamsungKeypad"

    iget-object v2, p0, this$0:Lcom/android/server/InputMethodManagerService;

    iget-object v2, v2, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    const-string v3, "com.sec.android.inputmethod/.SamsungKeypad"

    invoke-virtual {v2, v3}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getSelectedInputMethodSubtypeId(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/android/server/InputMethodManagerService;->setInputMethodLocked(Ljava/lang/String;I)V

    goto :goto_2f
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 1168
    if-eqz p2, :cond_4e

    :try_start_2
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4e

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.samsung.android.app.mirrorlink.sip"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4e

    .line 1169
    iget-object v1, p0, this$0:Lcom/android/server/InputMethodManagerService;

    iget-object v1, v1, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "com.sec.android.inputmethod"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    if-eqz v1, :cond_4e

    .line 1171
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_4f

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v2, "mlconnected"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4f

    .line 1173
    iget-object v1, p0, this$0:Lcom/android/server/InputMethodManagerService;

    iget-object v2, p0, this$0:Lcom/android/server/InputMethodManagerService;

    iget-object v3, p0, this$0:Lcom/android/server/InputMethodManagerService;

    iget-object v3, v3, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    iget-object v4, p0, this$0:Lcom/android/server/InputMethodManagerService;

    iget-object v4, v4, Lcom/android/server/InputMethodManagerService;->mContentResolver:Landroid/content/ContentResolver;

    # invokes: Lcom/android/server/InputMethodManagerService;->getCurrentInputMethodPackageName(Landroid/content/Context;Landroid/content/ContentResolver;)Ljava/lang/String;
    invoke-static {v2, v3, v4}, Lcom/android/server/InputMethodManagerService;->access$1200(Lcom/android/server/InputMethodManagerService;Landroid/content/Context;Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v2

    # setter for: Lcom/android/server/InputMethodManagerService;->mPrevInputMethodForCarMode:Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/android/server/InputMethodManagerService;->access$1102(Lcom/android/server/InputMethodManagerService;Ljava/lang/String;)Ljava/lang/String;

    .line 1175
    invoke-direct {p0}, setDefaultCarModeInputMethod()V

    .line 1187
    :cond_4e
    :goto_4e
    return-void

    .line 1179
    :cond_4f
    invoke-direct {p0}, restorePreviousUsedInputMethod()V
    :try_end_52
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_52} :catch_53

    goto :goto_4e

    .line 1184
    :catch_53
    move-exception v0

    .line 1185
    .local v0, "ex":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v1, "InputMethodManagerService"

    const-string v2, "CarModeReceiver, NameNotFoundException"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4e
.end method
