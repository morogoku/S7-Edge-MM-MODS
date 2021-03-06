.class final Lcom/android/server/UiModeManagerService;
.super Lcom/android/server/SystemService;
.source "UiModeManagerService.java"


# static fields
.field private static final ENABLE_LAUNCH_CAR_DOCK_APP:Z = true

.field private static final ENABLE_LAUNCH_DESK_DOCK_APP:Z = true

.field private static final LOG:Z

.field private static final TAG:Ljava/lang/String;

.field private static mIsTablet:Z


# instance fields
.field private final mBatteryReceiver:Landroid/content/BroadcastReceiver;

.field private mCarModeEnableFlags:I

.field private mCarModeEnabled:Z

.field private mCarModeKeepsScreenOn:Z

.field private mCharging:Z

.field private mComputedNightMode:Z

.field private mConfiguration:Landroid/content/res/Configuration;

.field mCurUiMode:I

.field private mDefaultUiModeType:I

.field private mDeskModeKeepsScreenOn:Z

.field private final mDockModeReceiver:Landroid/content/BroadcastReceiver;

.field private mDockState:I

.field private final mHandler:Landroid/os/Handler;

.field private mHoldingConfiguration:Z

.field private mLastBroadcastState:I

.field final mLock:Ljava/lang/Object;

.field private mNightMode:I

.field private mNotificationManager:Landroid/app/NotificationManager;

.field private final mResultReceiver:Landroid/content/BroadcastReceiver;

.field private final mService:Landroid/os/IBinder;

.field private mSetUiMode:I

.field private mStatusBarManager:Landroid/app/StatusBarManager;

.field mSystemReady:Z

.field private mTelevision:Z

.field private final mTwilightListener:Lcom/android/server/twilight/TwilightListener;

.field private mTwilightManager:Lcom/android/server/twilight/TwilightManager;

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mWatch:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 58
    const-class v0, Landroid/app/UiModeManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, TAG:Ljava/lang/String;

    .line 97
    const/4 v0, 0x0

    sput-boolean v0, mIsTablet:Z

    .line 99
    const-string/jumbo v0, "ro.build.characteristics"

    const-string/jumbo v1, "phone"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "tablet"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    sput-boolean v0, mIsTablet:Z

    .line 100
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 104
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 65
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, mLock:Ljava/lang/Object;

    .line 66
    iput v1, p0, mDockState:I

    .line 68
    iput v1, p0, mLastBroadcastState:I

    .line 69
    const/4 v0, 0x1

    iput v0, p0, mNightMode:I

    .line 71
    iput-boolean v1, p0, mCarModeEnabled:Z

    .line 72
    iput-boolean v1, p0, mCharging:Z

    .line 81
    iput v1, p0, mCurUiMode:I

    .line 82
    iput v1, p0, mSetUiMode:I

    .line 83
    iput-boolean v1, p0, mHoldingConfiguration:Z

    .line 85
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    iput-object v0, p0, mConfiguration:Landroid/content/res/Configuration;

    .line 88
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, mHandler:Landroid/os/Handler;

    .line 119
    new-instance v0, Lcom/android/server/UiModeManagerService$1;

    invoke-direct {v0, p0}, Lcom/android/server/UiModeManagerService$1;-><init>(Lcom/android/server/UiModeManagerService;)V

    iput-object v0, p0, mResultReceiver:Landroid/content/BroadcastReceiver;

    .line 138
    new-instance v0, Lcom/android/server/UiModeManagerService$2;

    invoke-direct {v0, p0}, Lcom/android/server/UiModeManagerService$2;-><init>(Lcom/android/server/UiModeManagerService;)V

    iput-object v0, p0, mDockModeReceiver:Landroid/content/BroadcastReceiver;

    .line 147
    new-instance v0, Lcom/android/server/UiModeManagerService$3;

    invoke-direct {v0, p0}, Lcom/android/server/UiModeManagerService$3;-><init>(Lcom/android/server/UiModeManagerService;)V

    iput-object v0, p0, mBatteryReceiver:Landroid/content/BroadcastReceiver;

    .line 159
    new-instance v0, Lcom/android/server/UiModeManagerService$4;

    invoke-direct {v0, p0}, Lcom/android/server/UiModeManagerService$4;-><init>(Lcom/android/server/UiModeManagerService;)V

    iput-object v0, p0, mTwilightListener:Lcom/android/server/twilight/TwilightListener;

    .line 208
    new-instance v0, Lcom/android/server/UiModeManagerService$5;

    invoke-direct {v0, p0}, Lcom/android/server/UiModeManagerService$5;-><init>(Lcom/android/server/UiModeManagerService;)V

    iput-object v0, p0, mService:Landroid/os/IBinder;

    .line 105
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/UiModeManagerService;Ljava/lang/String;II)V
    .registers 4
    .param p0, "x0"    # Lcom/android/server/UiModeManagerService;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .prologue
    .line 57
    invoke-direct {p0, p1, p2, p3}, updateAfterBroadcastLocked(Ljava/lang/String;II)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/UiModeManagerService;I)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/UiModeManagerService;
    .param p1, "x1"    # I

    .prologue
    .line 57
    invoke-direct {p0, p1}, updateDockState(I)V

    return-void
