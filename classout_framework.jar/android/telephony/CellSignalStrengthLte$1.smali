.class final Landroid/telephony/CellSignalStrengthLte$1;
.super Ljava/lang/Object;
.source "CellSignalStrengthLte.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/CellSignalStrengthLte;
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
        "Landroid/telephony/CellSignalStrengthLte;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 284
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/telephony/CellSignalStrengthLte;
    .registers 4
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 287
    new-instance v0, Landroid/telephony/CellSignalStrengthLte;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Landroid/telephony/CellSignalStrengthLte;-><init>(Landroid/os/Parcel;Landroid/telephony/CellSignalStrengthLte$1;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 3
    .param p1, "x0"    # Landroid/os/Parcel;

    .prologue
    .line 284
    invoke-virtual {p0, p1}, createFromParcel(Landroid/os/Parcel;)Landroid/telephony/CellSignalStrengthLte;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroid/telephony/CellSignalStrengthLte;
    .registers 3
    .param p1, "size"    # I

    .prologue
    .line 292
    new-array v0, p1, [Landroid/telephony/CellSignalStrengthLte;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 3
    .param p1, "x0"    # I

    .prologue
    .line 284
    invoke-virtual {p0, p1}, newArray(I)[Landroid/telephony/CellSignalStrengthLte;

    move-result-object v0

    return-object v0
.end method
