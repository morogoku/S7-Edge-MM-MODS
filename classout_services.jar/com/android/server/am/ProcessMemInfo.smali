.class public Lcom/android/server/am/ProcessMemInfo;
.super Ljava/lang/Object;
.source "ProcessMemInfo.java"


# instance fields
.field final adjReason:Ljava/lang/String;

.field final adjType:Ljava/lang/String;

.field memtrack:J

.field final name:Ljava/lang/String;

.field final oomAdj:I

.field final pid:I

.field final procState:I

.field pss:J


# direct methods
.method public constructor <init>(Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;)V
    .registers 7
    .param p1, "_name"    # Ljava/lang/String;
    .param p2, "_pid"    # I
    .param p3, "_oomAdj"    # I
    .param p4, "_procState"    # I
    .param p5, "_adjType"    # Ljava/lang/String;
    .param p6, "_adjReason"    # Ljava/lang/String;

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, name:Ljava/lang/String;

    .line 32
    iput p2, p0, pid:I

    .line 33
    iput p3, p0, oomAdj:I

    .line 34
    iput p4, p0, procState:I

    .line 35
    iput-object p5, p0, adjType:Ljava/lang/String;

    .line 36
    iput-object p6, p0, adjReason:Ljava/lang/String;

    .line 37
    return-void
.end method
