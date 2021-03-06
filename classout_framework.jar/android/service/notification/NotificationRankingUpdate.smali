.class public Landroid/service/notification/NotificationRankingUpdate;
.super Ljava/lang/Object;
.source "NotificationRankingUpdate.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/service/notification/NotificationRankingUpdate;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mFirstAmbientIndex:I

.field private final mInterceptedKeys:[Ljava/lang/String;

.field private final mKeys:[Ljava/lang/String;

.field private final mVisibilityOverrides:Landroid/os/Bundle;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 60
    new-instance v0, Landroid/service/notification/NotificationRankingUpdate$1;

    invoke-direct {v0}, Landroid/service/notification/NotificationRankingUpdate$1;-><init>()V

    sput-object v0, CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    invoke-virtual {p1}, Landroid/os/Parcel;->readStringArray()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, mKeys:[Ljava/lang/String;

    .line 42
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, mFirstAmbientIndex:I

    .line 43
    invoke-virtual {p1}, Landroid/os/Parcel;->readStringArray()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, mInterceptedKeys:[Ljava/lang/String;

    .line 44
    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, mVisibilityOverrides:Landroid/os/Bundle;

    .line 45
    return-void
.end method

.method public constructor <init>([Ljava/lang/String;[Ljava/lang/String;Landroid/os/Bundle;I)V
    .registers 5
    .param p1, "keys"    # [Ljava/lang/String;
    .param p2, "interceptedKeys"    # [Ljava/lang/String;
    .param p3, "visibilityOverrides"    # Landroid/os/Bundle;
    .param p4, "firstAmbientIndex"    # I

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, mKeys:[Ljava/lang/String;

    .line 35
    iput p4, p0, mFirstAmbientIndex:I

    .line 36
    iput-object p2, p0, mInterceptedKeys:[Ljava/lang/String;

    .line 37
    iput-object p3, p0, mVisibilityOverrides:Landroid/os/Bundle;

    .line 38
    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .prologue
    .line 49
    const/4 v0, 0x0

    return v0
.end method

.method public getFirstAmbientIndex()I
    .registers 2

    .prologue
    .line 76
    iget v0, p0, mFirstAmbientIndex:I

    return v0
.end method

.method public getInterceptedKeys()[Ljava/lang/String;
    .registers 2

    .prologue
    .line 80
    iget-object v0, p0, mInterceptedKeys:[Ljava/lang/String;

    return-object v0
.end method

.method public getOrderedKeys()[Ljava/lang/String;
    .registers 2

    .prologue
    .line 72
    iget-object v0, p0, mKeys:[Ljava/lang/String;

    return-object v0
.end method

.method public getVisibilityOverrides()Landroid/os/Bundle;
    .registers 2

    .prologue
    .line 84
    iget-object v0, p0, mVisibilityOverrides:Landroid/os/Bundle;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 54
    iget-object v0, p0, mKeys:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 55
    iget v0, p0, mFirstAmbientIndex:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 56
    iget-object v0, p0, mInterceptedKeys:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 57
    iget-object v0, p0, mVisibilityOverrides:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 58
    return-void
.end method
