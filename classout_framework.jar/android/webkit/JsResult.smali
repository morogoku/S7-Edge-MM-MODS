.class public Landroid/webkit/JsResult;
.super Ljava/lang/Object;
.source "JsResult.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/webkit/JsResult$ResultReceiver;
    }
.end annotation


# instance fields
.field private final mReceiver:Landroid/webkit/JsResult$ResultReceiver;

.field private mResult:Z


# direct methods
.method public constructor <init>(Landroid/webkit/JsResult$ResultReceiver;)V
    .registers 2
    .param p1, "receiver"    # Landroid/webkit/JsResult$ResultReceiver;

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput-object p1, p0, mReceiver:Landroid/webkit/JsResult$ResultReceiver;

    .line 63
    return-void
.end method

.method private final wakeUp()V
    .registers 2

    .prologue
    .line 75
    iget-object v0, p0, mReceiver:Landroid/webkit/JsResult$ResultReceiver;

    invoke-interface {v0, p0}, Landroid/webkit/JsResult$ResultReceiver;->onJsResultComplete(Landroid/webkit/JsResult;)V

    .line 76
    return-void
.end method


# virtual methods
.method public final cancel()V
    .registers 2

    .prologue
    .line 45
    const/4 v0, 0x0

    iput-boolean v0, p0, mResult:Z

    .line 46
    invoke-direct {p0}, wakeUp()V

    .line 47
    return-void
.end method

.method public final confirm()V
    .registers 2

    .prologue
    .line 53
    const/4 v0, 0x1

    iput-boolean v0, p0, mResult:Z

    .line 54
    invoke-direct {p0}, wakeUp()V

    .line 55
    return-void
.end method

.method public final getResult()Z
    .registers 2

    .prologue
    .line 70
    iget-boolean v0, p0, mResult:Z

    return v0
.end method
