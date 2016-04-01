.class public Lcom/samsung/android/sdk/cover/ScoverManager;
.super Ljava/lang/Object;
.source "ScoverManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sdk/cover/ScoverManager$NfcLedCoverTouchListener;,
        Lcom/samsung/android/sdk/cover/ScoverManager$NfcLedCoverTouchListenerDelegate;,
        Lcom/samsung/android/sdk/cover/ScoverManager$CoverStateListener;,
        Lcom/samsung/android/sdk/cover/ScoverManager$StateListener;,
        Lcom/samsung/android/sdk/cover/ScoverManager$ScoverStateListener;,
        Lcom/samsung/android/sdk/cover/ScoverManager$CoverStateListenerDelegate;,
        Lcom/samsung/android/sdk/cover/ScoverManager$CoverListenerDelegate;
    }
.end annotation


# static fields
.field public static final COVER_MODE_HIDE_SVIEW_ONCE:I = 0x2

.field public static final COVER_MODE_NONE:I = 0x0

.field public static final COVER_MODE_SVIEW:I = 0x1

.field private static final FEATURE_COVER_FLIP:Ljava/lang/String; = "com.sec.feature.cover.flip"

.field public static final FEATURE_COVER_NFCLED:Ljava/lang/String; = "com.sec.feature.cover.nfcledcover"

.field private static final FEATURE_COVER_SVIEW:Ljava/lang/String; = "com.sec.feature.cover.sview"

.field static final SDK_VERSION:I = 0x1010000

.field private static final TAG:Ljava/lang/String; = "ScoverManager"

.field private static sIsFilpCoverSystemFeatureEnabled:Z

.field private static sIsNfcLedCoverSystemFeatureEnabled:Z

.field private static sIsSViewCoverSystemFeatureEnabled:Z

.field private static sIsSystemFeatureQueried:Z

.field private static sServiceVersion:I


# instance fields
.field private mContext:Landroid/content/Context;

.field private final mCoverStateListenerDelegates:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Lcom/samsung/android/sdk/cover/ScoverManager$CoverStateListenerDelegate;",
            ">;"
        }
    .end annotation
.end field

.field private final mListenerDelegates:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Lcom/samsung/android/sdk/cover/ScoverManager$CoverListenerDelegate;",
            ">;"
        }
    .end annotation
.end field

.field private final mNfcLedCoverTouchListenerDelegates:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Lcom/samsung/android/sdk/cover/ScoverManager$NfcLedCoverTouchListenerDelegate;",
            ">;"
        }
    .end annotation
.end field

.field private mService:Lcom/samsung/android/cover/ICoverManager;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    const/4 v0, 0x0

    .line 140
    sput-boolean v0, sIsSystemFeatureQueried:Z

    .line 146
    sput-boolean v0, sIsFilpCoverSystemFeatureEnabled:Z

    .line 152
    sput-boolean v0, sIsSViewCoverSystemFeatureEnabled:Z

    .line 158
    sput-boolean v0, sIsNfcLedCoverSystemFeatureEnabled:Z

    .line 160
    const/high16 v0, 0x1000000

    sput v0, sServiceVersion:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 166
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, mListenerDelegates:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 86
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, mCoverStateListenerDelegates:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 92
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, mNfcLedCoverTouchListenerDelegates:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 167
    iput-object p1, p0, mContext:Landroid/content/Context;

    .line 168
    invoke-direct {p0}, initSystemFeature()V

    .line 169
    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/sdk/cover/ScoverManager;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/sdk/cover/ScoverManager;

    .prologue
    .line 52
    iget-object v0, p0, mContext:Landroid/content/Context;

    return-object v0
.end method

.method private declared-synchronized getService()Lcom/samsung/android/cover/ICoverManager;
    .registers 3

    .prologue
    .line 295
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, mService:Lcom/samsung/android/cover/ICoverManager;

    if-nez v0, :cond_1d

    .line 296
    const-string v0, "cover"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/cover/ICoverManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/cover/ICoverManager;

    move-result-object v0

    iput-object v0, p0, mService:Lcom/samsung/android/cover/ICoverManager;

    .line 297
    iget-object v0, p0, mService:Lcom/samsung/android/cover/ICoverManager;

    if-nez v0, :cond_1d

    .line 298
    const-string v0, "ScoverManager"

    const-string/jumbo v1, "warning: no COVER_MANAGER_SERVICE"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    :cond_1d
    iget-object v0, p0, mService:Lcom/samsung/android/cover/ICoverManager;
    :try_end_1f
    .catchall {:try_start_1 .. :try_end_1f} :catchall_21

    monitor-exit p0

    return-object v0

    .line 295
    :catchall_21
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private initSystemFeature()V
    .registers 3

    .prologue
    .line 175
    sget-boolean v0, sIsSystemFeatureQueried:Z

    if-nez v0, :cond_37

    .line 176
    iget-object v0, p0, mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "com.sec.feature.cover.flip"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, sIsFilpCoverSystemFeatureEnabled:Z

    .line 178
    iget-object v0, p0, mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "com.sec.feature.cover.sview"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, sIsSViewCoverSystemFeatureEnabled:Z

    .line 180
    iget-object v0, p0, mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "com.sec.feature.cover.nfcledcover"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, sIsNfcLedCoverSystemFeatureEnabled:Z

    .line 182
    const/4 v0, 0x1

    sput-boolean v0, sIsSystemFeatureQueried:Z

    .line 183
    invoke-virtual {p0}, getCoverManagerVersion()I

    move-result v0

    sput v0, sServiceVersion:I

    .line 185
    :cond_37
    return-void
.end method


