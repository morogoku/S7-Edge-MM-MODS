.class public Lcom/samsung/android/scloud/oem/lib/bnr/BNRFile;
.super Ljava/lang/Object;
.source "BNRFile.java"


# instance fields
.field private isExternal:Z

.field private path:Ljava/lang/String;

.field private size:J

.field private timestamp:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    return-void
.end method


# virtual methods
.method public getPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/samsung/android/scloud/oem/lib/bnr/BNRFile;->path:Ljava/lang/String;

    return-object v0
.end method

.method public getSize()J
    .locals 2

    .prologue
    .line 72
    iget-wide v0, p0, Lcom/samsung/android/scloud/oem/lib/bnr/BNRFile;->size:J

    return-wide v0
.end method

.method public getTimeStamp()J
    .locals 2

    .prologue
    .line 47
    iget-wide v0, p0, Lcom/samsung/android/scloud/oem/lib/bnr/BNRFile;->timestamp:J

    return-wide v0
.end method

.method public getisExternal()Z
    .locals 1

    .prologue
    .line 64
    iget-boolean v0, p0, Lcom/samsung/android/scloud/oem/lib/bnr/BNRFile;->isExternal:Z

    return v0
.end method