.end method

.method static synthetic access$202(Lcom/android/server/UiModeManagerService;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/UiModeManagerService;
    .param p1, "x1"    # Z

    .prologue
    .line 57
    iput-boolean p1, p0, mCharging:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/server/UiModeManagerService;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/UiModeManagerService;

    .prologue
    .line 57
    iget v0, p0, mNightMode:I

    return v0
.end method

.method static synthetic access$302(Lcom/android/server/UiModeManagerService;I)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/UiModeManagerService;
    .param p1, "x1"    # I

    .prologue
    .line 57
    iput p1, p0, mNightMode:I

    return p1
.end method

.method private adjustStatusBarCarModeLocked()V
    .registers 12

    .prologue
    const/4 v4, 0x0

    const v10, 0x1040453

    const/4 v1, 0x0

    .line 610
    invoke-virtual {p0}, getContext()Landroid/content/Context;

    move-result-object v0

    .line 611
    .local v0, "context":Landroid/content/Context;
    iget-object v3, p0, mStatusBarManager:Landroid/app/StatusBarManager;

    if-nez v3, :cond_18

    .line 612
    const-string/jumbo v3, "statusbar"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/StatusBarManager;

    iput-object v3, p0, mStatusBarManager:Landroid/app/StatusBarManager;

    .line 621
    :cond_18
    iget-object v3, p0, mStatusBarManager:Landroid/app/StatusBarManager;

    if-eqz v3, :cond_27

    .line 622
    iget-object v5, p0, mStatusBarManager:Landroid/app/StatusBarManager;

    iget-boolean v3, p0, mCarModeEnabled:Z

    if-eqz v3, :cond_96

    const/high16 v3, 0x80000

    :goto_24
    invoke-virtual {v5, v3}, Landroid/app/StatusBarManager;->disable(I)V

    .line 627
    :cond_27
    iget-object v3, p0, mNotificationManager:Landroid/app/NotificationManager;

    if-nez v3, :cond_36

    .line 628
    const-string/jumbo v3, "notification"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/NotificationManager;

    iput-object v3, p0, mNotificationManager:Landroid/app/NotificationManager;

    .line 632
    :cond_36
    iget-object v3, p0, mNotificationManager:Landroid/app/NotificationManager;

    if-eqz v3, :cond_95

    .line 633
    iget-boolean v3, p0, mCarModeEnabled:Z

    if-eqz v3, :cond_98

    .line 634
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/android/internal/app/DisableCarModeActivity;

    invoke-direct {v2, v0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 636
    .local v2, "carModeOffIntent":Landroid/content/Intent;
    new-instance v3, Landroid/app/Notification$Builder;

    invoke-direct {v3, v0}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    const v5, 0x1080752

    invoke-virtual {v3, v5}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v3

    const/4 v5, 0x4

    invoke-virtual {v3, v5}, Landroid/app/Notification$Builder;->setDefaults(I)Landroid/app/Notification$Builder;

    move-result-object v3

    const/4 v5, 0x1

    invoke-virtual {v3, v5}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object v3

    const-wide/16 v8, 0x0

    invoke-virtual {v3, v8, v9}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v3

    const v5, 0x1060059

    invoke-virtual {v0, v5}, Landroid/content/Context;->getColor(I)I

    move-result v5

    invoke-virtual {v3, v5}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    move-result-object v3

    invoke-virtual {v0, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v3

    const v5, 0x1040454

    invoke-virtual {v0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v7

    sget-object v5, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    move v3, v1

    invoke-static/range {v0 .. v5}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v7, v1}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v6

    .line 650
    .local v6, "n":Landroid/app/Notification$Builder;
    iget-object v1, p0, mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v6}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v3

    sget-object v5, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v4, v10, v3, v5}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    .line 657
    .end local v2    # "carModeOffIntent":Landroid/content/Intent;
    .end local v6    # "n":Landroid/app/Notification$Builder;
    :cond_95
    :goto_95
    return-void

    :cond_96
    move v3, v1

    .line 622
    goto :goto_24

    .line 653
    :cond_98
    iget-object v1, p0, mNotificationManager:Landroid/app/NotificationManager;

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v4, v10, v3}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    goto :goto_95
.end method

