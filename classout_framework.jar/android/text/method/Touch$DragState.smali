.class Landroid/text/method/Touch$DragState;
.super Ljava/lang/Object;
.source "Touch.java"

# interfaces
.implements Landroid/text/NoCopySpan;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/text/method/Touch;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DragState"
.end annotation


# instance fields
.field public mFarEnough:Z

.field public mIsActivelySelecting:Z

.field public mIsSelectionStarted:Z

.field public mScrollX:I

.field public mScrollY:I

.field public mUsed:Z

.field public mX:F

.field public mY:F


# direct methods
.method public constructor <init>(FFII)V
    .registers 5
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "scrollX"    # I
    .param p4, "scrollY"    # I

    .prologue
    .line 251
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 252
    iput p1, p0, mX:F

    .line 253
    iput p2, p0, mY:F

    .line 254
    iput p3, p0, mScrollX:I

    .line 255
    iput p4, p0, mScrollY:I

    .line 256
    return-void
.end method
