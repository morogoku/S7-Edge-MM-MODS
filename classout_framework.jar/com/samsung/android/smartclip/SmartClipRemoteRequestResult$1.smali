.class final Lcom/samsung/android/smartclip/SmartClipRemoteRequestResult$1;
.super Ljava/lang/Object;
.source "SmartClipRemoteRequestResult.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/smartclip/SmartClipRemoteRequestResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/samsung/android/smartclip/SmartClipRemoteRequestResult;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/samsung/android/smartclip/SmartClipRemoteRequestResult;
    .registers 5
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v2, 0x0

    .line 60
    new-instance v0, Lcom/samsung/android/smartclip/SmartClipRemoteRequestResult;

    const/4 v1, 0x0

    invoke-direct {v0, v2, v2, v1}, Lcom/samsung/android/smartclip/SmartClipRemoteRequestResult;-><init>(IILandroid/os/Parcelable;)V

    .line 61
    .local v0, "data":Lcom/samsung/android/smartclip/SmartClipRemoteRequestResult;
    invoke-virtual {v0, p1}, Lcom/samsung/android/smartclip/SmartClipRemoteRequestResult;->readFromParcel(Landroid/os/Parcel;)V

    .line 62
    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 3
    .param p1, "x0"    # Landroid/os/Parcel;

    .prologue
    .line 58
    invoke-virtual {p0, p1}, createFromParcel(Landroid/os/Parcel;)Lcom/samsung/android/smartclip/SmartClipRemoteRequestResult;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/samsung/android/smartclip/SmartClipRemoteRequestResult;
    .registers 3
    .param p1, "size"    # I

    .prologue
    .line 66
    new-array v0, p1, [Lcom/samsung/android/smartclip/SmartClipRemoteRequestResult;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 3
    .param p1, "x0"    # I

    .prologue
    .line 58
    invoke-virtual {p0, p1}, newArray(I)[Lcom/samsung/android/smartclip/SmartClipRemoteRequestResult;

    move-result-object v0

    return-object v0
.end method