.method private static buildHomeIntent(Ljava/lang/String;)Landroid/content/Intent;
    .registers 3
    .param p0, "category"    # Ljava/lang/String;

    .prologue
    .line 108
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 109
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {v0, p0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 110
    const/high16 v1, 0x10200000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 112
    return-object v0
.end method

.method private static isDeskDockState(I)Z
    .registers 2
    .param p0, "state"    # I

    .prologue
    .line 359
    packed-switch p0, :pswitch_data_8

    .line 365
    :pswitch_3
    const/4 v0, 0x0

    :goto_4
    return v0

    .line 363
    :pswitch_5
    const/4 v0, 0x1

    goto :goto_4

    .line 359
    nop

    :pswitch_data_8
    .packed-switch 0x1
        :pswitch_5
        :pswitch_3
        :pswitch_5
        :pswitch_5
    .end packed-switch
.end method

.method private sendConfigurationAndStartDreamOrDockAppLocked(Ljava/lang/String;)V
    .registers 19
    .param p1, "category"    # Ljava/lang/String;

    .prologue
    .line 549
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-boolean v1, v0, mHoldingConfiguration:Z

    .line 550
    invoke-direct/range {p0 .. p0}, updateConfigurationLocked()V

    .line 553
    const/4 v13, 0x0

    .line 555
    .local v13, "dockAppStarted":Z
    if-eqz p1, :cond_56

    .line 557
    const/4 v15, 0x1

    .line 558
    .local v15, "isDeskHomeEnabled":Z
    sget-boolean v1, mIsTablet:Z

    if-nez v1, :cond_2e

    .line 560
    const-string v1, "android.intent.category.DESK_DOCK"

    move-object/from16 v0, p1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2e

    .line 562
    invoke-virtual/range {p0 .. p0}, getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "desk_home_screen_display"

    const/4 v3, 0x1

    const/4 v5, -0x2

    invoke-static {v1, v2, v3, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    if-eqz v1, :cond_65

    const/4 v15, 0x1

    .line 577
    :cond_2e
    :goto_2e
    if-eqz v15, :cond_56

    .line 579
    invoke-static/range {p1 .. p1}, buildHomeIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v4

    .line 580
    .local v4, "homeIntent":Landroid/content/Intent;
    invoke-virtual/range {p0 .. p0}, getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v4}, Landroid/service/dreams/Sandman;->shouldStartDockApp(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v1

    if-eqz v1, :cond_56

    .line 582
    :try_start_3e
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v0, p0

    iget-object v10, v0, mConfiguration:Landroid/content/res/Configuration;

    const/4 v11, 0x0

    const/4 v12, -0x2

    invoke-interface/range {v1 .. v12}, Landroid/app/IActivityManager;->startActivityWithConfig(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILandroid/content/res/Configuration;Landroid/os/Bundle;I)I
    :try_end_52
    .catch Landroid/os/RemoteException; {:try_start_3e .. :try_end_52} :catch_91

    move-result v16

    .line 585
    .local v16, "result":I
    if-ltz v16, :cond_67

    .line 586
    const/4 v13, 0x1

    .line 601
    .end local v4    # "homeIntent":Landroid/content/Intent;
    .end local v15    # "isDeskHomeEnabled":Z
    .end local v16    # "result":I
    :cond_56
    :goto_56
    invoke-direct/range {p0 .. p0}, sendConfigurationLocked()V

    .line 604
    if-eqz p1, :cond_64

    if-nez v13, :cond_64

    .line 605
    invoke-virtual/range {p0 .. p0}, getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/service/dreams/Sandman;->startDreamWhenDockedIfAppropriate(Landroid/content/Context;)V

    .line 607
    :cond_64
    return-void

    .line 562
    .restart local v15    # "isDeskHomeEnabled":Z
    :cond_65
    const/4 v15, 0x0

    goto :goto_2e

    .line 587
    .restart local v4    # "homeIntent":Landroid/content/Intent;
    .restart local v16    # "result":I
    :cond_67
    const/4 v1, -0x1

    move/from16 v0, v16

    if-eq v0, v1, :cond_56

    .line 588
    :try_start_6c
    sget-object v1, TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not start dock app: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", startActivityWithConfig result "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_90
    .catch Landroid/os/RemoteException; {:try_start_6c .. :try_end_90} :catch_91

    goto :goto_56

    .line 591
    .end local v16    # "result":I
    :catch_91
    move-exception v14

    .line 592
    .local v14, "ex":Landroid/os/RemoteException;
    sget-object v1, TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not start dock app: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v14}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_56
.end method

.method private sendConfigurationLocked()V
    .registers 4

    .prologue
    .line 404
    iget v1, p0, mSetUiMode:I

    iget-object v2, p0, mConfiguration:Landroid/content/res/Configuration;

    iget v2, v2, Landroid/content/res/Configuration;->uiMode:I

    if-eq v1, v2, :cond_17

    .line 405
    iget-object v1, p0, mConfiguration:Landroid/content/res/Configuration;

    iget v1, v1, Landroid/content/res/Configuration;->uiMode:I

    iput v1, p0, mSetUiMode:I

    .line 408
    :try_start_e
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    iget-object v2, p0, mConfiguration:Landroid/content/res/Configuration;

    invoke-interface {v1, v2}, Landroid/app/IActivityManager;->updateConfiguration(Landroid/content/res/Configuration;)V
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_17} :catch_18

    .line 413
    :cond_17
    :goto_17
    return-void

    .line 409
    :catch_18
    move-exception v0

    .line 410
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, TAG:Ljava/lang/String;

    const-string v2, "Failure communicating with activity manager"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_17
