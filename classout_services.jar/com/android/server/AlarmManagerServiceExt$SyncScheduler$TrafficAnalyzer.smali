.class Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;
.super Ljava/lang/Object;
.source "AlarmManagerServiceExt.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "TrafficAnalyzer"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;,
        Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$MonitorTask;
    }
.end annotation


# static fields
.field private static final CORELATION_TOLERANCE_VALUE:J = 0x2710L

.field private static final TRAFFICMONITOR_ON:Z = true


# instance fields
.field private mBundlingPolicyReceiver:Landroid/content/BroadcastReceiver;

.field private mConnManagerDoNotUseDirectly:Landroid/net/ConnectivityManager;

.field private mConnectivityReceiver:Landroid/content/BroadcastReceiver;

.field public volatile mDataConnectionIsConnected:Z

.field private mFgActivities:Landroid/util/SparseBooleanArray;

.field private mIgnorelist:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;",
            ">;"
        }
    .end annotation
.end field

.field public volatile mIsScreenOn:Z

.field private mLocationUpdateReceiver:Landroid/content/BroadcastReceiver;

.field private mProcessObserver:Landroid/app/IProcessObserver;

.field private mSafeLock:Ljava/lang/Object;

.field private mScreenReceiver:Landroid/content/BroadcastReceiver;

.field private mWHITElist:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;",
            ">;"
        }
    .end annotation
.end field

.field private mWatchlist:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$1:Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;

.field private whitelistCount:I


# direct methods
.method public constructor <init>(Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;Landroid/content/Context;)V
    .registers 12
    .param p2, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x0

    .line 2275
    iput-object p1, p0, this$1:Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2258
    iput v7, p0, whitelistCount:I

    .line 2259
    const/4 v6, 0x1

    iput-boolean v6, p0, mIsScreenOn:Z

    .line 2260
    iput-boolean v7, p0, mDataConnectionIsConnected:Z

    .line 2261
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, mWHITElist:Ljava/util/ArrayList;

    .line 2262
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, mIgnorelist:Ljava/util/ArrayList;

    .line 2263
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, mWatchlist:Ljava/util/ArrayList;

    .line 2264
    new-instance v6, Landroid/util/SparseBooleanArray;

    invoke-direct {v6}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v6, p0, mFgActivities:Landroid/util/SparseBooleanArray;

    .line 2268
    new-instance v6, Ljava/lang/Object;

    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    iput-object v6, p0, mSafeLock:Ljava/lang/Object;

    .line 2271
    iput-object v8, p0, mConnManagerDoNotUseDirectly:Landroid/net/ConnectivityManager;

    .line 3390
    new-instance v6, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$1;

    invoke-direct {v6, p0}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$1;-><init>(Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;)V

    iput-object v6, p0, mConnectivityReceiver:Landroid/content/BroadcastReceiver;

    .line 3404
    new-instance v6, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$2;

    invoke-direct {v6, p0}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$2;-><init>(Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;)V

    iput-object v6, p0, mProcessObserver:Landroid/app/IProcessObserver;

    .line 3436
    new-instance v6, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$3;

    invoke-direct {v6, p0}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$3;-><init>(Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;)V

    iput-object v6, p0, mScreenReceiver:Landroid/content/BroadcastReceiver;

    .line 3467
    new-instance v6, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$4;

    invoke-direct {v6, p0}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$4;-><init>(Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;)V

    iput-object v6, p0, mLocationUpdateReceiver:Landroid/content/BroadcastReceiver;

    .line 3507
    new-instance v6, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$5;

    invoke-direct {v6, p0}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$5;-><init>(Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;)V

    iput-object v6, p0, mBundlingPolicyReceiver:Landroid/content/BroadcastReceiver;

    .line 2276
    const-string v6, "AlarmManagerEXT"

    const-string v7, "[TA] creating..."

    invoke-static {v6, v7}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2283
    :try_start_5d
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    .line 2284
    .local v0, "am":Landroid/app/IActivityManager;
    iget-object v6, p0, mProcessObserver:Landroid/app/IProcessObserver;

    invoke-interface {v0, v6}, Landroid/app/IActivityManager;->registerProcessObserver(Landroid/app/IProcessObserver;)V
    :try_end_66
    .catch Landroid/os/RemoteException; {:try_start_5d .. :try_end_66} :catch_b3

    .line 2289
    .end local v0    # "am":Landroid/app/IActivityManager;
    :goto_66
    new-instance v4, Landroid/content/IntentFilter;

    const-string v6, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v4, v6}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 2290
    .local v4, "intentFilter":Landroid/content/IntentFilter;
    iget-object v6, p0, mConnectivityReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p2, v6, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 2292
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 2293
    .local v3, "gmsBundlingFilter":Landroid/content/IntentFilter;
    const-string v6, "com.sec.GMS_bundling"

    invoke-virtual {v3, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2294
    const-string v6, "com.google.android.location.reporting.ACTION_INSISTENT_SYNC"

    invoke-virtual {v3, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2295
    iget-object v6, p0, mLocationUpdateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p2, v6, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 2297
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 2298
    .local v1, "bundlingPolicyFilter":Landroid/content/IntentFilter;
    const-string v6, "com.sec.android.intent.action.BUNDLING_POLICY_UPDATED"

    invoke-virtual {v1, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2299
    iget-object v6, p0, mBundlingPolicyReceiver:Landroid/content/BroadcastReceiver;

    const-string v7, "android.permission.DEVICE_POWER"

    invoke-virtual {p2, v6, v1, v7, v8}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 2301
    new-instance v5, Landroid/content/IntentFilter;

    invoke-direct {v5}, Landroid/content/IntentFilter;-><init>()V

    .line 2302
    .local v5, "screenFilter":Landroid/content/IntentFilter;
    const-string v6, "android.intent.action.SCREEN_ON"

    invoke-virtual {v5, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2303
    const-string v6, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v5, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2304
    iget-object v6, p0, mScreenReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p2, v6, v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 2305
    const-string v6, "AlarmManagerEXT"

    const-string v7, "[TA] created."

    invoke-static {v6, v7}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2306
    return-void

    .line 2285
    .end local v1    # "bundlingPolicyFilter":Landroid/content/IntentFilter;
    .end local v3    # "gmsBundlingFilter":Landroid/content/IntentFilter;
    .end local v4    # "intentFilter":Landroid/content/IntentFilter;
    .end local v5    # "screenFilter":Landroid/content/IntentFilter;
    :catch_b3
    move-exception v2

    .line 2286
    .local v2, "e":Landroid/os/RemoteException;
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_66
.end method

.method static synthetic access$1800(Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;)Ljava/lang/Object;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;

    .prologue
    .line 2255
    iget-object v0, p0, mSafeLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;)Ljava/util/ArrayList;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;

    .prologue
    .line 2255
    iget-object v0, p0, mWatchlist:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;)Ljava/util/ArrayList;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;

    .prologue
    .line 2255
    iget-object v0, p0, mWHITElist:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;)Ljava/util/ArrayList;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;

    .prologue
    .line 2255
    iget-object v0, p0, mIgnorelist:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;)Landroid/net/ConnectivityManager;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;

    .prologue
    .line 2255
    invoke-direct {p0}, getConnectivityManager()Landroid/net/ConnectivityManager;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2600(Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;)Landroid/util/SparseBooleanArray;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;

    .prologue
    .line 2255
    iget-object v0, p0, mFgActivities:Landroid/util/SparseBooleanArray;

    return-object v0
.end method

.method private getConnectivityManager()Landroid/net/ConnectivityManager;
    .registers 3

    .prologue
    .line 3362
    monitor-enter p0

    .line 3363
    :try_start_1
    iget-object v0, p0, mConnManagerDoNotUseDirectly:Landroid/net/ConnectivityManager;

    if-nez v0, :cond_15

    .line 3364
    iget-object v0, p0, this$1:Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;

    # getter for: Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->access$2400(Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, mConnManagerDoNotUseDirectly:Landroid/net/ConnectivityManager;

    .line 3367
    :cond_15
    iget-object v0, p0, mConnManagerDoNotUseDirectly:Landroid/net/ConnectivityManager;

    monitor-exit p0

    return-object v0

    .line 3368
    :catchall_19
    move-exception v0

    monitor-exit p0
    :try_end_1b
    .catchall {:try_start_1 .. :try_end_1b} :catchall_19

    throw v0
.end method


# virtual methods
.method public ForegroundAppsCheckLocked(IJ)V
    .registers 10
    .param p1, "uid"    # I
    .param p2, "nowT"    # J

    .prologue
    .line 3377
    iget-object v2, p0, mWatchlist:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 3380
    .local v1, "itWatch":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;>;"
    :cond_6
    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_34

    .line 3382
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;

    .line 3383
    .local v0, "ar":Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;
    iget v2, v0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;->uid:I

    if-ne p1, v2, :cond_6

    iget-wide v2, v0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;->lastTriggerTime:J

    sub-long v2, p2, v2

    const-wide/16 v4, 0x2710

    cmp-long v2, v2, v4

    if-gez v2, :cond_6

    .line 3385
    iget v2, v0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;->UMCount:I

    iget v3, v0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;->NfgCount:I

    sub-int/2addr v2, v3

    iget v3, v0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;->fgCount:I

    if-ne v2, v3, :cond_6

    iget-boolean v2, v0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;->isRunPass:Z

    if-nez v2, :cond_6

    iget v2, v0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;->fgCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;->fgCount:I

    goto :goto_6

    .line 3389
    .end local v0    # "ar":Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;
    :cond_34
    return-void
