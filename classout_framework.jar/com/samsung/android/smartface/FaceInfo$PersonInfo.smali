.class public Lcom/samsung/android/smartface/FaceInfo$PersonInfo;
.super Ljava/lang/Object;
.source "FaceInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/smartface/FaceInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PersonInfo"
.end annotation


# instance fields
.field public address:Ljava/lang/String;

.field public addressEMail:Ljava/lang/String;

.field public name:Ljava/lang/String;

.field public phoneNumber:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 106
    iput-object v0, p0, addressEMail:Ljava/lang/String;

    .line 107
    iput-object v0, p0, phoneNumber:Ljava/lang/String;

    .line 108
    iput-object v0, p0, address:Ljava/lang/String;

    .line 109
    iput-object v0, p0, name:Ljava/lang/String;

    .line 112
    return-void
.end method