.end method

.method private updateAfterBroadcastLocked(Ljava/lang/String;II)V
    .registers 6
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "enableFlags"    # I
    .param p3, "disableFlags"    # I

    .prologue
    .line 514
    const/4 v0, 0x0

    .line 515
    .local v0, "category":Ljava/lang/String;
    sget-object v1, Landroid/app/UiModeManager;->ACTION_ENTER_CAR_MODE:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 518
    and-int/lit8 v1, p2, 0x1

    if-eqz v1, :cond_f

    .line 520
    const-string v0, "android.intent.category.CAR_DOCK"

    .line 544
    :cond_f
    :goto_f
    invoke-direct {p0, v0}, sendConfigurationAndStartDreamOrDockAppLocked(Ljava/lang/String;)V

    .line 545
    return-void

    .line 522
    :cond_13
    sget-object v1, Landroid/app/UiModeManager;->ACTION_ENTER_DESK_MODE:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_22

    .line 526
    and-int/lit8 v1, p2, 0x1

    if-eqz v1, :cond_f

    .line 528
    const-string v0, "android.intent.category.DESK_DOCK"

    goto :goto_f

    .line 532
    :cond_22
    and-int/lit8 v1, p3, 0x1

    if-eqz v1, :cond_f

    .line 533
    const-string v0, "android.intent.category.HOME"

    goto :goto_f
.end method

.method private updateComputedNightModeLocked()V
    .registers 3

    .prologue
    .line 669
    iget-object v1, p0, mTwilightManager:Lcom/android/server/twilight/TwilightManager;

    if-eqz v1, :cond_12

    .line 670
    iget-object v1, p0, mTwilightManager:Lcom/android/server/twilight/TwilightManager;

    invoke-interface {v1}, Lcom/android/server/twilight/TwilightManager;->getCurrentState()Lcom/android/server/twilight/TwilightState;

    move-result-object v0

    .line 671
    .local v0, "state":Lcom/android/server/twilight/TwilightState;
    if-eqz v0, :cond_12

    .line 672
    invoke-virtual {v0}, Lcom/android/server/twilight/TwilightState;->isNight()Z

    move-result v1

    iput-boolean v1, p0, mComputedNightMode:Z

    .line 675
    .end local v0    # "state":Lcom/android/server/twilight/TwilightState;
    :cond_12
    return-void
.end method