.end method

.method public determineListTypeLocked(Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;)Z
    .registers 16
    .param p1, "record"    # Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;

    .prologue
    .line 2569
    const/4 v9, 0x0

    .line 2570
    .local v9, "typeChanged":Z
    # getter for: Lcom/android/server/AlarmManagerServiceExt;->APP_SYNC_LOG:Z
    invoke-static {}, Lcom/android/server/AlarmManagerServiceExt;->access$100()Z

    move-result v10

    if-eqz v10, :cond_1f

    const-string v10, "AlarmManagerEXT"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "[TA] "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2575
    :cond_1f
    iget v10, p1, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;->missCount:I

    const/4 v11, 0x3

    if-lt v10, v11, :cond_be

    iget-boolean v10, p1, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;->missCountEvenlyDistributed:Z

    if-nez v10, :cond_be

    iget v10, p1, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;->missCountAfterHit:I

    if-eqz v10, :cond_31

    iget v10, p1, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;->missCountAfterHit:I

    const/4 v11, 0x3

    if-lt v10, v11, :cond_be

    :cond_31
    iget-boolean v10, p1, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;->isWhite:Z

    if-nez v10, :cond_be

    .line 2577
    new-instance v5, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;

    invoke-direct {v5, p0, p1}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;-><init>(Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;)V

    .line 2579
    .local v5, "newRecord":Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;
    iget-object v10, p0, this$1:Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;

    # getter for: Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mPermanentWhitelistPackages:Ljava/util/ArrayList;
    invoke-static {v10}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->access$1100(Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;)Ljava/util/ArrayList;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 2580
    .local v4, "itP":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_44
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_60

    .line 2581
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 2582
    .local v6, "pStr":Ljava/lang/String;
    iget-object v8, p1, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;->pkgName:Ljava/lang/String;

    .line 2583
    .local v8, "recordPkg":Ljava/lang/String;
    if-eqz v8, :cond_44

    invoke-virtual {v8}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_44

    .line 2584
    const/4 v10, 0x0

    .line 2680
    .end local v4    # "itP":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v5    # "newRecord":Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;
    .end local v6    # "pStr":Ljava/lang/String;
    .end local v8    # "recordPkg":Ljava/lang/String;
    :goto_5f
    return v10

    .line 2587
    .restart local v4    # "itP":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .restart local v5    # "newRecord":Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;
    :cond_60
    iget-object v10, p0, mIgnorelist:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    int-to-long v10, v10

    const-wide/16 v12, 0x1388

    cmp-long v10, v10, v12

    if-gez v10, :cond_72

    iget-object v10, p0, mIgnorelist:Ljava/util/ArrayList;

    invoke-virtual {v10, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2588
    :cond_72
    iget-object v10, p0, this$1:Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;

    # getter for: Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mAdjustableRepeatingAlarms:Ljava/util/ArrayList;
    invoke-static {v10}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->access$1200(Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;)Ljava/util/ArrayList;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 2589
    .local v3, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/AlarmManagerServiceExt$AlarmExt;>;"
    :cond_7c
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_9d

    .line 2590
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;

    .line 2591
    .local v0, "aExt":Lcom/android/server/AlarmManagerServiceExt$AlarmExt;
    iget-object v10, v0, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->operation:Landroid/app/PendingIntent;

    invoke-virtual {v10}, Landroid/app/PendingIntent;->hashCode()I

    move-result v10

    iget v11, p1, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;->piHashCode:I

    if-ne v10, v11, :cond_7c

    .line 2593
    const/4 v10, 0x0

    iput-boolean v10, v0, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->isWhitelist:Z

    .line 2594
    const-wide/16 v10, 0x0

    iput-wide v10, v0, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->repeatIntervalWindow:J

    .line 2595
    const-wide/16 v10, 0x0

    iput-wide v10, v0, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->repeatInterval:J

    .line 2599
    .end local v0    # "aExt":Lcom/android/server/AlarmManagerServiceExt$AlarmExt;
    :cond_9d
    const/4 v9, 0x1

    .line 2600
    # getter for: Lcom/android/server/AlarmManagerServiceExt;->APP_SYNC_LOG:Z
    invoke-static {}, Lcom/android/server/AlarmManagerServiceExt;->access$100()Z

    move-result v10

    if-eqz v10, :cond_bc

    const-string v10, "AlarmManagerEXT"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "[AppSync] moved to Ignore list: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .end local v3    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/AlarmManagerServiceExt$AlarmExt;>;"
    .end local v4    # "itP":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v5    # "newRecord":Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;
    :cond_bc
    :goto_bc
    move v10, v9

    .line 2680
    goto :goto_5f

    .line 2605
    :cond_be
    iget v10, p1, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;->hitCount:I

    const/4 v11, 0x2

    if-lt v10, v11, :cond_bc

    iget-boolean v10, p1, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;->isWhite:Z

    if-nez v10, :cond_bc

    .line 2611
    iget-boolean v10, p1, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;->missCountEvenlyDistributed:Z

    if-eqz v10, :cond_131

    iget-boolean v10, p1, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;->isUIalarm:Z

    if-nez v10, :cond_131

    .line 2612
    new-instance v5, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;

    invoke-direct {v5, p0, p1}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;-><init>(Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;)V

    .line 2613
    .restart local v5    # "newRecord":Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;
    const/4 v1, 0x0

    .line 2614
    .local v1, "found":Z
    iget-object v10, p0, mWHITElist:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_db
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_ee

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;

    .line 2616
    .local v7, "r":Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;
    iget v10, v7, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;->alarmHashCode:I

    iget v11, v5, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;->alarmHashCode:I

    if-ne v10, v11, :cond_db

    .line 2617
    const/4 v1, 0x1

    .line 2624
    .end local v7    # "r":Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;
    :cond_ee
    if-nez v1, :cond_126

    .line 2626
    const/4 v10, 0x1

    iput-boolean v10, v5, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;->isWhite:Z

    .line 2627
    const/4 v10, 0x0

    iput v10, v5, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;->missCountAfterHit:I

    .line 2628
    iget-object v10, p0, mWHITElist:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    int-to-long v10, v10

    const-wide/16 v12, 0x1388

    cmp-long v10, v10, v12

    if-gez v10, :cond_108

    iget-object v10, p0, mWHITElist:Ljava/util/ArrayList;

    invoke-virtual {v10, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2629
    :cond_108
    # getter for: Lcom/android/server/AlarmManagerServiceExt;->APP_SYNC_LOG:Z
    invoke-static {}, Lcom/android/server/AlarmManagerServiceExt;->access$100()Z

    move-result v10

    if-eqz v10, :cond_126

    const-string v10, "AlarmManagerEXT"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "[AppSync] moved to Whitelist: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2634
    :cond_126
    iget-object v10, p0, this$1:Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;

    iget v11, v5, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;->alarmHashCode:I

    iget-wide v12, v5, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;->intervalCalculated:J

    # invokes: Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->updateRepeatingAlarmLocked(IJ)V
    invoke-static {v10, v11, v12, v13}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->access$1400(Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;IJ)V

    .line 2678
    :cond_12f
    :goto_12f
    const/4 v9, 0x1

    goto :goto_bc

    .line 2640
    .end local v1    # "found":Z
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v5    # "newRecord":Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;
    :cond_131
    new-instance v5, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;

    invoke-direct {v5, p0, p1}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;-><init>(Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;)V

    .line 2641
    .restart local v5    # "newRecord":Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;
    const/4 v1, 0x0

    .line 2642
    .restart local v1    # "found":Z
    iget-object v10, p0, mIgnorelist:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .restart local v2    # "i$":Ljava/util/Iterator;
    :cond_13d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_150

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;

    .line 2644
    .restart local v7    # "r":Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;
    iget v10, v7, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;->alarmHashCode:I

    iget v11, v5, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;->alarmHashCode:I

    if-ne v10, v11, :cond_13d

    .line 2645
    const/4 v1, 0x1

    .line 2652
    .end local v7    # "r":Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;
    :cond_150
    if-nez v1, :cond_12f

    .line 2654
    iget-object v10, p0, this$1:Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;

    # getter for: Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mPermanentWhitelistPackages:Ljava/util/ArrayList;
    invoke-static {v10}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->access$1100(Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;)Ljava/util/ArrayList;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 2655
    .restart local v4    # "itP":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_15c
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_179

    .line 2656
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 2657
    .restart local v6    # "pStr":Ljava/lang/String;
    iget-object v8, p1, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;->pkgName:Ljava/lang/String;

    .line 2658
    .restart local v8    # "recordPkg":Ljava/lang/String;
    if-eqz v8, :cond_15c

    invoke-virtual {v8}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_15c

    .line 2659
    const/4 v10, 0x0

    goto/16 :goto_5f

    .line 2662
    .end local v6    # "pStr":Ljava/lang/String;
    .end local v8    # "recordPkg":Ljava/lang/String;
    :cond_179
    const/4 v10, 0x0

    iput-boolean v10, v5, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;->isWhite:Z

    .line 2663
    iget-object v10, p0, mIgnorelist:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    int-to-long v10, v10

    const-wide/16 v12, 0x1388

    cmp-long v10, v10, v12

    if-gez v10, :cond_18e

    iget-object v10, p0, mIgnorelist:Ljava/util/ArrayList;

    invoke-virtual {v10, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2664
    :cond_18e
    iget-object v10, p0, this$1:Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;

    # getter for: Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mAdjustableRepeatingAlarms:Ljava/util/ArrayList;
    invoke-static {v10}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->access$1200(Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;)Ljava/util/ArrayList;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 2665
    .restart local v3    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/AlarmManagerServiceExt$AlarmExt;>;"
    :cond_198
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_1b9

    .line 2666
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;

    .line 2667
    .restart local v0    # "aExt":Lcom/android/server/AlarmManagerServiceExt$AlarmExt;
    iget-object v10, v0, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->operation:Landroid/app/PendingIntent;

    invoke-virtual {v10}, Landroid/app/PendingIntent;->hashCode()I

    move-result v10

    iget v11, p1, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;->piHashCode:I

    if-ne v10, v11, :cond_198

    .line 2669
    const/4 v10, 0x0

    iput-boolean v10, v0, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->isWhitelist:Z

    .line 2670
    const-wide/16 v10, 0x0

    iput-wide v10, v0, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->repeatIntervalWindow:J

    .line 2671
    const-wide/16 v10, 0x0

    iput-wide v10, v0, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->repeatInterval:J

    .line 2675
    .end local v0    # "aExt":Lcom/android/server/AlarmManagerServiceExt$AlarmExt;
    :cond_1b9
    # getter for: Lcom/android/server/AlarmManagerServiceExt;->APP_SYNC_LOG:Z
    invoke-static {}, Lcom/android/server/AlarmManagerServiceExt;->access$100()Z

    move-result v10

    if-eqz v10, :cond_12f

    const-string v10, "AlarmManagerEXT"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "[AppSync] moved to Ignore list: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_12f
.end method

.method public getWhitelistCount()I
    .registers 4

    .prologue
    .line 3335
    const/4 v0, 0x0

    .line 3336
    .local v0, "c":I
    iget-object v2, p0, mSafeLock:Ljava/lang/Object;

    monitor-enter v2

    .line 3337
    :try_start_4
    iget v0, p0, whitelistCount:I

    .line 3338
    monitor-exit v2

    .line 3339
    return v0

    .line 3338
    :catchall_8
    move-exception v1

    monitor-exit v2
    :try_end_a
    .catchall {:try_start_4 .. :try_end_a} :catchall_8

    throw v1
.end method

.method public lookForObjectInListLocked(Ljava/util/ArrayList;IIIJ)I
    .registers 16
    .param p2, "alarmUid"    # I
    .param p3, "alarmPid"    # I
    .param p4, "alarmHashCode"    # I
    .param p5, "repeatInterval"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;",
            ">;IIIJ)I"
        }
    .end annotation

    .prologue
    .line 2753
    .local p1, "targetList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;>;"
    const/4 v1, 0x0

    .line 2754
    .local v1, "index":I
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 2755
    .local v2, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;>;"
    :goto_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3a

    .line 2756
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;

    .line 2757
    .local v3, "r":Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;
    iget v4, v3, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;->alarmHashCode:I

    if-ne v4, p4, :cond_37

    .line 2762
    const-wide/16 v4, 0x0

    cmp-long v4, p5, v4

    if-lez v4, :cond_35

    iget-wide v4, v3, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;->intervalCalculated:J

    cmp-long v4, p5, v4

    if-eqz v4, :cond_35

    iget-object v4, p0, mWatchlist:Ljava/util/ArrayList;

    if-eq p1, v4, :cond_30

    const-wide/32 v4, 0x186a0

    rem-long v4, p5, v4

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-nez v4, :cond_35

    .line 2767
    :cond_30
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    .line 2768
    const/4 v4, -0x1

    .line 2810
    .end local v3    # "r":Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;
    :goto_34
    return v4

    .restart local v3    # "r":Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;
    :cond_35
    move v4, v1

    .line 2770
    goto :goto_34

    .line 2772
    :cond_37
    add-int/lit8 v1, v1, 0x1

    .line 2773
    goto :goto_5

    .line 2777
    .end local v3    # "r":Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;
    :cond_3a
    const-wide/16 v4, 0x0

    cmp-long v4, p5, v4

    if-lez v4, :cond_71

    .line 2778
    const/4 v1, 0x0

    .line 2779
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_45
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_71

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;

    .line 2783
    .restart local v3    # "r":Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;
    iget v4, v3, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;->uid:I

    if-ne v4, p2, :cond_6e

    iget-wide v4, v3, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;->intervalCalculated:J

    cmp-long v4, v4, p5

    if-nez v4, :cond_6e

    .line 2787
    iget v4, v3, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;->alarmHashCode:I

    if-nez v4, :cond_61

    move v4, v1

    .line 2788
    goto :goto_34

    .line 2796
    :cond_61
    iget v4, v3, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;->hitCount:I

    const/4 v5, 0x1

    if-lt v4, v5, :cond_6e

    iget v4, v3, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;->missCount:I

    if-nez v4, :cond_6e

    .line 2800
    iput p4, v3, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;->alarmHashCode:I

    move v4, v1

    .line 2801
    goto :goto_34

    .line 2804
    :cond_6e
    add-int/lit8 v1, v1, 0x1

    .line 2805
    goto :goto_45

    .line 2810
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v3    # "r":Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;
    :cond_71
    const/4 v4, -0x1

    goto :goto_34
.end method

.method public printWhitelist(ZLjava/io/PrintWriter;)V
    .registers 13
    .param p1, "bDump"    # Z
    .param p2, "pw"    # Ljava/io/PrintWriter;

    .prologue
    .line 3343
    iget-object v3, p0, mSafeLock:Ljava/lang/Object;

    monitor-enter v3

    .line 3344
    const/4 v2, 0x0

    :try_start_4
    iput v2, p0, whitelistCount:I

    .line 3345
    iget-object v2, p0, mWHITElist:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_c
    :goto_c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_a8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;

    .line 3346
    .local v1, "r":Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;
    iget-wide v4, v1, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;->intervalTraffic:J

    const-wide/16 v6, 0x0

    cmp-long v2, v4, v6

    if-eqz v2, :cond_c

    .line 3347
    iget v2, p0, whitelistCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, whitelistCount:I

    .line 3348
    if-eqz p1, :cond_68

    .line 3349
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  (AppSync) "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, v1, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;->pkgName:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v4, v1, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;->intervalCalculated:J

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "("

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v4, v1, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;->intervalTraffic:J

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ")"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_c

    .line 3358
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "r":Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;
    :catchall_65
    move-exception v2

    monitor-exit v3
    :try_end_67
    .catchall {:try_start_4 .. :try_end_67} :catchall_65

    throw v2

    .line 3353
    .restart local v0    # "i$":Ljava/util/Iterator;
    .restart local v1    # "r":Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;
    :cond_68
    :try_start_68
    const-string v2, "AlarmManagerEXT"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "(AppSync) "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v1, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;->pkgName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v6, v1, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;->intervalCalculated:J

    const-wide/16 v8, 0x3e8

    div-long/2addr v6, v8

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v6, v1, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;->intervalTraffic:J

    const-wide/16 v8, 0x3e8

    div-long/2addr v6, v8

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_c

    .line 3358
    .end local v1    # "r":Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;
    :cond_a8
    monitor-exit v3
    :try_end_a9
    .catchall {:try_start_68 .. :try_end_a9} :catchall_65

    .line 3359
    return-void
.end method

.method public queryTrafficPeriodicity(Lcom/android/server/AlarmManagerServiceExt$AlarmExt;J)J
    .registers 34
    .param p1, "aExt"    # Lcom/android/server/AlarmManagerServiceExt$AlarmExt;
    .param p2, "distRounded"    # J

    .prologue
    .line 2309
    const/16 v19, 0x1

    .line 2310
    .local v19, "isValidInterval":Z
    move-object/from16 v0, p1

    iget v9, v0, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->keyId:I

    .line 2311
    .local v9, "alarmHash":I
    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->operation:Landroid/app/PendingIntent;

    invoke-virtual {v5}, Landroid/app/PendingIntent;->getCreatorUid()I

    move-result v7

    .line 2312
    .local v7, "alarmUid":I
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v8

    .line 2313
    .local v8, "alarmPid":I
    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->operation:Landroid/app/PendingIntent;

    invoke-virtual {v5}, Landroid/app/PendingIntent;->getCreatorPackage()Ljava/lang/String;

    move-result-object v24

    .line 2314
    .local v24, "pkgName":Ljava/lang/String;
    # getter for: Lcom/android/server/AlarmManagerServiceExt;->APP_SYNC_LOG:Z
    invoke-static {}, Lcom/android/server/AlarmManagerServiceExt;->access$100()Z

    move-result v5

    if-eqz v5, :cond_50

    const-string v5, "AlarmManagerEXT"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[TA] querying "

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v9}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v10, " for "

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v10, ":"

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2321
    :cond_50
    const/16 v17, -0x1

    .line 2322
    .local v17, "foundIdx":I
    move-object/from16 v0, p0

    iget-object v0, v0, mSafeLock:Ljava/lang/Object;

    move-object/from16 v26, v0

    monitor-enter v26

    .line 2326
    :try_start_59
    move-object/from16 v0, p0

    iget-object v6, v0, mIgnorelist:Ljava/util/ArrayList;

    move-object/from16 v5, p0

    move-wide/from16 v10, p2

    invoke-virtual/range {v5 .. v11}, lookForObjectInListLocked(Ljava/util/ArrayList;IIIJ)I

    move-result v5

    const/4 v6, -0x1

    if-le v5, v6, :cond_6c

    const-wide/16 p2, -0x1

    monitor-exit v26

    .line 2418
    .end local p2    # "distRounded":J
    :goto_6b
    return-wide p2

    .line 2331
    .restart local p2    # "distRounded":J
    :cond_6c
    move-object/from16 v0, p0

    iget-object v6, v0, mWHITElist:Ljava/util/ArrayList;

    move-object/from16 v5, p0

    move-wide/from16 v10, p2

    invoke-virtual/range {v5 .. v11}, lookForObjectInListLocked(Ljava/util/ArrayList;IIIJ)I

    move-result v17

    .line 2332
    const/4 v5, -0x1

    move/from16 v0, v17

    if-le v0, v5, :cond_88

    .line 2334
    move-wide/from16 v0, p2

    move-object/from16 v2, p1

    iput-wide v0, v2, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->repeatInterval:J

    monitor-exit v26

    goto :goto_6b

    .line 2413
    .end local p2    # "distRounded":J
    :catchall_85
    move-exception v5

    monitor-exit v26
    :try_end_87
    .catchall {:try_start_59 .. :try_end_87} :catchall_85

    throw v5

    .line 2337
    .restart local p2    # "distRounded":J
    :cond_88
    const/16 v22, 0x0

    .line 2342
    .local v22, "makeNew":Z
    :try_start_8a
    move-object/from16 v0, p0

    iget-object v6, v0, mWatchlist:Ljava/util/ArrayList;

    move-object/from16 v5, p0

    move-wide/from16 v10, p2

    invoke-virtual/range {v5 .. v11}, lookForObjectInListLocked(Ljava/util/ArrayList;IIIJ)I

    move-result v17

    .line 2343
    const/4 v5, -0x1

    move/from16 v0, v17

    if-le v0, v5, :cond_18c

    .line 2344
    move-object/from16 v0, p0

    iget-object v5, v0, mWatchlist:Ljava/util/ArrayList;

    move/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;

    .line 2348
    .local v14, "almRec":Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    iget-wide v0, v14, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;->targetWhen:J

    move-wide/from16 v28, v0

    cmp-long v5, v10, v28

    if-gez v5, :cond_18c

    .line 2349
    iget v5, v14, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;->resetCount:I

    add-int/lit8 v5, v5, 0x1

    iput v5, v14, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;->resetCount:I

    .line 2353
    iget v5, v14, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;->resetCount:I

    const/16 v6, 0xa

    if-le v5, v6, :cond_18c

    .line 2354
    move-object/from16 v0, p0

    iget-object v5, v0, mWatchlist:Ljava/util/ArrayList;

    move/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 2355
    const/16 v16, 0x0

    .line 2356
    .local v16, "found":Z
    move-object/from16 v0, p0

    iget-object v5, v0, mIgnorelist:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v18

    .local v18, "i$":Ljava/util/Iterator;
    :cond_d2
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_e8

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;

    .line 2357
    .local v25, "r":Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;
    move-object/from16 v0, v25

    iget v5, v0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;->alarmHashCode:I

    iget v6, v14, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;->alarmHashCode:I

    if-ne v5, v6, :cond_d2

    .line 2358
    const/16 v16, 0x1

    .line 2362
    .end local v25    # "r":Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;
    :cond_e8
    if-nez v16, :cond_187

    .line 2364
    move-object/from16 v0, p0

    iget-object v5, v0, this$1:Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;

    # getter for: Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mPermanentWhitelistPackages:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->access$1100(Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v21

    .line 2365
    .local v21, "itP":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_f6
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_11d

    .line 2366
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/lang/String;

    .line 2367
    .local v23, "pStr":Ljava/lang/String;
    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->operation:Landroid/app/PendingIntent;

    invoke-virtual {v5}, Landroid/app/PendingIntent;->getCreatorPackage()Ljava/lang/String;

    move-result-object v15

    .line 2368
    .local v15, "createPkg":Ljava/lang/String;
    if-eqz v15, :cond_f6

    invoke-virtual {v15}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v23

    invoke-virtual {v5, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_f6

    .line 2369
    const-wide/16 p2, 0x0

    monitor-exit v26

    goto/16 :goto_6b

    .line 2372
    .end local v15    # "createPkg":Ljava/lang/String;
    .end local v23    # "pStr":Ljava/lang/String;
    :cond_11d
    const/4 v5, 0x0

    iput-boolean v5, v14, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;->isWhite:Z

    .line 2373
    move-object/from16 v0, p0

    iget-object v5, v0, mIgnorelist:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    int-to-long v10, v5

    const-wide/16 v28, 0x1388

    cmp-long v5, v10, v28

    if-gez v5, :cond_136

    move-object/from16 v0, p0

    iget-object v5, v0, mIgnorelist:Ljava/util/ArrayList;

    invoke-virtual {v5, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2374
    :cond_136
    move-object/from16 v0, p0

    iget-object v5, v0, this$1:Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;

    # getter for: Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mAdjustableRepeatingAlarms:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->access$1200(Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v20

    .line 2375
    .local v20, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/AlarmManagerServiceExt$AlarmExt;>;"
    :cond_142
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_169

    .line 2376
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;

    .line 2377
    .local v4, "aaExt":Lcom/android/server/AlarmManagerServiceExt$AlarmExt;
    iget-object v5, v4, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->operation:Landroid/app/PendingIntent;

    invoke-virtual {v5}, Landroid/app/PendingIntent;->hashCode()I

    move-result v5

    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->operation:Landroid/app/PendingIntent;

    invoke-virtual {v6}, Landroid/app/PendingIntent;->hashCode()I

    move-result v6

    if-ne v5, v6, :cond_142

    .line 2379
    const/4 v5, 0x0

    iput-boolean v5, v4, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->isWhitelist:Z

    .line 2380
    const-wide/16 v10, 0x0

    iput-wide v10, v4, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->repeatIntervalWindow:J

    .line 2381
    const-wide/16 v10, 0x0

    iput-wide v10, v4, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->repeatInterval:J

    .line 2385
    .end local v4    # "aaExt":Lcom/android/server/AlarmManagerServiceExt$AlarmExt;
    :cond_169
    # getter for: Lcom/android/server/AlarmManagerServiceExt;->APP_SYNC_LOG:Z
    invoke-static {}, Lcom/android/server/AlarmManagerServiceExt;->access$100()Z

    move-result v5

    if-eqz v5, :cond_187

    const-string v5, "AlarmManagerEXT"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[AppSync][Periodicity] moved to Ignore list: "

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2387
    .end local v20    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/AlarmManagerServiceExt$AlarmExt;>;"
    .end local v21    # "itP":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_187
    const-wide/16 p2, -0x1

    monitor-exit v26

    goto/16 :goto_6b

    .line 2394
    .end local v14    # "almRec":Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;
    .end local v16    # "found":Z
    .end local v18    # "i$":Ljava/util/Iterator;
    :cond_18c
    const/4 v5, -0x1

    move/from16 v0, v17

    if-eq v0, v5, :cond_193

    if-eqz v22, :cond_20c

    .line 2395
    :cond_193
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v28

    sub-long v12, v10, v28

    .line 2400
    .local v12, "TIME_SKEW":J
    new-instance v14, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;-><init>(Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;)V

    .line 2401
    .restart local v14    # "almRec":Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;
    move-object/from16 v0, v24

    iput-object v0, v14, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;->pkgName:Ljava/lang/String;

    .line 2402
    iput v7, v14, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;->uid:I

    .line 2403
    iput v8, v14, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;->pid:I

    .line 2404
    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->operation:Landroid/app/PendingIntent;

    invoke-virtual {v5}, Landroid/app/PendingIntent;->hashCode()I

    move-result v5

    iput v5, v14, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;->piHashCode:I

    .line 2405
    iput v9, v14, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;->alarmHashCode:I

    .line 2406
    move-object/from16 v0, p1

    iget-boolean v5, v0, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->isExact:Z

    iput-boolean v5, v14, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;->isExact:Z

    .line 2407
    move-wide/from16 v0, p2

    iput-wide v0, v14, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;->intervalCalculated:J

    .line 2408
    move-object/from16 v0, p1

    iget-wide v10, v0, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->repeatIntervalOriginal:J

    iput-wide v10, v14, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;->intervalRequested:J

    .line 2409
    move-object/from16 v0, p1

    iget-wide v10, v0, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->when:J

    move-object/from16 v0, p1

    iget v5, v0, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->type:I

    const/4 v6, 0x1

    if-gt v5, v6, :cond_1d5

    const-wide/16 v12, 0x0

    .end local v12    # "TIME_SKEW":J
    :cond_1d5
    add-long/2addr v10, v12

    iput-wide v10, v14, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;->targetWhen:J

    .line 2410
    move-object/from16 v0, p0

    iget-object v5, v0, mWatchlist:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    int-to-long v10, v5

    const-wide/16 v28, 0x1388

    cmp-long v5, v10, v28

    if-gez v5, :cond_1ee

    move-object/from16 v0, p0

    iget-object v5, v0, mWatchlist:Ljava/util/ArrayList;

    invoke-virtual {v5, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2411
    :cond_1ee
    # getter for: Lcom/android/server/AlarmManagerServiceExt;->APP_SYNC_LOG:Z
    invoke-static {}, Lcom/android/server/AlarmManagerServiceExt;->access$100()Z

    move-result v5

    if-eqz v5, :cond_20c

    const-string v5, "AlarmManagerEXT"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[AppSync][Periodicity] added to Watchlist: "

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2413
    .end local v14    # "almRec":Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;
    :cond_20c
    monitor-exit v26
    :try_end_20d
    .catchall {:try_start_8a .. :try_end_20d} :catchall_85

    .line 2418
    const-wide/16 p2, 0x0

    goto/16 :goto_6b
.end method

.method public removeAlarmRecord(Ljava/lang/String;I)V
    .registers 10
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "userHandle"    # I

    .prologue
    const/4 v6, -0x1

    .line 2814
    iget-object v5, p0, mSafeLock:Ljava/lang/Object;

    monitor-enter v5

    .line 2815
    :try_start_4
    iget-object v4, p0, mWHITElist:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 2816
    .local v2, "itWhite":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;>;"
    :cond_a
    :goto_a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_31

    .line 2817
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;

    .line 2818
    .local v3, "r":Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;
    if-eqz p1, :cond_20

    iget-object v4, v3, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;->pkgName:Ljava/lang/String;

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2a

    :cond_20
    if-eq p2, v6, :cond_a

    iget v4, v3, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;->uid:I

    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    if-ne v4, p2, :cond_a

    .line 2824
    :cond_2a
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_a

    .line 2851
    .end local v2    # "itWhite":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;>;"
    .end local v3    # "r":Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;
    :catchall_2e
    move-exception v4

    monitor-exit v5
    :try_end_30
    .catchall {:try_start_4 .. :try_end_30} :catchall_2e

    throw v4

    .line 2827
    .restart local v2    # "itWhite":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;>;"
    :cond_31
    :try_start_31
    iget-object v4, p0, mWatchlist:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 2828
    .local v1, "itWatch":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;>;"
    :cond_37
    :goto_37
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5b

    .line 2829
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;

    .line 2830
    .restart local v3    # "r":Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;
    if-eqz p1, :cond_4d

    iget-object v4, v3, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;->pkgName:Ljava/lang/String;

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_57

    :cond_4d
    if-eq p2, v6, :cond_37

    iget v4, v3, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;->uid:I

    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    if-ne v4, p2, :cond_37

    .line 2836
    :cond_57
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_37

    .line 2839
    .end local v3    # "r":Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;
    :cond_5b
    iget-object v4, p0, mIgnorelist:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 2840
    .local v0, "itIgnore":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;>;"
    :cond_61
    :goto_61
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_85

    .line 2841
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;

    .line 2842
    .restart local v3    # "r":Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;
    if-eqz p1, :cond_77

    iget-object v4, v3, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;->pkgName:Ljava/lang/String;

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_81

    :cond_77
    if-eq p2, v6, :cond_61

    iget v4, v3, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;->uid:I

    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    if-ne v4, p2, :cond_61

    .line 2848
    :cond_81
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_61

    .line 2851
    .end local v3    # "r":Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;
    :cond_85
    monitor-exit v5
    :try_end_86
    .catchall {:try_start_31 .. :try_end_86} :catchall_2e

    .line 2852
    return-void
.end method

.method public removeUnusedAlarmRecord(JZLjava/io/PrintWriter;)V
    .registers 22
    .param p1, "curTimeRtc"    # J
    .param p3, "bDump"    # Z
    .param p4, "pw"    # Ljava/io/PrintWriter;

    .prologue
    .line 2855
    move-object/from16 v0, p0

    iget-object v10, v0, mSafeLock:Ljava/lang/Object;

    monitor-enter v10

    .line 2856
    :try_start_5
    # getter for: Lcom/android/server/AlarmManagerServiceExt;->APP_SYNC_LOG:Z
    invoke-static {}, Lcom/android/server/AlarmManagerServiceExt;->access$100()Z

    move-result v7

    if-nez v7, :cond_d

    if-eqz p3, :cond_e8

    .line 2857
    :cond_d
    move-object/from16 v0, p0

    iget-object v7, v0, mWHITElist:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_15
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_58

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;

    .line 2858
    .local v6, "r":Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;
    if-eqz p3, :cond_3f

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "[AppSync] WHITE: "

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p4

    invoke-virtual {v0, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_15

    .line 2902
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v6    # "r":Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;
    :catchall_3c
    move-exception v7

    monitor-exit v10
    :try_end_3e
    .catchall {:try_start_5 .. :try_end_3e} :catchall_3c

    throw v7

    .line 2859
    .restart local v3    # "i$":Ljava/util/Iterator;
    .restart local v6    # "r":Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;
    :cond_3f
    :try_start_3f
    const-string v7, "AlarmManagerEXT"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "[AppSync] WHITE: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v7, v11}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_15

    .line 2861
    .end local v6    # "r":Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;
    :cond_58
    move-object/from16 v0, p0

    iget-object v7, v0, mIgnorelist:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_60
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_a0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;

    .line 2862
    .restart local v6    # "r":Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;
    if-eqz p3, :cond_87

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "[AppSync] ignore: "

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p4

    invoke-virtual {v0, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_60

    .line 2863
    :cond_87
    const-string v7, "AlarmManagerEXT"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "[AppSync] ignore: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v7, v11}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_60

    .line 2865
    .end local v6    # "r":Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;
    :cond_a0
    move-object/from16 v0, p0

    iget-object v7, v0, mWatchlist:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_a8
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_e8

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;

    .line 2866
    .restart local v6    # "r":Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;
    if-eqz p3, :cond_cf

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "[AppSync] watch: "

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p4

    invoke-virtual {v0, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_a8

    .line 2867
    :cond_cf
    const-string v7, "AlarmManagerEXT"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "[AppSync] watch: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v7, v11}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a8

    .line 2871
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v6    # "r":Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;
    :cond_e8
    move-object/from16 v0, p0

    iget-object v7, v0, mWatchlist:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 2872
    .local v5, "itWatch":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;>;"
    :cond_f0
    :goto_f0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_135

    .line 2873
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;

    .line 2874
    .restart local v6    # "r":Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;
    iget-wide v12, v6, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;->lastTriggerTime:J

    iget-wide v14, v6, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;->targetWhen:J

    cmp-long v7, v12, v14

    if-gez v7, :cond_132

    iget-wide v8, v6, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;->targetWhen:J

    .line 2875
    .local v8, "testTime":J
    :goto_106
    iget-wide v12, v6, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;->intervalCalculated:J

    const-wide/16 v14, 0x3

    mul-long/2addr v12, v14

    add-long/2addr v12, v8

    cmp-long v7, v12, p1

    if-gez v7, :cond_f0

    .line 2879
    # getter for: Lcom/android/server/AlarmManagerServiceExt;->APP_SYNC_LOG:Z
    invoke-static {}, Lcom/android/server/AlarmManagerServiceExt;->access$100()Z

    move-result v7

    if-eqz v7, :cond_12e

    const-string v7, "AlarmManagerEXT"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "[AppSync] removeW: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v7, v11}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2880
    :cond_12e
    invoke-interface {v5}, Ljava/util/Iterator;->remove()V

    goto :goto_f0

    .line 2874
    .end local v8    # "testTime":J
    :cond_132
    iget-wide v8, v6, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;->lastTriggerTime:J

    goto :goto_106

    .line 2883
    .end local v6    # "r":Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;
    :cond_135
    move-object/from16 v0, p0

    iget-object v7, v0, mIgnorelist:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 2884
    .local v4, "itIgnore":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;>;"
    :cond_13d
    :goto_13d
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1b8

    .line 2885
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;

    .line 2887
    .restart local v6    # "r":Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;
    iget v7, v6, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;->triggerCount:I

    iget v11, v6, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;->hitCount:I

    sub-int/2addr v7, v11

    iget v11, v6, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;->missCount:I

    sub-int v2, v7, v11

    .line 2888
    .local v2, "IgnoreCount":I
    int-to-long v12, v2

    iget-wide v14, v6, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;->intervalTrigger:J

    mul-long/2addr v12, v14

    const-wide/32 v14, 0x2932e00

    cmp-long v7, v12, v14

    if-ltz v7, :cond_17f

    .line 2889
    invoke-interface {v4}, Ljava/util/Iterator;->remove()V

    .line 2890
    # getter for: Lcom/android/server/AlarmManagerServiceExt;->APP_SYNC_LOG:Z
    invoke-static {}, Lcom/android/server/AlarmManagerServiceExt;->access$100()Z

    move-result v7

    if-eqz v7, :cond_13d

    const-string v7, "AlarmManagerEXT"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "[AppSync] removeI expiration: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v7, v11}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_13d

    .line 2893
    :cond_17f
    iget-wide v12, v6, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;->lastTriggerTime:J

    iget-wide v14, v6, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;->targetWhen:J

    cmp-long v7, v12, v14

    if-gez v7, :cond_1b5

    iget-wide v8, v6, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;->targetWhen:J

    .line 2894
    .restart local v8    # "testTime":J
    :goto_189
    iget-wide v12, v6, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;->intervalCalculated:J

    const-wide/16 v14, 0x3

    mul-long/2addr v12, v14

    add-long/2addr v12, v8

    cmp-long v7, v12, p1

    if-gez v7, :cond_13d

    .line 2898
    # getter for: Lcom/android/server/AlarmManagerServiceExt;->APP_SYNC_LOG:Z
    invoke-static {}, Lcom/android/server/AlarmManagerServiceExt;->access$100()Z

    move-result v7

    if-eqz v7, :cond_1b1

    const-string v7, "AlarmManagerEXT"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "[AppSync] removeI: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v7, v11}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2899
    :cond_1b1
    invoke-interface {v4}, Ljava/util/Iterator;->remove()V

    goto :goto_13d

    .line 2893
    .end local v8    # "testTime":J
    :cond_1b5
    iget-wide v8, v6, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;->lastTriggerTime:J

    goto :goto_189

    .line 2902
    .end local v2    # "IgnoreCount":I
    .end local v6    # "r":Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;
    :cond_1b8
    monitor-exit v10
    :try_end_1b9
    .catchall {:try_start_3f .. :try_end_1b9} :catchall_3c

    .line 2903
    return-void
.end method

.method public updateAlarmTriggerInfo(Landroid/app/PendingIntent;IJ)V
    .registers 28
    .param p1, "pi"    # Landroid/app/PendingIntent;
    .param p2, "count"    # I
    .param p3, "nowRtc"    # J

    .prologue
    .line 2425
    const/4 v9, -0x1

    .line 2426
    .local v9, "piHashCode":I
    const/4 v7, -0x1

    .line 2428
    .local v7, "trigUid":I
    :try_start_2
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v5

    invoke-virtual/range {p1 .. p1}, Landroid/app/PendingIntent;->getTarget()Landroid/content/IIntentSender;

    move-result-object v6

    invoke-interface {v5, v6}, Landroid/app/IActivityManager;->getKidForIntentSender(Landroid/content/IIntentSender;)I

    move-result v9

    .line 2429
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v5

    invoke-virtual/range {p1 .. p1}, Landroid/app/PendingIntent;->getTarget()Landroid/content/IIntentSender;

    move-result-object v6

    invoke-interface {v5, v6}, Landroid/app/IActivityManager;->getUidForIntentSender(Landroid/content/IIntentSender;)I
    :try_end_19
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_19} :catch_dd

    move-result v7

    .line 2433
    :goto_1a
    # getter for: Lcom/android/server/AlarmManagerServiceExt;->APP_SYNC_LOG:Z
    invoke-static {}, Lcom/android/server/AlarmManagerServiceExt;->access$100()Z

    move-result v5

    if-eqz v5, :cond_56

    const-string v5, "AlarmManagerEXT"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[TA][Trigger] "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual/range {p1 .. p1}, Landroid/app/PendingIntent;->getCreatorPackage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, ", code="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v9}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, " "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p1

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2436
    :cond_56
    move-object/from16 v0, p0

    iget-object v0, v0, mSafeLock:Ljava/lang/Object;

    move-object/from16 v17, v0

    monitor-enter v17

    .line 2437
    const/4 v13, -0x1

    .line 2441
    .local v13, "foundIdx":I
    :try_start_5e
    move-object/from16 v0, p0

    iget-object v6, v0, mWHITElist:Ljava/util/ArrayList;

    const/4 v8, 0x0

    const-wide/16 v10, 0x0

    move-object/from16 v5, p0

    invoke-virtual/range {v5 .. v11}, lookForObjectInListLocked(Ljava/util/ArrayList;IIIJ)I

    move-result v13

    .line 2442
    const/4 v5, -0x1

    if-eq v13, v5, :cond_128

    .line 2443
    move-object/from16 v0, p0

    iget-object v5, v0, mWHITElist:Ljava/util/ArrayList;

    invoke-virtual {v5, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;

    .line 2445
    .local v4, "almRec":Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;
    iget v5, v4, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;->triggerCount:I

    add-int/lit8 v5, v5, 0x1

    iput v5, v4, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;->triggerCount:I

    .line 2446
    move/from16 v0, p2

    move-wide/from16 v1, p3

    invoke-virtual {v4, v0, v1, v2}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;->updateTriggerTimeLocked(IJ)V

    .line 2451
    const/16 v16, 0x1

    .line 2452
    .local v16, "tmRun":Z
    move-object/from16 v0, p0

    iget-boolean v5, v0, mIsScreenOn:Z

    if-eqz v5, :cond_a8

    .line 2453
    move-object/from16 v0, p0

    iget-object v5, v0, this$1:Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;

    # getter for: Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mLockFgAct:Ljava/lang/Object;
    invoke-static {v5}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->access$1300(Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;)Ljava/lang/Object;

    move-result-object v6

    monitor-enter v6
    :try_end_96
    .catchall {:try_start_5e .. :try_end_96} :catchall_e6

    .line 2454
    :try_start_96
    move-object/from16 v0, p0

    iget-object v5, v0, mFgActivities:Landroid/util/SparseBooleanArray;

    iget v8, v4, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;->uid:I

    invoke-virtual {v5, v8}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v5

    if-eqz v5, :cond_a7

    .line 2456
    const/16 v16, 0x0

    .line 2457
    const/4 v5, 0x1

    iput-boolean v5, v4, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;->isRunPass:Z

    .line 2459
    :cond_a7
    monitor-exit v6
    :try_end_a8
    .catchall {:try_start_96 .. :try_end_a8} :catchall_e3

    .line 2464
    :cond_a8
    :try_start_a8
    iget-wide v10, v4, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;->intervalTrigger:J

    const-wide/16 v18, 0x0

    cmp-long v5, v10, v18

    if-lez v5, :cond_c0

    iget-wide v10, v4, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;->intervalTrigger:J

    iget-wide v0, v4, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;->intervalCalculated:J

    move-wide/from16 v18, v0

    const-wide/16 v20, 0x5

    div-long v18, v18, v20

    cmp-long v5, v10, v18

    if-gez v5, :cond_c0

    .line 2466
    const/16 v16, 0x0

    .line 2469
    :cond_c0
    if-eqz v16, :cond_11d

    .line 2470
    invoke-static {v7}, Landroid/net/TrafficStats;->getUidTxBytes(I)J

    move-result-wide v10

    iput-wide v10, v4, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;->txbytes0time:J

    .line 2471
    const/4 v5, 0x1

    iput-boolean v5, v4, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;->isMonitorON:Z
    :try_end_cb
    .catchall {:try_start_a8 .. :try_end_cb} :catchall_e6

    .line 2473
    :try_start_cb
    new-instance v15, Ljava/util/Timer;

    invoke-direct {v15}, Ljava/util/Timer;-><init>()V

    .line 2474
    .local v15, "timer":Ljava/util/Timer;
    new-instance v14, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$MonitorTask;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$MonitorTask;-><init>(Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;)V
    :try_end_d7
    .catch Ljava/lang/OutOfMemoryError; {:try_start_cb .. :try_end_d7} :catch_11f
    .catchall {:try_start_cb .. :try_end_d7} :catchall_e6

    .line 2475
    .local v14, "newtask":Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$MonitorTask;
    if-eqz v15, :cond_db

    if-nez v14, :cond_e9

    :cond_db
    :try_start_db
    monitor-exit v17
    :try_end_dc
    .catchall {:try_start_db .. :try_end_dc} :catchall_e6

    .line 2545
    .end local v4    # "almRec":Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;
    .end local v14    # "newtask":Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$MonitorTask;
    .end local v15    # "timer":Ljava/util/Timer;
    .end local v16    # "tmRun":Z
    :goto_dc
    return-void

    .line 2430
    .end local v13    # "foundIdx":I
    :catch_dd
    move-exception v12

    .line 2431
    .local v12, "e":Landroid/os/RemoteException;
    invoke-virtual {v12}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_1a

    .line 2459
    .end local v12    # "e":Landroid/os/RemoteException;
    .restart local v4    # "almRec":Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;
    .restart local v13    # "foundIdx":I
    .restart local v16    # "tmRun":Z
    :catchall_e3
    move-exception v5

    :try_start_e4
    monitor-exit v6
    :try_end_e5
    .catchall {:try_start_e4 .. :try_end_e5} :catchall_e3

    :try_start_e5
    throw v5

    .line 2544
    .end local v4    # "almRec":Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;
    .end local v16    # "tmRun":Z
    :catchall_e6
    move-exception v5

    monitor-exit v17
    :try_end_e8
    .catchall {:try_start_e5 .. :try_end_e8} :catchall_e6

    throw v5

    .line 2476
    .restart local v4    # "almRec":Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;
    .restart local v14    # "newtask":Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$MonitorTask;
    .restart local v15    # "timer":Ljava/util/Timer;
    .restart local v16    # "tmRun":Z
    :cond_e9
    :try_start_e9
    invoke-virtual {v14, v4}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$MonitorTask;->setAlarmInfo(Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;)V

    .line 2478
    const-wide/16 v10, 0x2710

    invoke-virtual {v15, v14, v10, v11}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 2479
    # getter for: Lcom/android/server/AlarmManagerServiceExt;->APP_SYNC_LOG:Z
    invoke-static {}, Lcom/android/server/AlarmManagerServiceExt;->access$100()Z

    move-result v5

    if-eqz v5, :cond_11d

    const-string v5, "AlarmManagerEXT"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[TA] isRunpass="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v8, v4, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;->isRunPass:Z

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, " : "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v8, v4, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;->pkgName:Ljava/lang/String;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_11d
    .catch Ljava/lang/OutOfMemoryError; {:try_start_e9 .. :try_end_11d} :catch_11f
    .catchall {:try_start_e9 .. :try_end_11d} :catchall_e6

    .line 2484
    .end local v14    # "newtask":Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$MonitorTask;
    .end local v15    # "timer":Ljava/util/Timer;
    :cond_11d
    :goto_11d
    :try_start_11d
    monitor-exit v17

    goto :goto_dc

    .line 2480
    :catch_11f
    move-exception v12

    .line 2481
    .local v12, "e":Ljava/lang/OutOfMemoryError;
    const-string v5, "AlarmManagerEXT"

    const-string v6, "OutOfMemory"

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_11d

    .line 2490
    .end local v4    # "almRec":Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;
    .end local v12    # "e":Ljava/lang/OutOfMemoryError;
    .end local v16    # "tmRun":Z
    :cond_128
    move-object/from16 v0, p0

    iget-object v6, v0, mIgnorelist:Ljava/util/ArrayList;

    const/4 v8, 0x0

    const-wide/16 v10, 0x0

    move-object/from16 v5, p0

    invoke-virtual/range {v5 .. v11}, lookForObjectInListLocked(Ljava/util/ArrayList;IIIJ)I

    move-result v13

    const/4 v5, -0x1

    if-le v13, v5, :cond_151

    .line 2491
    move-object/from16 v0, p0

    iget-object v5, v0, mIgnorelist:Ljava/util/ArrayList;

    invoke-virtual {v5, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;

    .line 2493
    .restart local v4    # "almRec":Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;
    iget v5, v4, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;->triggerCount:I

    add-int/lit8 v5, v5, 0x1

    iput v5, v4, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;->triggerCount:I

    .line 2494
    move/from16 v0, p2

    move-wide/from16 v1, p3

    invoke-virtual {v4, v0, v1, v2}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;->updateTriggerTimeLocked(IJ)V

    .line 2495
    monitor-exit v17

    goto :goto_dc

    .line 2500
    .end local v4    # "almRec":Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;
    :cond_151
    move-object/from16 v0, p0

    iget-object v6, v0, mWatchlist:Ljava/util/ArrayList;

    const/4 v8, 0x0

    const-wide/16 v10, 0x0

    move-object/from16 v5, p0

    invoke-virtual/range {v5 .. v11}, lookForObjectInListLocked(Ljava/util/ArrayList;IIIJ)I

    move-result v13

    .line 2501
    const/4 v5, -0x1

    if-eq v13, v5, :cond_208

    .line 2502
    move-object/from16 v0, p0

    iget-object v5, v0, mWatchlist:Ljava/util/ArrayList;

    invoke-virtual {v5, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;

    .line 2504
    .restart local v4    # "almRec":Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;
    iget v5, v4, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;->triggerCount:I

    add-int/lit8 v5, v5, 0x1

    iput v5, v4, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;->triggerCount:I

    .line 2505
    move/from16 v0, p2

    move-wide/from16 v1, p3

    invoke-virtual {v4, v0, v1, v2}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;->updateTriggerTimeLocked(IJ)V

    .line 2510
    const/16 v16, 0x1

    .line 2511
    .restart local v16    # "tmRun":Z
    move-object/from16 v0, p0

    iget-boolean v5, v0, mIsScreenOn:Z

    if-eqz v5, :cond_19b

    .line 2512
    move-object/from16 v0, p0

    iget-object v5, v0, this$1:Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;

    # getter for: Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mLockFgAct:Ljava/lang/Object;
    invoke-static {v5}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->access$1300(Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;)Ljava/lang/Object;

    move-result-object v6

    monitor-enter v6
    :try_end_189
    .catchall {:try_start_11d .. :try_end_189} :catchall_e6

    .line 2513
    :try_start_189
    move-object/from16 v0, p0

    iget-object v5, v0, mFgActivities:Landroid/util/SparseBooleanArray;

    iget v8, v4, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;->uid:I

    invoke-virtual {v5, v8}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v5

    if-eqz v5, :cond_19a

    .line 2515
    const/16 v16, 0x0

    .line 2516
    const/4 v5, 0x1

    iput-boolean v5, v4, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;->isRunPass:Z

    .line 2518
    :cond_19a
    monitor-exit v6
    :try_end_19b
    .catchall {:try_start_189 .. :try_end_19b} :catchall_1d1

    .line 2523
    :cond_19b
    :try_start_19b
    iget-wide v10, v4, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;->intervalTrigger:J

    const-wide/16 v18, 0x0

    cmp-long v5, v10, v18

    if-lez v5, :cond_1b3

    iget-wide v10, v4, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;->intervalTrigger:J

    iget-wide v0, v4, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;->intervalCalculated:J

    move-wide/from16 v18, v0

    const-wide/16 v20, 0x5

    div-long v18, v18, v20

    cmp-long v5, v10, v18

    if-gez v5, :cond_1b3

    .line 2525
    const/16 v16, 0x0

    .line 2528
    :cond_1b3
    if-eqz v16, :cond_208

    .line 2529
    invoke-static {v7}, Landroid/net/TrafficStats;->getUidTxBytes(I)J

    move-result-wide v10

    iput-wide v10, v4, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;->txbytes0time:J

    .line 2530
    const/4 v5, 0x1

    iput-boolean v5, v4, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;->isMonitorON:Z
    :try_end_1be
    .catchall {:try_start_19b .. :try_end_1be} :catchall_e6

    .line 2532
    :try_start_1be
    new-instance v15, Ljava/util/Timer;

    invoke-direct {v15}, Ljava/util/Timer;-><init>()V

    .line 2533
    .restart local v15    # "timer":Ljava/util/Timer;
    new-instance v14, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$MonitorTask;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$MonitorTask;-><init>(Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;)V
    :try_end_1ca
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1be .. :try_end_1ca} :catch_20b
    .catchall {:try_start_1be .. :try_end_1ca} :catchall_e6

    .line 2534
    .restart local v14    # "newtask":Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$MonitorTask;
    if-eqz v15, :cond_1ce

    if-nez v14, :cond_1d4

    :cond_1ce
    :try_start_1ce
    monitor-exit v17
    :try_end_1cf
    .catchall {:try_start_1ce .. :try_end_1cf} :catchall_e6

    goto/16 :goto_dc

    .line 2518
    .end local v14    # "newtask":Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$MonitorTask;
    .end local v15    # "timer":Ljava/util/Timer;
    :catchall_1d1
    move-exception v5

    :try_start_1d2
    monitor-exit v6
    :try_end_1d3
    .catchall {:try_start_1d2 .. :try_end_1d3} :catchall_1d1

    :try_start_1d3
    throw v5
    :try_end_1d4
    .catchall {:try_start_1d3 .. :try_end_1d4} :catchall_e6

    .line 2535
    .restart local v14    # "newtask":Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$MonitorTask;
    .restart local v15    # "timer":Ljava/util/Timer;
    :cond_1d4
    :try_start_1d4
    invoke-virtual {v14, v4}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$MonitorTask;->setAlarmInfo(Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;)V

    .line 2537
    const-wide/16 v10, 0x2710

    invoke-virtual {v15, v14, v10, v11}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 2538
    # getter for: Lcom/android/server/AlarmManagerServiceExt;->APP_SYNC_LOG:Z
    invoke-static {}, Lcom/android/server/AlarmManagerServiceExt;->access$100()Z

    move-result v5

    if-eqz v5, :cond_208

    const-string v5, "AlarmManagerEXT"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[TA] isRunpass="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v8, v4, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;->isRunPass:Z

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, " : "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v8, v4, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;->pkgName:Ljava/lang/String;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_208
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1d4 .. :try_end_208} :catch_20b
    .catchall {:try_start_1d4 .. :try_end_208} :catchall_e6

    .line 2544
    .end local v4    # "almRec":Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;
    .end local v14    # "newtask":Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$MonitorTask;
    .end local v15    # "timer":Ljava/util/Timer;
    .end local v16    # "tmRun":Z
    :cond_208
    :goto_208
    :try_start_208
    monitor-exit v17

    goto/16 :goto_dc

    .line 2539
    .restart local v4    # "almRec":Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;
    .restart local v16    # "tmRun":Z
    :catch_20b
    move-exception v12

    .line 2540
    .restart local v12    # "e":Ljava/lang/OutOfMemoryError;
    const-string v5, "AlarmManagerEXT"

    const-string v6, "OutOfMemory"

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_213
    .catchall {:try_start_208 .. :try_end_213} :catchall_e6

    goto :goto_208
.end method

.method public updateEmailSyncStatus(JJ[J)J
    .registers 31
    .param p1, "curAccountd"    # J
    .param p3, "alarmTriggerTime"    # J
    .param p5, "emailAccountInfos"    # [J

    .prologue
    .line 2684
    const/4 v12, 0x0

    .line 2685
    .local v12, "accountInfoIndex":I
    move-object/from16 v0, p5

    array-length v14, v0

    .line 2689
    .local v14, "accountInfoLimit":I
    const/4 v2, 0x2

    .line 2690
    .local v2, "ACCOUNT_INFO_UNIT_LENGTH":I
    const-wide/16 v20, 0x0

    .local v20, "newInterval":J
    move v13, v12

    .line 2692
    .end local v12    # "accountInfoIndex":I
    .local v13, "accountInfoIndex":I
    :cond_8
    :goto_8
    if-ge v13, v14, :cond_139

    .line 2693
    add-int/lit8 v12, v13, 0x1

    .end local v13    # "accountInfoIndex":I
    .restart local v12    # "accountInfoIndex":I
    aget-wide v10, p5, v13

    .line 2694
    .local v10, "accountId":J
    add-int/lit8 v13, v12, 0x1

    .end local v12    # "accountInfoIndex":I
    .restart local v13    # "accountInfoIndex":I
    aget-wide v22, p5, v12

    .line 2698
    .local v22, "prevSync":J
    const-wide/16 v4, 0x0

    cmp-long v3, v10, v4

    if-ltz v3, :cond_8

    .line 2703
    cmp-long v3, p1, v10

    if-nez v3, :cond_8

    .line 2704
    const-wide/16 v4, 0x0

    cmp-long v3, v22, v4

    if-nez v3, :cond_26

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v22

    .line 2705
    :cond_26
    sub-long v4, p3, v22

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(J)J

    move-result-wide v16

    .line 2706
    .local v16, "distance":J
    # getter for: Lcom/android/server/AlarmManagerServiceExt;->APP_SYNC_LOG:Z
    invoke-static {}, Lcom/android/server/AlarmManagerServiceExt;->access$100()Z

    move-result v3

    if-eqz v3, :cond_56

    const-string v3, "AlarmManagerEXT"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "(Email) ID="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", interval:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, v16

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2711
    :cond_56
    const-wide/16 v4, 0x3e8

    sub-long v4, v16, v4

    long-to-double v4, v4

    const-wide v6, 0x41124f8000000000L    # 300000.0

    div-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-long v4, v4

    const-wide/32 v6, 0x493e0

    mul-long v16, v4, v6

    .line 2712
    const-wide/32 v4, 0x493e0

    cmp-long v3, v16, v4

    if-ltz v3, :cond_8

    const-wide/32 v4, 0x493e0

    rem-long v4, v16, v4

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-nez v3, :cond_8

    .line 2713
    move-wide/from16 v20, v16

    .line 2717
    move-object/from16 v0, p0

    iget-object v0, v0, mSafeLock:Ljava/lang/Object;

    move-object/from16 v19, v0

    monitor-enter v19

    .line 2718
    :try_start_86
    move-object/from16 v0, p0

    iget-object v4, v0, mWHITElist:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v3, v0, this$1:Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;

    # getter for: Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mEmailUid:I
    invoke-static {v3}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->access$1500(Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;)I

    move-result v5

    move-object/from16 v0, p0

    iget-object v3, v0, this$1:Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;

    # getter for: Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mEmailPid:I
    invoke-static {v3}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->access$1600(Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;)I

    move-result v6

    long-to-int v7, v10

    const-wide/16 v8, 0x0

    move-object/from16 v3, p0

    invoke-virtual/range {v3 .. v9}, lookForObjectInListLocked(Ljava/util/ArrayList;IIIJ)I

    move-result v18

    .line 2723
    .local v18, "foundIdx":I
    const/4 v3, -0x1

    move/from16 v0, v18

    if-eq v0, v3, :cond_c5

    move-object/from16 v0, p0

    iget-object v3, v0, mWHITElist:Ljava/util/ArrayList;

    move/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;

    iget-wide v4, v3, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;->intervalTraffic:J

    cmp-long v3, v4, v20

    if-eqz v3, :cond_c5

    .line 2724
    move-object/from16 v0, p0

    iget-object v3, v0, mWHITElist:Ljava/util/ArrayList;

    move/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 2725
    const/16 v18, -0x1

    .line 2727
    :cond_c5
    const/4 v3, -0x1

    move/from16 v0, v18

    if-ne v0, v3, :cond_133

    .line 2728
    new-instance v15, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;-><init>(Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;)V

    .line 2729
    .local v15, "almRec":Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;
    const-string v3, "com.android.email"

    iput-object v3, v15, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;->pkgName:Ljava/lang/String;

    .line 2730
    move-object/from16 v0, p0

    iget-object v3, v0, this$1:Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;

    # getter for: Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mEmailUid:I
    invoke-static {v3}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->access$1500(Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;)I

    move-result v3

    iput v3, v15, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;->uid:I

    .line 2731
    move-object/from16 v0, p0

    iget-object v3, v0, this$1:Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;

    # getter for: Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mEmailPid:I
    invoke-static {v3}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->access$1600(Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;)I

    move-result v3

    iput v3, v15, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;->pid:I

    .line 2732
    long-to-int v3, v10

    iput v3, v15, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;->alarmHashCode:I

    .line 2733
    move-wide/from16 v0, v20

    iput-wide v0, v15, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;->intervalTraffic:J

    move-wide/from16 v0, v20

    iput-wide v0, v15, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;->intervalTrigger:J

    move-wide/from16 v0, v20

    iput-wide v0, v15, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;->intervalRequested:J

    move-wide/from16 v0, v20

    iput-wide v0, v15, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;->intervalCalculated:J

    .line 2737
    const/4 v3, 0x1

    iput-boolean v3, v15, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;->isWhite:Z

    .line 2738
    move-object/from16 v0, p0

    iget-object v3, v0, mWHITElist:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    int-to-long v4, v3

    const-wide/16 v6, 0x1388

    cmp-long v3, v4, v6

    if-gez v3, :cond_115

    move-object/from16 v0, p0

    iget-object v3, v0, mWHITElist:Ljava/util/ArrayList;

    invoke-virtual {v3, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2739
    :cond_115
    # getter for: Lcom/android/server/AlarmManagerServiceExt;->APP_SYNC_LOG:Z
    invoke-static {}, Lcom/android/server/AlarmManagerServiceExt;->access$100()Z

    move-result v3

    if-eqz v3, :cond_133

    const-string v3, "AlarmManagerEXT"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[AppSync] moved to Whitelist; Email IDX:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2741
    .end local v15    # "almRec":Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;
    :cond_133
    monitor-exit v19

    goto/16 :goto_8

    .end local v18    # "foundIdx":I
    :catchall_136
    move-exception v3

    monitor-exit v19
    :try_end_138
    .catchall {:try_start_86 .. :try_end_138} :catchall_136

    throw v3

    .line 2745
    .end local v10    # "accountId":J
    .end local v16    # "distance":J
    .end local v22    # "prevSync":J
    :cond_139
    return-wide v20
.end method

.method updateGmsBundlingState(Z)V
    .registers 4
    .param p1, "enable"    # Z

    .prologue
    .line 3492
    if-eqz p1, :cond_18

    .line 3493
    iget-object v1, p0, this$1:Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;

    # getter for: Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->fileGmsBundlingState:Ljava/io/File;
    invoke-static {v1}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->access$2800(Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_17

    .line 3494
    iget-object v1, p0, this$1:Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;

    # getter for: Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->fileGmsBundlingState:Ljava/io/File;
    invoke-static {v1}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->access$2800(Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 3505
    :cond_17
    :goto_17
    return-void

    .line 3497
    :cond_18
    iget-object v1, p0, this$1:Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;

    # getter for: Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->fileGmsBundlingState:Ljava/io/File;
    invoke-static {v1}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->access$2800(Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_17

    .line 3499
    :try_start_24
    iget-object v1, p0, this$1:Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;

    # getter for: Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->fileGmsBundlingState:Ljava/io/File;
    invoke-static {v1}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->access$2800(Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z
    :try_end_2d
    .catch Ljava/io/IOException; {:try_start_24 .. :try_end_2d} :catch_2e

    goto :goto_17

    .line 3500
    :catch_2e
    move-exception v0

    .line 3501
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_17
.end method