# virtual methods
.method public checkValidPacakge(Ljava/lang/String;)Z
    .registers 10
    .param p1, "pkg"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 628
    invoke-virtual {p0}, isSupportCover()Z

    move-result v6

    if-nez v6, :cond_10

    .line 629
    const-string v5, "ScoverManager"

    const-string v6, "checkValidPacakge : This device is not supported cover"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 657
    :cond_f
    :goto_f
    return v4

    .line 633
    :cond_10
    if-nez p1, :cond_1a

    .line 634
    const-string v5, "ScoverManager"

    const-string v6, "checkValidPacakge : pkg is null"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_f

    .line 639
    :cond_1a
    :try_start_1a
    invoke-direct {p0}, getService()Lcom/samsung/android/cover/ICoverManager;

    move-result-object v3

    .line 640
    .local v3, "svc":Lcom/samsung/android/cover/ICoverManager;
    if-eqz v3, :cond_f

    .line 641
    invoke-interface {v3}, Lcom/samsung/android/cover/ICoverManager;->getCoverState()Lcom/samsung/android/cover/CoverState;

    move-result-object v1

    .line 642
    .local v1, "coverState":Lcom/samsung/android/cover/CoverState;
    if-eqz v1, :cond_45

    iget-boolean v6, v1, Lcom/samsung/android/cover/CoverState;->attached:Z

    if-eqz v6, :cond_45

    .line 643
    invoke-virtual {v1}, Lcom/samsung/android/cover/CoverState;->getSmartCoverAppUri()Ljava/lang/String;

    move-result-object v0

    .line 644
    .local v0, "coverAppUri":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_f

    .line 645
    const/4 v6, 0x1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v0, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_f

    move v4, v5

    .line 646
    goto :goto_f

    .line 650
    .end local v0    # "coverAppUri":Ljava/lang/String;
    :cond_45
    const-string v5, "ScoverManager"

    const-string v6, "checkValidPacakge : coverState is null or cover is detached"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4c
    .catch Landroid/os/RemoteException; {:try_start_1a .. :try_end_4c} :catch_4d

    goto :goto_f

    .line 653
    .end local v1    # "coverState":Lcom/samsung/android/cover/CoverState;
    .end local v3    # "svc":Lcom/samsung/android/cover/ICoverManager;
    :catch_4d
    move-exception v2

    .line 654
    .local v2, "e":Landroid/os/RemoteException;
    const-string v5, "ScoverManager"

    const-string v6, "RemoteException in checkCoverAppUri: "

    invoke-static {v5, v6, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_f
.end method

.method getCoverManagerVersion()I
    .registers 7

    .prologue
    .line 254
    const/high16 v2, 0x1000000

    .line 255
    .local v2, "serviceVersion":I
    invoke-virtual {p0}, isSupportCover()Z

    move-result v3

    if-eqz v3, :cond_25

    .line 257
    :try_start_8
    const-class v3, Lcom/samsung/android/cover/ICoverManager;

    const-string/jumbo v4, "getVersion"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Class;

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 258
    .local v1, "methodGetVersion":Ljava/lang/reflect/Method;
    invoke-direct {p0}, getService()Lcom/samsung/android/cover/ICoverManager;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v1, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_24} :catch_3f

    move-result v2

    .line 263
    .end local v1    # "methodGetVersion":Ljava/lang/reflect/Method;
    :cond_25
    :goto_25
    const-string v3, "ScoverManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "serviceVersion : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    return v2

    .line 259
    :catch_3f
    move-exception v0

    .line 260
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "ScoverManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "getVersion failed : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_25
.end method