.method private updateConfigurationLocked()V
    .registers 3

    .prologue
    .line 370
    iget v0, p0, mDefaultUiModeType:I

    .line 371
    .local v0, "uiMode":I
    iget-boolean v1, p0, mTelevision:Z

    if-eqz v1, :cond_20

    .line 372
    const/4 v0, 0x4

    .line 381
    :cond_7
    :goto_7
    iget v1, p0, mNightMode:I

    if-nez v1, :cond_39

    .line 382
    invoke-direct {p0}, updateComputedNightModeLocked()V

    .line 383
    iget-boolean v1, p0, mComputedNightMode:Z

    if-eqz v1, :cond_36

    const/16 v1, 0x20

    :goto_14
    or-int/2addr v0, v1

    .line 397
    :goto_15
    iput v0, p0, mCurUiMode:I

    .line 398
    iget-boolean v1, p0, mHoldingConfiguration:Z

    if-nez v1, :cond_1f

    .line 399
    iget-object v1, p0, mConfiguration:Landroid/content/res/Configuration;

    iput v0, v1, Landroid/content/res/Configuration;->uiMode:I

    .line 401
    :cond_1f
    return-void

    .line 373
    :cond_20
    iget-boolean v1, p0, mWatch:Z

    if-eqz v1, :cond_26

    .line 374
    const/4 v0, 0x6

    goto :goto_7

    .line 375
    :cond_26
    iget-boolean v1, p0, mCarModeEnabled:Z

    if-eqz v1, :cond_2c

    .line 376
    const/4 v0, 0x3

    goto :goto_7

    .line 377
    :cond_2c
    iget v1, p0, mDockState:I

    invoke-static {v1}, isDeskDockState(I)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 378
    const/4 v0, 0x2

    goto :goto_7

    .line 383
    :cond_36
    const/16 v1, 0x10

    goto :goto_14

    .line 386
    :cond_39
    iget v1, p0, mNightMode:I

    shl-int/lit8 v1, v1, 0x4

    or-int/2addr v0, v1

    goto :goto_15
.end method

.method private updateDockState(I)V
    .registers 7
    .param p1, "newState"    # I

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 347
    iget-object v2, p0, mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 348
    :try_start_5
    iget v3, p0, mDockState:I

    if-eq p1, v3, :cond_1d

    .line 349
    iput p1, p0, mDockState:I

    .line 350
    iget v3, p0, mDockState:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1f

    :goto_10
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, setCarModeLocked(ZI)V

    .line 351
    iget-boolean v0, p0, mSystemReady:Z

    if-eqz v0, :cond_1d

    .line 352
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, updateLocked(II)V

    .line 355
    :cond_1d
    monitor-exit v2

    .line 356
    return-void

    :cond_1f
    move v0, v1

    .line 350
    goto :goto_10

    .line 355
    :catchall_21
    move-exception v0

    monitor-exit v2
    :try_end_23
    .catchall {:try_start_5 .. :try_end_23} :catchall_21

    throw v0
.end method


# virtual methods
.method dumpImpl(Ljava/io/PrintWriter;)V
    .registers 4
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .prologue
    .line 300
    iget-object v1, p0, mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 301
    :try_start_3
    const-string v0, "Current UI Mode Service state:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 302
    const-string v0, "  mDockState="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, mDockState:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 303
    const-string v0, " mLastBroadcastState="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, mLastBroadcastState:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 304
    const-string v0, "  mNightMode="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, mNightMode:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 305
    const-string v0, " mCarModeEnabled="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, mCarModeEnabled:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 306
    const-string v0, " mComputedNightMode="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, mComputedNightMode:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 307
    const-string v0, " mCarModeEnableFlags="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, mCarModeEnableFlags:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 308
    const-string v0, "  mCurUiMode=0x"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, mCurUiMode:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 309
    const-string v0, " mSetUiMode=0x"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, mSetUiMode:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 310
    const-string v0, "  mHoldingConfiguration="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, mHoldingConfiguration:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 311
    const-string v0, " mSystemReady="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, mSystemReady:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 312
    iget-object v0, p0, mTwilightManager:Lcom/android/server/twilight/TwilightManager;

    if-eqz v0, :cond_86

    .line 314
    const-string v0, "  mTwilightService.getCurrentState()="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 315
    iget-object v0, p0, mTwilightManager:Lcom/android/server/twilight/TwilightManager;

    invoke-interface {v0}, Lcom/android/server/twilight/TwilightManager;->getCurrentState()Lcom/android/server/twilight/TwilightState;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 317
    :cond_86
    monitor-exit v1

    .line 318
    return-void

    .line 317
    :catchall_88
    move-exception v0

    monitor-exit v1
    :try_end_8a
    .catchall {:try_start_3 .. :try_end_8a} :catchall_88

    throw v0
