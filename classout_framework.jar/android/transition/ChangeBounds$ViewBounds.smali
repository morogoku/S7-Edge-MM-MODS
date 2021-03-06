.class Landroid/transition/ChangeBounds$ViewBounds;
.super Ljava/lang/Object;
.source "ChangeBounds.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/transition/ChangeBounds;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ViewBounds"
.end annotation


# instance fields
.field private mBottom:I

.field private mIsBottomRightSet:Z

.field private mIsTopLeftSet:Z

.field private mLeft:I

.field private mRight:I

.field private mTop:I

.field private mView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .registers 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 478
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 479
    iput-object p1, p0, mView:Landroid/view/View;

    .line 480
    return-void
.end method

.method private setLeftTopRightBottom()V
    .registers 7

    .prologue
    const/4 v5, 0x0

    .line 501
    iget-object v0, p0, mView:Landroid/view/View;

    iget v1, p0, mLeft:I

    iget v2, p0, mTop:I

    iget v3, p0, mRight:I

    iget v4, p0, mBottom:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->setLeftTopRightBottom(IIII)V

    .line 502
    iput-boolean v5, p0, mIsTopLeftSet:Z

    .line 503
    iput-boolean v5, p0, mIsBottomRightSet:Z

    .line 504
    return-void
.end method


# virtual methods
.method public setBottomRight(Landroid/graphics/PointF;)V
    .registers 3
    .param p1, "bottomRight"    # Landroid/graphics/PointF;

    .prologue
    .line 492
    iget v0, p1, Landroid/graphics/PointF;->x:F

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p0, mRight:I

    .line 493
    iget v0, p1, Landroid/graphics/PointF;->y:F

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p0, mBottom:I

    .line 494
    const/4 v0, 0x1

    iput-boolean v0, p0, mIsBottomRightSet:Z

    .line 495
    iget-boolean v0, p0, mIsTopLeftSet:Z

    if-eqz v0, :cond_1a

    .line 496
    invoke-direct {p0}, setLeftTopRightBottom()V

    .line 498
    :cond_1a
    return-void
.end method

.method public setTopLeft(Landroid/graphics/PointF;)V
    .registers 3
    .param p1, "topLeft"    # Landroid/graphics/PointF;

    .prologue
    .line 483
    iget v0, p1, Landroid/graphics/PointF;->x:F

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p0, mLeft:I

    .line 484
    iget v0, p1, Landroid/graphics/PointF;->y:F

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p0, mTop:I

    .line 485
    const/4 v0, 0x1

    iput-boolean v0, p0, mIsTopLeftSet:Z

    .line 486
    iget-boolean v0, p0, mIsBottomRightSet:Z

    if-eqz v0, :cond_1a

    .line 487
    invoke-direct {p0}, setLeftTopRightBottom()V

    .line 489
    :cond_1a
    return-void
.end method