.method public getCoverState()Lcom/samsung/android/sdk/cover/ScoverState;
    .registers 15

    .prologue
    const/4 v13, 0x0

    .line 580
    const/high16 v10, 0x1010000

    .line 581
    .local v10, "hasAttachFieldVersion":I
    const/high16 v11, 0x1020000

    .line 582
    .local v11, "hasModelFieldVersion":I
    invoke-virtual {p0}, isSupportCover()Z

    move-result v1

    if-nez v1, :cond_15

    .line 583
    const-string v1, "ScoverManager"

    const-string/jumbo v2, "getCoverState : This device is not supported cover"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v13

    .line 618
    :goto_14
    return-object v0

    .line 587
    :cond_15
    :try_start_15
    invoke-direct {p0}, getService()Lcom/samsung/android/cover/ICoverManager;

    move-result-object v12

    .line 588
    .local v12, "svc":Lcom/samsung/android/cover/ICoverManager;
    if-eqz v12, :cond_83

    .line 589
    invoke-interface {v12}, Lcom/samsung/android/cover/ICoverManager;->getCoverState()Lcom/samsung/android/cover/CoverState;

    move-result-object v8

    .line 590
    .local v8, "coverState":Lcom/samsung/android/cover/CoverState;
    if-eqz v8, :cond_7b

    .line 591
    iget v1, v8, Lcom/samsung/android/cover/CoverState;->type:I

    const/16 v2, 0xff

    if-ne v1, v2, :cond_35

    iget-boolean v1, v8, Lcom/samsung/android/cover/CoverState;->switchState:Z

    if-nez v1, :cond_35

    .line 592
    const-string v1, "ScoverManager"

    const-string/jumbo v2, "getCoverState : type of cover is nfc smart cover and cover is closed"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v13

    .line 593
    goto :goto_14

    .line 596
    :cond_35
    const/high16 v1, 0x1020000

    invoke-virtual {p0, v1}, isSupportableVersion(I)Z

    move-result v1

    if-eqz v1, :cond_51

    .line 597
    new-instance v0, Lcom/samsung/android/sdk/cover/ScoverState;

    iget-boolean v1, v8, Lcom/samsung/android/cover/CoverState;->switchState:Z

    iget v2, v8, Lcom/samsung/android/cover/CoverState;->type:I

    iget v3, v8, Lcom/samsung/android/cover/CoverState;->color:I

    iget v4, v8, Lcom/samsung/android/cover/CoverState;->widthPixel:I

    iget v5, v8, Lcom/samsung/android/cover/CoverState;->heightPixel:I

    iget-boolean v6, v8, Lcom/samsung/android/cover/CoverState;->attached:Z

    iget v7, v8, Lcom/samsung/android/cover/CoverState;->model:I

    invoke-direct/range {v0 .. v7}, Lcom/samsung/android/sdk/cover/ScoverState;-><init>(ZIIIIZI)V

    .local v0, "scoverState":Lcom/samsung/android/sdk/cover/ScoverState;
    goto :goto_14

    .line 601
    .end local v0    # "scoverState":Lcom/samsung/android/sdk/cover/ScoverState;
    :cond_51
    const/high16 v1, 0x1010000

    invoke-virtual {p0, v1}, isSupportableVersion(I)Z

    move-result v1

    if-eqz v1, :cond_6b

    .line 602
    new-instance v0, Lcom/samsung/android/sdk/cover/ScoverState;

    iget-boolean v1, v8, Lcom/samsung/android/cover/CoverState;->switchState:Z

    iget v2, v8, Lcom/samsung/android/cover/CoverState;->type:I

    iget v3, v8, Lcom/samsung/android/cover/CoverState;->color:I

    iget v4, v8, Lcom/samsung/android/cover/CoverState;->widthPixel:I

    iget v5, v8, Lcom/samsung/android/cover/CoverState;->heightPixel:I

    iget-boolean v6, v8, Lcom/samsung/android/cover/CoverState;->attached:Z

    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/sdk/cover/ScoverState;-><init>(ZIIIIZ)V

    .restart local v0    # "scoverState":Lcom/samsung/android/sdk/cover/ScoverState;
    goto :goto_14

    .line 606
    .end local v0    # "scoverState":Lcom/samsung/android/sdk/cover/ScoverState;
    :cond_6b
    new-instance v0, Lcom/samsung/android/sdk/cover/ScoverState;

    iget-boolean v1, v8, Lcom/samsung/android/cover/CoverState;->switchState:Z

    iget v2, v8, Lcom/samsung/android/cover/CoverState;->type:I

    iget v3, v8, Lcom/samsung/android/cover/CoverState;->color:I

    iget v4, v8, Lcom/samsung/android/cover/CoverState;->widthPixel:I

    iget v5, v8, Lcom/samsung/android/cover/CoverState;->heightPixel:I

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/sdk/cover/ScoverState;-><init>(ZIIII)V

    .restart local v0    # "scoverState":Lcom/samsung/android/sdk/cover/ScoverState;
    goto :goto_14

    .line 612
    .end local v0    # "scoverState":Lcom/samsung/android/sdk/cover/ScoverState;
    :cond_7b
    const-string v1, "ScoverManager"

    const-string/jumbo v2, "getCoverState : coverState is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_83
    .catch Landroid/os/RemoteException; {:try_start_15 .. :try_end_83} :catch_85

    .end local v8    # "coverState":Lcom/samsung/android/cover/CoverState;
    .end local v12    # "svc":Lcom/samsung/android/cover/ICoverManager;
    :cond_83
    :goto_83
    move-object v0, v13

    .line 618
    goto :goto_14

    .line 615
    :catch_85
    move-exception v9

    .line 616
    .local v9, "e":Landroid/os/RemoteException;
    const-string v1, "ScoverManager"

    const-string v2, "RemoteException in getCoverState: "

    invoke-static {v1, v2, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_83
.end method

.method public getServiceVersionName()Ljava/lang/String;
    .registers 8

    .prologue
    .line 268
    sget v3, sServiceVersion:I

    shr-int/lit8 v3, v3, 0x18

    and-int/lit16 v0, v3, 0xff

    .line 269
    .local v0, "majorVersion":I
    sget v3, sServiceVersion:I

    shr-int/lit8 v3, v3, 0x10

    and-int/lit16 v1, v3, 0xff

    .line 270
    .local v1, "minorVersion":I
    sget v3, sServiceVersion:I

    const v4, 0xffff

    and-int v2, v3, v4

    .line 272
    .local v2, "revisions":I
    const-string v3, "%d.%d.%d"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method isSmartCover()Z
    .registers 5

    .prologue
    .line 204
    const/4 v1, 0x0

    .line 205
    .local v1, "isSmartCover":Z
    invoke-virtual {p0}, getCoverState()Lcom/samsung/android/sdk/cover/ScoverState;

    move-result-object v0

    .line 206
    .local v0, "coverState":Lcom/samsung/android/sdk/cover/ScoverState;
    if-eqz v0, :cond_e

    .line 207
    iget v2, v0, Lcom/samsung/android/sdk/cover/ScoverState;->type:I

    const/16 v3, 0xff

    if-ne v2, v3, :cond_e

    .line 208
    const/4 v1, 0x1

    .line 211
    :cond_e
    return v1
.end method

.method isSupportCover()Z
    .registers 2

    .prologue
    .line 194
    sget-boolean v0, sIsFilpCoverSystemFeatureEnabled:Z

    if-nez v0, :cond_8

    sget-boolean v0, sIsSViewCoverSystemFeatureEnabled:Z

    if-eqz v0, :cond_a

    :cond_8
    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method isSupportNfcLedCover()Z
    .registers 2

    .prologue
    .line 231
    sget-boolean v0, sIsNfcLedCoverSystemFeatureEnabled:Z

    return v0
.end method

.method isSupportSViewCover()Z
    .registers 2

    .prologue
    .line 221
    sget-boolean v0, sIsSViewCoverSystemFeatureEnabled:Z

    return v0
.end method

.method isSupportTypeOfCover(I)Z
    .registers 3
    .param p1, "type"    # I

    .prologue
    .line 242
    packed-switch p1, :pswitch_data_c

    .line 249
    :pswitch_3
    const/4 v0, 0x0

    :goto_4
    return v0

    .line 244
    :pswitch_5
    sget-boolean v0, sIsFilpCoverSystemFeatureEnabled:Z

    goto :goto_4

    .line 247
    :pswitch_8
    sget-boolean v0, sIsSViewCoverSystemFeatureEnabled:Z

    goto :goto_4

    .line 242
    nop

    :pswitch_data_c
    .packed-switch 0x0
        :pswitch_5
        :pswitch_8
        :pswitch_3
        :pswitch_8
    .end packed-switch
.end method

.method isSupportableVersion(I)Z
    .registers 10
    .param p1, "supportableVersion"    # I

    .prologue
    const v7, 0xffff

    .line 276
    shr-int/lit8 v6, p1, 0x18

    and-int/lit16 v0, v6, 0xff

    .line 277
    .local v0, "majorVersion":I
    shr-int/lit8 v6, p1, 0x10

    and-int/lit16 v1, v6, 0xff

    .line 278
    .local v1, "minorVersion":I
    and-int v2, p1, v7

    .line 279
    .local v2, "revisions":I
    sget v6, sServiceVersion:I

    shr-int/lit8 v6, v6, 0x18

    and-int/lit16 v3, v6, 0xff

    .line 280
    .local v3, "serviceMajorVersion":I
    sget v6, sServiceVersion:I

    shr-int/lit8 v6, v6, 0x10

    and-int/lit16 v4, v6, 0xff

    .line 281
    .local v4, "serviceMinorVersion":I
    sget v6, sServiceVersion:I

    and-int v5, v6, v7

    .line 282
    .local v5, "serviceRevisions":I
    if-lt v3, v0, :cond_25

    if-lt v4, v1, :cond_25

    if-lt v5, v2, :cond_25

    .line 284
    const/4 v6, 0x1

    .line 286
    :goto_24
    return v6

    :cond_25
    const/4 v6, 0x0

    goto :goto_24
.end method

.method public registerListener(Lcom/samsung/android/sdk/cover/ScoverManager$CoverStateListener;)V
    .registers 12
    .param p1, "listener"    # Lcom/samsung/android/sdk/cover/ScoverManager$CoverStateListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/sdk/SsdkUnsupportedException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x2

    .line 399
    const/high16 v4, 0x1010000

    .line 400
    .local v4, "functionVersion":I
    const-string v7, "ScoverManager"

    const-string/jumbo v8, "registerListener"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 401
    invoke-virtual {p0}, isSupportCover()Z

    move-result v7

    if-nez v7, :cond_1a

    .line 402
    const-string v7, "ScoverManager"

    const-string/jumbo v8, "registerListener : This device is not supported cover"

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 451
    :cond_19
    :goto_19
    return-void

    .line 406
    :cond_1a
    invoke-virtual {p0}, isSmartCover()Z

    move-result v7

    if-eqz v7, :cond_29

    .line 407
    const-string v7, "ScoverManager"

    const-string/jumbo v8, "registerListener : If cover is smart cover, it does not need to register listener of intenal App"

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_19

    .line 411
    :cond_29
    const/high16 v7, 0x1010000

    invoke-virtual {p0, v7}, isSupportableVersion(I)Z

    move-result v7

    if-nez v7, :cond_39

    .line 412
    new-instance v7, Lcom/samsung/android/sdk/SsdkUnsupportedException;

    const-string v8, "This device is not supported this function. Device is must higher then v1.1.0"

    invoke-direct {v7, v8, v9}, Lcom/samsung/android/sdk/SsdkUnsupportedException;-><init>(Ljava/lang/String;I)V

    throw v7

    .line 417
    :cond_39
    if-nez p1, :cond_44

    .line 418
    const-string v7, "ScoverManager"

    const-string/jumbo v8, "registerListener : listener is null"

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_19

    .line 422
    :cond_44
    const/4 v1, 0x0

    .line 424
    .local v1, "coverListener":Lcom/samsung/android/sdk/cover/ScoverManager$CoverStateListenerDelegate;
    iget-object v7, p0, mCoverStateListenerDelegates:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v7}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 425
    .local v5, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/samsung/android/sdk/cover/ScoverManager$CoverStateListenerDelegate;>;"
    :cond_4b
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_62

    .line 426
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/sdk/cover/ScoverManager$CoverStateListenerDelegate;

    .line 427
    .local v2, "delegate":Lcom/samsung/android/sdk/cover/ScoverManager$CoverStateListenerDelegate;
    invoke-virtual {v2}, Lcom/samsung/android/sdk/cover/ScoverManager$CoverStateListenerDelegate;->getListener()Lcom/samsung/android/sdk/cover/ScoverManager$CoverStateListener;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4b

    .line 428
    move-object v1, v2

    .line 433
    .end local v2    # "delegate":Lcom/samsung/android/sdk/cover/ScoverManager$CoverStateListenerDelegate;
    :cond_62
    if-nez v1, :cond_6f

    .line 434
    new-instance v1, Lcom/samsung/android/sdk/cover/ScoverManager$CoverStateListenerDelegate;

    .end local v1    # "coverListener":Lcom/samsung/android/sdk/cover/ScoverManager$CoverStateListenerDelegate;
    const/4 v7, 0x0

    invoke-direct {v1, p0, p1, v7}, Lcom/samsung/android/sdk/cover/ScoverManager$CoverStateListenerDelegate;-><init>(Lcom/samsung/android/sdk/cover/ScoverManager;Lcom/samsung/android/sdk/cover/ScoverManager$CoverStateListener;Landroid/os/Handler;)V

    .line 435
    .restart local v1    # "coverListener":Lcom/samsung/android/sdk/cover/ScoverManager$CoverStateListenerDelegate;
    iget-object v7, p0, mCoverStateListenerDelegates:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v7, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 439
    :cond_6f
    :try_start_6f
    invoke-direct {p0}, getService()Lcom/samsung/android/cover/ICoverManager;

    move-result-object v6

    .line 440
    .local v6, "svc":Lcom/samsung/android/cover/ICoverManager;
    if-eqz v6, :cond_19

    .line 441
    new-instance v0, Landroid/content/ComponentName;

    iget-object v7, p0, mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v0, v7, v8}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 443
    .local v0, "cm":Landroid/content/ComponentName;
    if-eqz v1, :cond_19

    if-eqz v0, :cond_19

    .line 444
    const/4 v7, 0x2

    invoke-interface {v6, v1, v0, v7}, Lcom/samsung/android/cover/ICoverManager;->registerListenerCallback(Landroid/os/IBinder;Landroid/content/ComponentName;I)V
    :try_end_90
    .catch Landroid/os/RemoteException; {:try_start_6f .. :try_end_90} :catch_91

    goto :goto_19

    .line 448
    .end local v0    # "cm":Landroid/content/ComponentName;
    .end local v6    # "svc":Lcom/samsung/android/cover/ICoverManager;
    :catch_91
    move-exception v3

    .line 449
    .local v3, "e":Landroid/os/RemoteException;
    const-string v7, "ScoverManager"

    const-string v8, "RemoteException in registerListener: "

    invoke-static {v7, v8, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_19
.end method

.method public registerListener(Lcom/samsung/android/sdk/cover/ScoverManager$ScoverStateListener;)V
    .registers 4
    .param p1, "listener"    # Lcom/samsung/android/sdk/cover/ScoverManager$ScoverStateListener;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 335
    const-string v0, "ScoverManager"

    const-string/jumbo v1, "registerListener : Use deprecated API!! Change ScoverStateListener to StateListener"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 336
    return-void
.end method

.method public registerListener(Lcom/samsung/android/sdk/cover/ScoverManager$StateListener;)V
    .registers 10
    .param p1, "listener"    # Lcom/samsung/android/sdk/cover/ScoverManager$StateListener;

    .prologue
    .line 345
    const-string v6, "ScoverManager"

    const-string/jumbo v7, "registerListener"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 346
    invoke-virtual {p0}, isSupportCover()Z

    move-result v6

    if-nez v6, :cond_17

    .line 347
    const-string v6, "ScoverManager"

    const-string/jumbo v7, "registerListener : This device is not supported cover"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 389
    :cond_16
    :goto_16
    return-void

    .line 351
    :cond_17
    invoke-virtual {p0}, isSmartCover()Z

    move-result v6

    if-eqz v6, :cond_26

    .line 352
    const-string v6, "ScoverManager"

    const-string/jumbo v7, "registerListener : If cover is smart cover, it does not need to register listener of intenal App"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_16

    .line 356
    :cond_26
    if-nez p1, :cond_31

    .line 357
    const-string v6, "ScoverManager"

    const-string/jumbo v7, "registerListener : listener is null"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_16

    .line 361
    :cond_31
    const/4 v1, 0x0

    .line 363
    .local v1, "coverListener":Lcom/samsung/android/sdk/cover/ScoverManager$CoverListenerDelegate;
    iget-object v6, p0, mListenerDelegates:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v6}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 364
    .local v4, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/samsung/android/sdk/cover/ScoverManager$CoverListenerDelegate;>;"
    :cond_38
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4f

    .line 365
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/sdk/cover/ScoverManager$CoverListenerDelegate;

    .line 366
    .local v2, "delegate":Lcom/samsung/android/sdk/cover/ScoverManager$CoverListenerDelegate;
    invoke-virtual {v2}, Lcom/samsung/android/sdk/cover/ScoverManager$CoverListenerDelegate;->getListener()Lcom/samsung/android/sdk/cover/ScoverManager$StateListener;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_38

    .line 367
    move-object v1, v2

    .line 372
    .end local v2    # "delegate":Lcom/samsung/android/sdk/cover/ScoverManager$CoverListenerDelegate;
    :cond_4f
    if-nez v1, :cond_5c

    .line 373
    new-instance v1, Lcom/samsung/android/sdk/cover/ScoverManager$CoverListenerDelegate;

    .end local v1    # "coverListener":Lcom/samsung/android/sdk/cover/ScoverManager$CoverListenerDelegate;
    const/4 v6, 0x0

    invoke-direct {v1, p0, p1, v6}, Lcom/samsung/android/sdk/cover/ScoverManager$CoverListenerDelegate;-><init>(Lcom/samsung/android/sdk/cover/ScoverManager;Lcom/samsung/android/sdk/cover/ScoverManager$StateListener;Landroid/os/Handler;)V

    .line 374
    .restart local v1    # "coverListener":Lcom/samsung/android/sdk/cover/ScoverManager$CoverListenerDelegate;
    iget-object v6, p0, mListenerDelegates:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v6, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 378
    :cond_5c
    :try_start_5c
    invoke-direct {p0}, getService()Lcom/samsung/android/cover/ICoverManager;

    move-result-object v5

    .line 379
    .local v5, "svc":Lcom/samsung/android/cover/ICoverManager;
    if-eqz v5, :cond_16

    .line 380
    new-instance v0, Landroid/content/ComponentName;

    iget-object v6, p0, mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v0, v6, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 382
    .local v0, "cm":Landroid/content/ComponentName;
    if-eqz v1, :cond_16

    if-eqz v0, :cond_16

    .line 383
    invoke-interface {v5, v1, v0}, Lcom/samsung/android/cover/ICoverManager;->registerCallback(Landroid/os/IBinder;Landroid/content/ComponentName;)V
    :try_end_7c
    .catch Landroid/os/RemoteException; {:try_start_5c .. :try_end_7c} :catch_7d

    goto :goto_16

    .line 386
    .end local v0    # "cm":Landroid/content/ComponentName;
    .end local v5    # "svc":Lcom/samsung/android/cover/ICoverManager;
    :catch_7d
    move-exception v3

    .line 387
    .local v3, "e":Landroid/os/RemoteException;
    const-string v6, "ScoverManager"

    const-string v7, "RemoteException in registerListener: "

    invoke-static {v6, v7, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_16
.end method

.method public registerNfcTouchListener(ILcom/samsung/android/sdk/cover/ScoverManager$NfcLedCoverTouchListener;)V
    .registers 13
    .param p1, "type"    # I
    .param p2, "listener"    # Lcom/samsung/android/sdk/cover/ScoverManager$NfcLedCoverTouchListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/sdk/SsdkUnsupportedException;
        }
    .end annotation

    .prologue
    .line 924
    const/high16 v3, 0x1030000

    .line 925
    .local v3, "functionVersion":I
    invoke-virtual {p0}, isSupportCover()Z

    move-result v7

    if-nez v7, :cond_11

    .line 926
    const-string v7, "ScoverManager"

    const-string/jumbo v8, "registerNfcTouchListener : This device does not support cover"

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 975
    :cond_10
    :goto_10
    return-void

    .line 930
    :cond_11
    const-string v7, "ScoverManager"

    const-string/jumbo v8, "registerNfcTouchListener"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 931
    invoke-virtual {p0}, isSupportNfcLedCover()Z

    move-result v7

    if-nez v7, :cond_28

    .line 932
    const-string v7, "ScoverManager"

    const-string/jumbo v8, "registerNfcTouchListener : This device does not support NFC Led cover"

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_10

    .line 936
    :cond_28
    const/high16 v7, 0x1030000

    invoke-virtual {p0, v7}, isSupportableVersion(I)Z

    move-result v7

    if-nez v7, :cond_39

    .line 937
    new-instance v7, Lcom/samsung/android/sdk/SsdkUnsupportedException;

    const-string v8, "This device does not support this function. Device is must higher then v1.3.0"

    const/4 v9, 0x2

    invoke-direct {v7, v8, v9}, Lcom/samsung/android/sdk/SsdkUnsupportedException;-><init>(Ljava/lang/String;I)V

    throw v7

    .line 942
    :cond_39
    if-nez p2, :cond_44

    .line 943
    const-string v7, "ScoverManager"

    const-string/jumbo v8, "registerNfcTouchListener : listener is null"

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_10

    .line 947
    :cond_44
    const/4 v5, 0x0

    .line 949
    .local v5, "nfcTouchListener":Lcom/samsung/android/sdk/cover/ScoverManager$NfcLedCoverTouchListenerDelegate;
    iget-object v7, p0, mNfcLedCoverTouchListenerDelegates:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v7}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 950
    .local v4, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/samsung/android/sdk/cover/ScoverManager$NfcLedCoverTouchListenerDelegate;>;"
    :cond_4b
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_62

    .line 951
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/sdk/cover/ScoverManager$NfcLedCoverTouchListenerDelegate;

    .line 952
    .local v1, "delegate":Lcom/samsung/android/sdk/cover/ScoverManager$NfcLedCoverTouchListenerDelegate;
    invoke-virtual {v1}, Lcom/samsung/android/sdk/cover/ScoverManager$NfcLedCoverTouchListenerDelegate;->getListener()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4b

    .line 953
    move-object v5, v1

    .line 958
    .end local v1    # "delegate":Lcom/samsung/android/sdk/cover/ScoverManager$NfcLedCoverTouchListenerDelegate;
    :cond_62
    if-nez v5, :cond_6f

    .line 959
    new-instance v5, Lcom/samsung/android/sdk/cover/ScoverManager$NfcLedCoverTouchListenerDelegate;

    .end local v5    # "nfcTouchListener":Lcom/samsung/android/sdk/cover/ScoverManager$NfcLedCoverTouchListenerDelegate;
    const/4 v7, 0x0

    invoke-direct {v5, p0, p2, v7}, Lcom/samsung/android/sdk/cover/ScoverManager$NfcLedCoverTouchListenerDelegate;-><init>(Lcom/samsung/android/sdk/cover/ScoverManager;Lcom/samsung/android/sdk/cover/ScoverManager$NfcLedCoverTouchListener;Landroid/os/Handler;)V

    .line 960
    .restart local v5    # "nfcTouchListener":Lcom/samsung/android/sdk/cover/ScoverManager$NfcLedCoverTouchListenerDelegate;
    iget-object v7, p0, mNfcLedCoverTouchListenerDelegates:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v7, v5}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 964
    :cond_6f
    :try_start_6f
    invoke-direct {p0}, getService()Lcom/samsung/android/cover/ICoverManager;

    move-result-object v6

    .line 965
    .local v6, "svc":Lcom/samsung/android/cover/ICoverManager;
    if-eqz v6, :cond_10

    .line 966
    new-instance v0, Landroid/content/ComponentName;

    iget-object v7, p0, mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v0, v7, v8}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 968
    .local v0, "cm":Landroid/content/ComponentName;
    if-eqz v5, :cond_10

    if-eqz v0, :cond_10

    .line 969
    invoke-interface {v6, p1, v5, v0}, Lcom/samsung/android/cover/ICoverManager;->registerNfcTouchListenerCallback(ILandroid/os/IBinder;Landroid/content/ComponentName;)V
    :try_end_8f
    .catch Landroid/os/RemoteException; {:try_start_6f .. :try_end_8f} :catch_90

    goto :goto_10

    .line 972
    .end local v0    # "cm":Landroid/content/ComponentName;
    .end local v6    # "svc":Lcom/samsung/android/cover/ICoverManager;
    :catch_90
    move-exception v2

    .line 973
    .local v2, "e":Landroid/os/RemoteException;
    const-string v7, "ScoverManager"

    const-string v8, "RemoteException in registerNfcTouchListener: "

    invoke-static {v7, v8, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_10
.end method

.method public sendDataToCover(I[B)V
    .registers 9
    .param p1, "command"    # I
    .param p2, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/sdk/SsdkUnsupportedException;
        }
    .end annotation

    .prologue
    .line 667
    const/high16 v1, 0x1020000

    .line 668
    .local v1, "functionVersion":I
    invoke-virtual {p0}, isSupportCover()Z

    move-result v3

    if-nez v3, :cond_11

    .line 669
    const-string v3, "ScoverManager"

    const-string/jumbo v4, "sendDataToCover : This device is not supported cover"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 690
    :cond_10
    :goto_10
    return-void

    .line 673
    :cond_11
    invoke-virtual {p0}, isSmartCover()Z

    move-result v3

    if-eqz v3, :cond_20

    .line 674
    const-string v3, "ScoverManager"

    const-string/jumbo v4, "sendDataToCover : If cover is smart cover, it does not need to send the data to cover"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_10

    .line 678
    :cond_20
    const/high16 v3, 0x1020000

    invoke-virtual {p0, v3}, isSupportableVersion(I)Z

    move-result v3

    if-nez v3, :cond_31

    .line 679
    new-instance v3, Lcom/samsung/android/sdk/SsdkUnsupportedException;

    const-string v4, "This device is not supported this function. Device is must higher then v1.2.0"

    const/4 v5, 0x2

    invoke-direct {v3, v4, v5}, Lcom/samsung/android/sdk/SsdkUnsupportedException;-><init>(Ljava/lang/String;I)V

    throw v3

    .line 683
    :cond_31
    invoke-direct {p0}, getService()Lcom/samsung/android/cover/ICoverManager;

    move-result-object v2

    .line 685
    .local v2, "svc":Lcom/samsung/android/cover/ICoverManager;
    if-eqz v2, :cond_10

    .line 686
    :try_start_37
    invoke-interface {v2, p1, p2}, Lcom/samsung/android/cover/ICoverManager;->sendDataToCover(I[B)V
    :try_end_3a
    .catch Landroid/os/RemoteException; {:try_start_37 .. :try_end_3a} :catch_3b

    goto :goto_10

    .line 687
    :catch_3b
    move-exception v0

    .line 688
    .local v0, "e":Landroid/os/RemoteException;
    const-string v3, "ScoverManager"

    const-string v4, "RemoteException in sendData : "

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_10
.end method

.method public sendDataToNfcLedCover(I[B)V
    .registers 9
    .param p1, "command"    # I
    .param p2, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/sdk/SsdkUnsupportedException;
        }
    .end annotation

    .prologue
    .line 1047
    const/high16 v1, 0x1030000

    .line 1048
    .local v1, "functionVersion":I
    invoke-virtual {p0}, isSupportCover()Z

    move-result v3

    if-nez v3, :cond_11

    .line 1049
    const-string v3, "ScoverManager"

    const-string/jumbo v4, "sendDataToNfcLedCover : This device does not support cover"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1071
    :cond_10
    :goto_10
    return-void

    .line 1053
    :cond_11
    invoke-virtual {p0}, isSupportNfcLedCover()Z

    move-result v3

    if-nez v3, :cond_20

    .line 1054
    const-string v3, "ScoverManager"

    const-string/jumbo v4, "sendDataToNfcLedCover : This device does not support NFC Led cover"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_10

    .line 1058
    :cond_20
    const/high16 v3, 0x1030000

    invoke-virtual {p0, v3}, isSupportableVersion(I)Z

    move-result v3

    if-nez v3, :cond_31

    .line 1059
    new-instance v3, Lcom/samsung/android/sdk/SsdkUnsupportedException;

    const-string v4, "This device does not support this function. Device is must higher then v1.3.0"

    const/4 v5, 0x2

    invoke-direct {v3, v4, v5}, Lcom/samsung/android/sdk/SsdkUnsupportedException;-><init>(Ljava/lang/String;I)V

    throw v3

    .line 1064
    :cond_31
    invoke-direct {p0}, getService()Lcom/samsung/android/cover/ICoverManager;

    move-result-object v2

    .line 1066
    .local v2, "svc":Lcom/samsung/android/cover/ICoverManager;
    if-eqz v2, :cond_10

    .line 1067
    :try_start_37
    invoke-interface {v2, p1, p2}, Lcom/samsung/android/cover/ICoverManager;->sendDataToNfcLedCover(I[B)V
    :try_end_3a
    .catch Landroid/os/RemoteException; {:try_start_37 .. :try_end_3a} :catch_3b

    goto :goto_10

    .line 1068
    :catch_3b
    move-exception v0

    .line 1069
    .local v0, "e":Landroid/os/RemoteException;
    const-string v3, "ScoverManager"

    const-string v4, "RemoteException in sendData to NFC : "

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_10
.end method

.method public setCoverModeToWindow(Landroid/view/Window;I)V
    .registers 6
    .param p1, "window"    # Landroid/view/Window;
    .param p2, "coverMode"    # I

    .prologue
    .line 315
    invoke-virtual {p0}, isSupportSViewCover()Z

    move-result v1

    if-nez v1, :cond_f

    .line 316
    const-string v1, "ScoverManager"

    const-string/jumbo v2, "setSViewCoverModeToWindow : This device is not supported s view cover"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    :cond_e
    :goto_e
    return-void

    .line 319
    :cond_f
    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 320
    .local v0, "wlp":Landroid/view/WindowManager$LayoutParams;
    if-eqz v0, :cond_e

    .line 321
    iput p2, v0, Landroid/view/WindowManager$LayoutParams;->coverMode:I

    .line 322
    invoke-virtual {p1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    goto :goto_e
.end method

.method public unregisterListener(Lcom/samsung/android/sdk/cover/ScoverManager$CoverStateListener;)V
    .registers 11
    .param p1, "listener"    # Lcom/samsung/android/sdk/cover/ScoverManager$CoverStateListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/sdk/SsdkUnsupportedException;
        }
    .end annotation

    .prologue
    .line 523
    const/high16 v3, 0x1010000

    .line 524
    .local v3, "functionVersion":I
    const-string v6, "ScoverManager"

    const-string/jumbo v7, "unregisterListener"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 525
    invoke-virtual {p0}, isSupportCover()Z

    move-result v6

    if-nez v6, :cond_19

    .line 526
    const-string v6, "ScoverManager"

    const-string/jumbo v7, "unregisterListener : This device is not supported cover"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 571
    :cond_18
    :goto_18
    return-void

    .line 530
    :cond_19
    invoke-virtual {p0}, isSmartCover()Z

    move-result v6

    if-eqz v6, :cond_28

    .line 531
    const-string v6, "ScoverManager"

    const-string/jumbo v7, "unregisterListener : If cover is smart cover, it does not need to unregister listener of intenal App"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_18

    .line 535
    :cond_28
    const/high16 v6, 0x1010000

    invoke-virtual {p0, v6}, isSupportableVersion(I)Z

    move-result v6

    if-nez v6, :cond_39

    .line 536
    new-instance v6, Lcom/samsung/android/sdk/SsdkUnsupportedException;

    const-string v7, "This device is not supported this function. Device is must higher then v1.1.0"

    const/4 v8, 0x2

    invoke-direct {v6, v7, v8}, Lcom/samsung/android/sdk/SsdkUnsupportedException;-><init>(Ljava/lang/String;I)V

    throw v6

    .line 541
    :cond_39
    if-nez p1, :cond_44

    .line 542
    const-string v6, "ScoverManager"

    const-string/jumbo v7, "unregisterListener : listener is null"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_18

    .line 546
    :cond_44
    const/4 v0, 0x0

    .line 548
    .local v0, "coverListener":Lcom/samsung/android/sdk/cover/ScoverManager$CoverStateListenerDelegate;
    iget-object v6, p0, mCoverStateListenerDelegates:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v6}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 549
    .local v4, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/samsung/android/sdk/cover/ScoverManager$CoverStateListenerDelegate;>;"
    :cond_4b
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_62

    .line 550
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/sdk/cover/ScoverManager$CoverStateListenerDelegate;

    .line 551
    .local v1, "delegate":Lcom/samsung/android/sdk/cover/ScoverManager$CoverStateListenerDelegate;
    invoke-virtual {v1}, Lcom/samsung/android/sdk/cover/ScoverManager$CoverStateListenerDelegate;->getListener()Lcom/samsung/android/sdk/cover/ScoverManager$CoverStateListener;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4b

    .line 552
    move-object v0, v1

    .line 557
    .end local v1    # "delegate":Lcom/samsung/android/sdk/cover/ScoverManager$CoverStateListenerDelegate;
    :cond_62
    if-eqz v0, :cond_18

    .line 562
    :try_start_64
    invoke-direct {p0}, getService()Lcom/samsung/android/cover/ICoverManager;

    move-result-object v5

    .line 563
    .local v5, "svc":Lcom/samsung/android/cover/ICoverManager;
    if-eqz v5, :cond_18

    .line 564
    invoke-interface {v5, v0}, Lcom/samsung/android/cover/ICoverManager;->unregisterCallback(Landroid/os/IBinder;)Z

    move-result v6

    if-eqz v6, :cond_18

    .line 565
    iget-object v6, p0, mCoverStateListenerDelegates:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v6, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_75
    .catch Landroid/os/RemoteException; {:try_start_64 .. :try_end_75} :catch_76

    goto :goto_18

    .line 568
    .end local v5    # "svc":Lcom/samsung/android/cover/ICoverManager;
    :catch_76
    move-exception v2

    .line 569
    .local v2, "e":Landroid/os/RemoteException;
    const-string v6, "ScoverManager"

    const-string v7, "RemoteException in unregisterListener: "

    invoke-static {v6, v7, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_18
.end method

.method public unregisterListener(Lcom/samsung/android/sdk/cover/ScoverManager$ScoverStateListener;)V
    .registers 4
    .param p1, "listener"    # Lcom/samsung/android/sdk/cover/ScoverManager$ScoverStateListener;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 462
    const-string v0, "ScoverManager"

    const-string/jumbo v1, "unregisterListener : Use deprecated API!! Change ScoverStateListener to StateListener"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 463
    return-void
.end method

.method public unregisterListener(Lcom/samsung/android/sdk/cover/ScoverManager$StateListener;)V
    .registers 9
    .param p1, "listener"    # Lcom/samsung/android/sdk/cover/ScoverManager$StateListener;

    .prologue
    .line 472
    const-string v5, "ScoverManager"

    const-string/jumbo v6, "unregisterListener"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 473
    invoke-virtual {p0}, isSupportCover()Z

    move-result v5

    if-nez v5, :cond_17

    .line 474
    const-string v5, "ScoverManager"

    const-string/jumbo v6, "unregisterListener : This device is not supported cover"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 513
    :cond_16
    :goto_16
    return-void

    .line 478
    :cond_17
    invoke-virtual {p0}, isSmartCover()Z

    move-result v5

    if-eqz v5, :cond_26

    .line 479
    const-string v5, "ScoverManager"

    const-string/jumbo v6, "unregisterListener : If cover is smart cover, it does not need to unregister listener of intenal App"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_16

    .line 483
    :cond_26
    if-nez p1, :cond_31

    .line 484
    const-string v5, "ScoverManager"

    const-string/jumbo v6, "unregisterListener : listener is null"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_16

    .line 488
    :cond_31
    const/4 v0, 0x0

    .line 490
    .local v0, "coverListener":Lcom/samsung/android/sdk/cover/ScoverManager$CoverListenerDelegate;
    iget-object v5, p0, mListenerDelegates:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v5}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 491
    .local v3, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/samsung/android/sdk/cover/ScoverManager$CoverListenerDelegate;>;"
    :cond_38
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4f

    .line 492
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/sdk/cover/ScoverManager$CoverListenerDelegate;

    .line 493
    .local v1, "delegate":Lcom/samsung/android/sdk/cover/ScoverManager$CoverListenerDelegate;
    invoke-virtual {v1}, Lcom/samsung/android/sdk/cover/ScoverManager$CoverListenerDelegate;->getListener()Lcom/samsung/android/sdk/cover/ScoverManager$StateListener;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_38

    .line 494
    move-object v0, v1

    .line 499
    .end local v1    # "delegate":Lcom/samsung/android/sdk/cover/ScoverManager$CoverListenerDelegate;
    :cond_4f
    if-eqz v0, :cond_16

    .line 504
    :try_start_51
    invoke-direct {p0}, getService()Lcom/samsung/android/cover/ICoverManager;

    move-result-object v4

    .line 505
    .local v4, "svc":Lcom/samsung/android/cover/ICoverManager;
    if-eqz v4, :cond_16

    .line 506
    invoke-interface {v4, v0}, Lcom/samsung/android/cover/ICoverManager;->unregisterCallback(Landroid/os/IBinder;)Z

    move-result v5

    if-eqz v5, :cond_16

    .line 507
    iget-object v5, p0, mListenerDelegates:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v5, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_62
    .catch Landroid/os/RemoteException; {:try_start_51 .. :try_end_62} :catch_63

    goto :goto_16

    .line 510
    .end local v4    # "svc":Lcom/samsung/android/cover/ICoverManager;
    :catch_63
    move-exception v2

    .line 511
    .local v2, "e":Landroid/os/RemoteException;
    const-string v5, "ScoverManager"

    const-string v6, "RemoteException in unregisterListener: "

    invoke-static {v5, v6, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_16
.end method

.method public unregisterNfcTouchListener(Lcom/samsung/android/sdk/cover/ScoverManager$NfcLedCoverTouchListener;)V
    .registers 11
    .param p1, "listener"    # Lcom/samsung/android/sdk/cover/ScoverManager$NfcLedCoverTouchListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/sdk/SsdkUnsupportedException;
        }
    .end annotation

    .prologue
    .line 987
    const-string v6, "ScoverManager"

    const-string/jumbo v7, "unregisterNfcTouchListener"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 988
    const/high16 v2, 0x1030000

    .line 989
    .local v2, "functionVersion":I
    invoke-virtual {p0}, isSupportCover()Z

    move-result v6

    if-nez v6, :cond_19

    .line 990
    const-string v6, "ScoverManager"

    const-string/jumbo v7, "unregisterNfcTouchListener : This device does not support cover"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1035
    :cond_18
    :goto_18
    return-void

    .line 994
    :cond_19
    invoke-virtual {p0}, isSupportNfcLedCover()Z

    move-result v6

    if-nez v6, :cond_28

    .line 995
    const-string v6, "ScoverManager"

    const-string/jumbo v7, "unregisterNfcTouchListener : This device does not support NFC Led cover"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_18

    .line 999
    :cond_28
    const/high16 v6, 0x1030000

    invoke-virtual {p0, v6}, isSupportableVersion(I)Z

    move-result v6

    if-nez v6, :cond_39

    .line 1000
    new-instance v6, Lcom/samsung/android/sdk/SsdkUnsupportedException;

    const-string v7, "This device does not support this function. Device is must higher then v1.3.0"

    const/4 v8, 0x2

    invoke-direct {v6, v7, v8}, Lcom/samsung/android/sdk/SsdkUnsupportedException;-><init>(Ljava/lang/String;I)V

    throw v6

    .line 1005
    :cond_39
    if-nez p1, :cond_44

    .line 1006
    const-string v6, "ScoverManager"

    const-string/jumbo v7, "unregisterNfcTouchListener : listener is null"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_18

    .line 1010
    :cond_44
    const/4 v4, 0x0

    .line 1012
    .local v4, "nfcTouchListener":Lcom/samsung/android/sdk/cover/ScoverManager$NfcLedCoverTouchListenerDelegate;
    iget-object v6, p0, mNfcLedCoverTouchListenerDelegates:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v6}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 1013
    .local v3, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/samsung/android/sdk/cover/ScoverManager$NfcLedCoverTouchListenerDelegate;>;"
    :cond_4b
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_62

    .line 1014
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/cover/ScoverManager$NfcLedCoverTouchListenerDelegate;

    .line 1015
    .local v0, "delegate":Lcom/samsung/android/sdk/cover/ScoverManager$NfcLedCoverTouchListenerDelegate;
    invoke-virtual {v0}, Lcom/samsung/android/sdk/cover/ScoverManager$NfcLedCoverTouchListenerDelegate;->getListener()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4b

    .line 1016
    move-object v4, v0

    .line 1021
    .end local v0    # "delegate":Lcom/samsung/android/sdk/cover/ScoverManager$NfcLedCoverTouchListenerDelegate;
    :cond_62
    if-eqz v4, :cond_18

    .line 1026
    :try_start_64
    invoke-direct {p0}, getService()Lcom/samsung/android/cover/ICoverManager;

    move-result-object v5

    .line 1027
    .local v5, "svc":Lcom/samsung/android/cover/ICoverManager;
    if-eqz v5, :cond_18

    .line 1028
    invoke-interface {v5, v4}, Lcom/samsung/android/cover/ICoverManager;->unregisterNfcTouchListenerCallback(Landroid/os/IBinder;)Z

    move-result v6

    if-eqz v6, :cond_18

    .line 1029
    iget-object v6, p0, mNfcLedCoverTouchListenerDelegates:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v6, v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_75
    .catch Landroid/os/RemoteException; {:try_start_64 .. :try_end_75} :catch_76

    goto :goto_18

    .line 1032
    .end local v5    # "svc":Lcom/samsung/android/cover/ICoverManager;
    :catch_76
    move-exception v1

    .line 1033
    .local v1, "e":Landroid/os/RemoteException;
    const-string v6, "ScoverManager"

    const-string v7, "RemoteException in unregisterNfcTouchListener: "

    invoke-static {v6, v7, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_18
.end method