.end method

.method public onBootPhase(I)V
    .registers 8
    .param p1, "phase"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 322
    const/16 v0, 0x1f4

    if-ne p1, v0, :cond_34

    .line 323
    iget-object v3, p0, mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 324
    :try_start_9
    const-class v0, Lcom/android/server/twilight/TwilightManager;

    invoke-virtual {p0, v0}, getLocalService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/twilight/TwilightManager;

    iput-object v0, p0, mTwilightManager:Lcom/android/server/twilight/TwilightManager;

    .line 325
    iget-object v0, p0, mTwilightManager:Lcom/android/server/twilight/TwilightManager;

    if-eqz v0, :cond_20

    .line 326
    iget-object v0, p0, mTwilightManager:Lcom/android/server/twilight/TwilightManager;

    iget-object v4, p0, mTwilightListener:Lcom/android/server/twilight/TwilightListener;

    iget-object v5, p0, mHandler:Landroid/os/Handler;

    invoke-interface {v0, v4, v5}, Lcom/android/server/twilight/TwilightManager;->registerListener(Lcom/android/server/twilight/TwilightListener;Landroid/os/Handler;)V

    .line 328
    :cond_20
    const/4 v0, 0x1

    iput-boolean v0, p0, mSystemReady:Z

    .line 329
    iget v0, p0, mDockState:I

    const/4 v4, 0x2

    if-ne v0, v4, :cond_35

    move v0, v1

    :goto_29
    iput-boolean v0, p0, mCarModeEnabled:Z

    .line 330
    invoke-direct {p0}, updateComputedNightModeLocked()V

    .line 331
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, updateLocked(II)V

    .line 332
    monitor-exit v3

    .line 334
    :cond_34
    return-void

    :cond_35
    move v0, v2

    .line 329
    goto :goto_29

    .line 332
    :catchall_37
    move-exception v0

    monitor-exit v3
    :try_end_39
    .catchall {:try_start_9 .. :try_end_39} :catchall_37

    throw v0
.end method

.method public onStart()V
    .registers 11

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 168
    invoke-virtual {p0}, getContext()Landroid/content/Context;

    move-result-object v0

    .line 170
    .local v0, "context":Landroid/content/Context;
    const-string/jumbo v5, "power"

    invoke-virtual {v0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/PowerManager;

    .line 172
    .local v3, "powerManager":Landroid/os/PowerManager;
    const/16 v5, 0x1a

    sget-object v8, TAG:Ljava/lang/String;

    invoke-virtual {v3, v5, v8}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v5

    iput-object v5, p0, mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 174
    iget-object v5, p0, mDockModeReceiver:Landroid/content/BroadcastReceiver;

    new-instance v8, Landroid/content/IntentFilter;

    const-string v9, "android.intent.action.DOCK_EVENT"

    invoke-direct {v8, v9}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v5, v8}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 176
    iget-object v5, p0, mBatteryReceiver:Landroid/content/BroadcastReceiver;

    new-instance v8, Landroid/content/IntentFilter;

    const-string v9, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v8, v9}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v5, v8}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 179
    iget-object v5, p0, mConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v5}, Landroid/content/res/Configuration;->setToDefaults()V

    .line 181
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 182
    .local v4, "res":Landroid/content/res/Resources;
    const v5, 0x10e0046

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    iput v5, p0, mDefaultUiModeType:I

    .line 184
    const v5, 0x10e0044

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    if-ne v5, v6, :cond_9f

    move v5, v6

    :goto_4d
    iput-boolean v5, p0, mCarModeKeepsScreenOn:Z

    .line 186
    const v5, 0x10e0042

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    if-ne v5, v6, :cond_a1

    move v5, v6

    :goto_59
    iput-boolean v5, p0, mDeskModeKeepsScreenOn:Z

    .line 189
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 190
    .local v2, "pm":Landroid/content/pm/PackageManager;
    const-string v5, "android.hardware.type.television"

    invoke-virtual {v2, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_6f

    const-string v5, "android.software.leanback"

    invoke-virtual {v2, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_70

    :cond_6f
    move v7, v6

    :cond_70
    iput-boolean v7, p0, mTelevision:Z

    .line 192
    const-string v5, "android.hardware.type.watch"

    invoke-virtual {v2, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v5

    iput-boolean v5, p0, mWatch:Z

    .line 194
    const v5, 0x10e0047

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    .line 196
    .local v1, "defaultNightMode":I
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "ui_night_mode"

    invoke-static {v5, v6, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    iput v5, p0, mNightMode:I

    .line 200
    monitor-enter p0

    .line 201
    :try_start_8f
    invoke-direct {p0}, updateConfigurationLocked()V

    .line 202
    invoke-direct {p0}, sendConfigurationLocked()V

    .line 203
    monitor-exit p0
    :try_end_96
    .catchall {:try_start_8f .. :try_end_96} :catchall_a3

    .line 205
    const-string/jumbo v5, "uimode"

    iget-object v6, p0, mService:Landroid/os/IBinder;

    invoke-virtual {p0, v5, v6}, publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 206
    return-void

    .end local v1    # "defaultNightMode":I
    .end local v2    # "pm":Landroid/content/pm/PackageManager;
    :cond_9f
    move v5, v7

    .line 184
    goto :goto_4d

    :cond_a1
    move v5, v7

    .line 186
    goto :goto_59

    .line 203
    .restart local v1    # "defaultNightMode":I
    .restart local v2    # "pm":Landroid/content/pm/PackageManager;
    :catchall_a3
    move-exception v5

    :try_start_a4
    monitor-exit p0
    :try_end_a5
    .catchall {:try_start_a4 .. :try_end_a5} :catchall_a3

    throw v5
.end method

.method setCarModeLocked(ZI)V
    .registers 6
    .param p1, "enabled"    # Z
    .param p2, "flags"    # I

    .prologue
    .line 337
    iget-boolean v1, p0, mCarModeEnabled:Z

    if-eq v1, p1, :cond_1b

    .line 338
    iput-boolean p1, p0, mCarModeEnabled:Z

    .line 339
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.android.intent.action.ANDROID_AUTO_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 340
    .local v0, "mAutoIntent":Landroid/content/Intent;
    const-string v1, "CarModeEnabled"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 341
    invoke-virtual {p0}, getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 343
    .end local v0    # "mAutoIntent":Landroid/content/Intent;
    :cond_1b
    iput p2, p0, mCarModeEnableFlags:I

    .line 344
    return-void
.end method

.method updateLocked(II)V
    .registers 16
    .param p1, "enableFlags"    # I
    .param p2, "disableFlags"    # I

    .prologue
    .line 416
    const/4 v9, 0x0

    .line 417
    .local v9, "action":Ljava/lang/String;
    const/4 v12, 0x0

    .line 418
    .local v12, "oldAction":Ljava/lang/String;
    iget v0, p0, mLastBroadcastState:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_82

    .line 419
    invoke-direct {p0}, adjustStatusBarCarModeLocked()V

    .line 420
    sget-object v12, Landroid/app/UiModeManager;->ACTION_EXIT_CAR_MODE:Ljava/lang/String;

    .line 425
    :cond_c
    :goto_c
    iget-boolean v0, p0, mCarModeEnabled:Z

    if-eqz v0, :cond_8d

    .line 426
    iget v0, p0, mLastBroadcastState:I

    const/4 v2, 0x2

    if-eq v0, v2, :cond_2d

    .line 427
    invoke-direct {p0}, adjustStatusBarCarModeLocked()V

    .line 429
    if-eqz v12, :cond_28

    .line 430
    invoke-virtual {p0}, getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 432
    :cond_28
    const/4 v0, 0x2

    iput v0, p0, mLastBroadcastState:I

    .line 433
    sget-object v9, Landroid/app/UiModeManager;->ACTION_ENTER_CAR_MODE:Ljava/lang/String;

    .line 448
    :cond_2d
    :goto_2d
    if-eqz v9, :cond_bb

    .line 461
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 462
    .local v1, "intent":Landroid/content/Intent;
    const-string/jumbo v0, "enableFlags"

    invoke-virtual {v1, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 463
    const-string/jumbo v0, "disableFlags"

    invoke-virtual {v1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 464
    invoke-virtual {p0}, getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    const/4 v3, 0x0

    iget-object v4, p0, mResultReceiver:Landroid/content/BroadcastReceiver;

    const/4 v5, 0x0

    const/4 v6, -0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v0 .. v8}, Landroid/content/Context;->sendOrderedBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    .line 470
    const/4 v0, 0x1

    iput-boolean v0, p0, mHoldingConfiguration:Z

    .line 471
    invoke-direct {p0}, updateConfigurationLocked()V

    .line 499
    .end local v1    # "intent":Landroid/content/Intent;
    :goto_56
    iget-boolean v0, p0, mCharging:Z

    if-eqz v0, :cond_e0

    iget-boolean v0, p0, mCarModeEnabled:Z

    if-eqz v0, :cond_68

    iget-boolean v0, p0, mCarModeKeepsScreenOn:Z

    if-eqz v0, :cond_68

    iget v0, p0, mCarModeEnableFlags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_71

    :cond_68
    iget v0, p0, mCurUiMode:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_e0

    iget-boolean v0, p0, mDeskModeKeepsScreenOn:Z

    if-eqz v0, :cond_e0

    :cond_71
    const/4 v11, 0x1

    .line 503
    .local v11, "keepScreenOn":Z
    :goto_72
    iget-object v0, p0, mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eq v11, v0, :cond_81

    .line 504
    if-eqz v11, :cond_e2

    .line 505
    iget-object v0, p0, mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 510
    :cond_81
    :goto_81
    return-void

    .line 421
    .end local v11    # "keepScreenOn":Z
    :cond_82
    iget v0, p0, mLastBroadcastState:I

    invoke-static {v0}, isDeskDockState(I)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 422
    sget-object v12, Landroid/app/UiModeManager;->ACTION_EXIT_DESK_MODE:Ljava/lang/String;

    goto :goto_c

    .line 435
    :cond_8d
    iget v0, p0, mDockState:I

    invoke-static {v0}, isDeskDockState(I)Z

    move-result v0

    if-eqz v0, :cond_b5

    .line 436
    iget v0, p0, mLastBroadcastState:I

    invoke-static {v0}, isDeskDockState(I)Z

    move-result v0

    if-nez v0, :cond_2d

    .line 437
    if-eqz v12, :cond_ad

    .line 438
    invoke-virtual {p0}, getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 440
    :cond_ad
    iget v0, p0, mDockState:I

    iput v0, p0, mLastBroadcastState:I

    .line 441
    sget-object v9, Landroid/app/UiModeManager;->ACTION_ENTER_DESK_MODE:Ljava/lang/String;

    goto/16 :goto_2d

    .line 444
    :cond_b5
    const/4 v0, 0x0

    iput v0, p0, mLastBroadcastState:I

    .line 445
    move-object v9, v12

    goto/16 :goto_2d

    .line 473
    :cond_bb
    const/4 v10, 0x0

    .line 474
    .local v10, "category":Ljava/lang/String;
    iget-boolean v0, p0, mCarModeEnabled:Z

    if-eqz v0, :cond_ca

    .line 475
    and-int/lit8 v0, p1, 0x1

    if-eqz v0, :cond_c6

    .line 477
    const-string v10, "android.intent.category.CAR_DOCK"

    .line 495
    :cond_c6
    :goto_c6
    invoke-direct {p0, v10}, sendConfigurationAndStartDreamOrDockAppLocked(Ljava/lang/String;)V

    goto :goto_56

    .line 479
    :cond_ca
    iget v0, p0, mDockState:I

    invoke-static {v0}, isDeskDockState(I)Z

    move-result v0

    if-eqz v0, :cond_d9

    .line 480
    and-int/lit8 v0, p1, 0x1

    if-eqz v0, :cond_c6

    .line 482
    const-string v10, "android.intent.category.DESK_DOCK"

    goto :goto_c6

    .line 485
    :cond_d9
    and-int/lit8 v0, p2, 0x1

    if-eqz v0, :cond_c6

    .line 486
    const-string v10, "android.intent.category.HOME"

    goto :goto_c6

    .line 499
    .end local v10    # "category":Ljava/lang/String;
    :cond_e0
    const/4 v11, 0x0

    goto :goto_72

    .line 507
    .restart local v11    # "keepScreenOn":Z
    :cond_e2
    iget-object v0, p0, mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    goto :goto_81
.end method

.method updateTwilight()V
    .registers 4

    .prologue
    .line 660
    iget-object v1, p0, mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 661
    :try_start_3
    iget v0, p0, mNightMode:I

    if-nez v0, :cond_f

    .line 662
    invoke-direct {p0}, updateComputedNightModeLocked()V

    .line 663
    const/4 v0, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2}, updateLocked(II)V

    .line 665
    :cond_f
    monitor-exit v1

    .line 666
    return-void

    .line 665
    :catchall_11
    move-exception v0

    monitor-exit v1
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_11

    throw v0
.end method
