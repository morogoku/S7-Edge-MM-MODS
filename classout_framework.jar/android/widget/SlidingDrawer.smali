.class public Landroid/widget/SlidingDrawer;
.super Landroid/view/ViewGroup;
.source "SlidingDrawer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/SlidingDrawer$1;,
        Landroid/widget/SlidingDrawer$SlidingHandler;,
        Landroid/widget/SlidingDrawer$DrawerToggler;,
        Landroid/widget/SlidingDrawer$OnDrawerScrollListener;,
        Landroid/widget/SlidingDrawer$OnDrawerCloseListener;,
        Landroid/widget/SlidingDrawer$OnDrawerOpenListener;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final ANIMATION_FRAME_DURATION:I = 0x10

.field private static final COLLAPSED_FULL_CLOSED:I = -0x2712

.field private static final EXPANDED_FULL_OPEN:I = -0x2711

.field private static final MAXIMUM_ACCELERATION:F = 2000.0f

.field private static final MAXIMUM_MAJOR_VELOCITY:F = 200.0f

.field private static final MAXIMUM_MINOR_VELOCITY:F = 150.0f

.field private static final MAXIMUM_TAP_VELOCITY:F = 100.0f

.field private static final MSG_ANIMATE:I = 0x3e8

.field public static final ORIENTATION_HORIZONTAL:I = 0x0

.field public static final ORIENTATION_VERTICAL:I = 0x1

.field private static final TAP_THRESHOLD:I = 0x6

.field private static final VELOCITY_UNITS:I = 0x3e8


# instance fields
.field private mAllowSingleTap:Z

.field private mAnimateOnClick:Z

.field private mAnimatedAcceleration:F

.field private mAnimatedVelocity:F

.field private mAnimating:Z

.field private mAnimationLastTime:J

.field private mAnimationPosition:F

.field private mBottomOffset:I

.field private mContent:Landroid/view/View;

.field private final mContentId:I

.field private mCurrentAnimationTime:J

.field private mExpanded:Z

.field private final mFrame:Landroid/graphics/Rect;

.field private mHandle:Landroid/view/View;

.field private mHandleHeight:I

.field private final mHandleId:I

.field private mHandleWidth:I

.field private final mHandler:Landroid/os/Handler;

.field private final mInvalidate:Landroid/graphics/Rect;

.field private mLocked:Z

.field private final mMaximumAcceleration:I

.field private final mMaximumMajorVelocity:I

.field private final mMaximumMinorVelocity:I

.field private final mMaximumTapVelocity:I

.field private mOnDrawerCloseListener:Landroid/widget/SlidingDrawer$OnDrawerCloseListener;

.field private mOnDrawerOpenListener:Landroid/widget/SlidingDrawer$OnDrawerOpenListener;

.field private mOnDrawerScrollListener:Landroid/widget/SlidingDrawer$OnDrawerScrollListener;

.field private final mTapThreshold:I

.field private mTopOffset:I

.field private mTouchDelta:I

.field private mTracking:Z

.field private mVelocityTracker:Landroid/view/VelocityTracker;

.field private final mVelocityUnits:I

.field private mVertical:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 186
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 187
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 199
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 200
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 16
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    const/4 v10, 0x0

    const/4 v7, 0x0

    const/4 v6, 0x1

    const/high16 v9, 0x3f000000    # 0.5f

    .line 216
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 108
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    iput-object v5, p0, mFrame:Landroid/graphics/Rect;

    .line 109
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    iput-object v5, p0, mInvalidate:Landroid/graphics/Rect;

    .line 126
    new-instance v5, Landroid/widget/SlidingDrawer$SlidingHandler;

    const/4 v8, 0x0

    invoke-direct {v5, p0, v8}, Landroid/widget/SlidingDrawer$SlidingHandler;-><init>(Landroid/widget/SlidingDrawer;Landroid/widget/SlidingDrawer$1;)V

    iput-object v5, p0, mHandler:Landroid/os/Handler;

    .line 218
    sget-object v5, Landroid/R$styleable;->SlidingDrawer:[I

    invoke-virtual {p1, p2, v5, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 221
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v7, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    .line 222
    .local v4, "orientation":I
    if-ne v4, v6, :cond_59

    move v5, v6

    :goto_2b
    iput-boolean v5, p0, mVertical:Z

    .line 223
    invoke-virtual {v0, v6, v10}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v5

    float-to-int v5, v5

    iput v5, p0, mBottomOffset:I

    .line 224
    const/4 v5, 0x2

    invoke-virtual {v0, v5, v10}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v5

    float-to-int v5, v5

    iput v5, p0, mTopOffset:I

    .line 225
    const/4 v5, 0x3

    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    iput-boolean v5, p0, mAllowSingleTap:Z

    .line 226
    const/4 v5, 0x6

    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    iput-boolean v5, p0, mAnimateOnClick:Z

    .line 228
    const/4 v5, 0x4

    invoke-virtual {v0, v5, v7}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    .line 229
    .local v3, "handleId":I
    if-nez v3, :cond_5b

    .line 230
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "The handle attribute is required and must refer to a valid child."

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .end local v3    # "handleId":I
    :cond_59
    move v5, v7

    .line 222
    goto :goto_2b

    .line 234
    .restart local v3    # "handleId":I
    :cond_5b
    const/4 v5, 0x5

    invoke-virtual {v0, v5, v7}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    .line 235
    .local v1, "contentId":I
    if-nez v1, :cond_6a

    .line 236
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "The content attribute is required and must refer to a valid child."

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 240
    :cond_6a
    if-ne v3, v1, :cond_74

    .line 241
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "The content and handle attributes must refer to different children."

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 245
    :cond_74
    iput v3, p0, mHandleId:I

    .line 246
    iput v1, p0, mContentId:I

    .line 248
    invoke-virtual {p0}, getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v2, v5, Landroid/util/DisplayMetrics;->density:F

    .line 249
    .local v2, "density":F
    const/high16 v5, 0x40c00000    # 6.0f

    mul-float/2addr v5, v2

    add-float/2addr v5, v9

    float-to-int v5, v5

    iput v5, p0, mTapThreshold:I

    .line 250
    const/high16 v5, 0x42c80000    # 100.0f

    mul-float/2addr v5, v2

    add-float/2addr v5, v9

    float-to-int v5, v5

    iput v5, p0, mMaximumTapVelocity:I

    .line 251
    const/high16 v5, 0x43160000    # 150.0f

    mul-float/2addr v5, v2

    add-float/2addr v5, v9

    float-to-int v5, v5

    iput v5, p0, mMaximumMinorVelocity:I

    .line 252
    const/high16 v5, 0x43480000    # 200.0f

    mul-float/2addr v5, v2

    add-float/2addr v5, v9

    float-to-int v5, v5

    iput v5, p0, mMaximumMajorVelocity:I

    .line 253
    const/high16 v5, 0x44fa0000    # 2000.0f

    mul-float/2addr v5, v2

    add-float/2addr v5, v9

    float-to-int v5, v5

    iput v5, p0, mMaximumAcceleration:I

    .line 254
    const/high16 v5, 0x447a0000    # 1000.0f

    mul-float/2addr v5, v2

    add-float/2addr v5, v9

    float-to-int v5, v5

    iput v5, p0, mVelocityUnits:I

    .line 256
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 258
    invoke-virtual {p0, v7}, setAlwaysDrawnWithCacheEnabled(Z)V

    .line 259
    return-void
.end method

.method static synthetic access$200(Landroid/widget/SlidingDrawer;)Z
    .registers 2
    .param p0, "x0"    # Landroid/widget/SlidingDrawer;

    .prologue
    .line 86
    iget-boolean v0, p0, mLocked:Z

    return v0
.end method

.method static synthetic access$300(Landroid/widget/SlidingDrawer;)Z
    .registers 2
    .param p0, "x0"    # Landroid/widget/SlidingDrawer;

    .prologue
    .line 86
    iget-boolean v0, p0, mAnimateOnClick:Z

    return v0
.end method

.method static synthetic access$400(Landroid/widget/SlidingDrawer;)V
    .registers 1
    .param p0, "x0"    # Landroid/widget/SlidingDrawer;

    .prologue
    .line 86
    invoke-direct {p0}, doAnimation()V

    return-void
.end method

.method private animateClose(I)V
    .registers 4
    .param p1, "position"    # I

    .prologue
    .line 503
    invoke-direct {p0, p1}, prepareTracking(I)V

    .line 504
    iget v0, p0, mMaximumAcceleration:I

    int-to-float v0, v0

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, performFling(IFZ)V

    .line 505
    return-void
.end method

.method private animateOpen(I)V
    .registers 4
    .param p1, "position"    # I

    .prologue
    .line 508
    invoke-direct {p0, p1}, prepareTracking(I)V

    .line 509
    iget v0, p0, mMaximumAcceleration:I

    neg-int v0, v0

    int-to-float v0, v0

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, performFling(IFZ)V

    .line 510
    return-void
.end method

.method private closeDrawer()V
    .registers 3

    .prologue
    .line 845
    const/16 v0, -0x2712

    invoke-direct {p0, v0}, moveHandle(I)V

    .line 846
    iget-object v0, p0, mContent:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 847
    iget-object v0, p0, mContent:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->destroyDrawingCache()V

    .line 849
    iget-boolean v0, p0, mExpanded:Z

    if-nez v0, :cond_16

    .line 857
    :cond_15
    :goto_15
    return-void

    .line 853
    :cond_16
    const/4 v0, 0x0

    iput-boolean v0, p0, mExpanded:Z

    .line 854
    iget-object v0, p0, mOnDrawerCloseListener:Landroid/widget/SlidingDrawer$OnDrawerCloseListener;

    if-eqz v0, :cond_15

    .line 855
    iget-object v0, p0, mOnDrawerCloseListener:Landroid/widget/SlidingDrawer$OnDrawerCloseListener;

    invoke-interface {v0}, Landroid/widget/SlidingDrawer$OnDrawerCloseListener;->onDrawerClosed()V

    goto :goto_15
.end method

.method private doAnimation()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 701
    iget-boolean v0, p0, mAnimating:Z

    if-eqz v0, :cond_21

    .line 702
    invoke-direct {p0}, incrementAnimation()V

    .line 703
    iget v1, p0, mAnimationPosition:F

    iget v2, p0, mBottomOffset:I

    iget-boolean v0, p0, mVertical:Z

    if-eqz v0, :cond_22

    invoke-virtual {p0}, getHeight()I

    move-result v0

    :goto_14
    add-int/2addr v0, v2

    add-int/lit8 v0, v0, -0x1

    int-to-float v0, v0

    cmpl-float v0, v1, v0

    if-ltz v0, :cond_27

    .line 704
    iput-boolean v3, p0, mAnimating:Z

    .line 705
    invoke-direct {p0}, closeDrawer()V

    .line 716
    :cond_21
    :goto_21
    return-void

    .line 703
    :cond_22
    invoke-virtual {p0}, getWidth()I

    move-result v0

    goto :goto_14

    .line 706
    :cond_27
    iget v0, p0, mAnimationPosition:F

    iget v1, p0, mTopOffset:I

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_36

    .line 707
    iput-boolean v3, p0, mAnimating:Z

    .line 708
    invoke-direct {p0}, openDrawer()V

    goto :goto_21

    .line 710
    :cond_36
    iget v0, p0, mAnimationPosition:F

    float-to-int v0, v0

    invoke-direct {p0, v0}, moveHandle(I)V

    .line 711
    iget-wide v0, p0, mCurrentAnimationTime:J

    const-wide/16 v2, 0x10

    add-long/2addr v0, v2

    iput-wide v0, p0, mCurrentAnimationTime:J

    .line 712
    iget-object v0, p0, mHandler:Landroid/os/Handler;

    iget-object v1, p0, mHandler:Landroid/os/Handler;

    const/16 v2, 0x3e8

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    iget-wide v2, p0, mCurrentAnimationTime:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageAtTime(Landroid/os/Message;J)Z

    goto :goto_21
.end method

.method private incrementAnimation()V
    .registers 9

    .prologue
    .line 719
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 720
    .local v2, "now":J
    iget-wide v6, p0, mAnimationLastTime:J

    sub-long v6, v2, v6

    long-to-float v6, v6

    const/high16 v7, 0x447a0000    # 1000.0f

    div-float v4, v6, v7

    .line 721
    .local v4, "t":F
    iget v1, p0, mAnimationPosition:F

    .line 722
    .local v1, "position":F
    iget v5, p0, mAnimatedVelocity:F

    .line 723
    .local v5, "v":F
    iget v0, p0, mAnimatedAcceleration:F

    .line 724
    .local v0, "a":F
    mul-float v6, v5, v4

    add-float/2addr v6, v1

    const/high16 v7, 0x3f000000    # 0.5f

    mul-float/2addr v7, v0

    mul-float/2addr v7, v4

    mul-float/2addr v7, v4

    add-float/2addr v6, v7

    iput v6, p0, mAnimationPosition:F

    .line 725
    mul-float v6, v0, v4

    add-float/2addr v6, v5

    iput v6, p0, mAnimatedVelocity:F

    .line 726
    iput-wide v2, p0, mAnimationLastTime:J

    .line 727
    return-void
.end method

.method private moveHandle(I)V
    .registers 14
    .param p1, "position"    # I

    .prologue
    const/4 v11, 0x0

    const/16 v9, -0x2711

    const/16 v8, -0x2712

    .line 587
    iget-object v3, p0, mHandle:Landroid/view/View;

    .line 589
    .local v3, "handle":Landroid/view/View;
    iget-boolean v7, p0, mVertical:Z

    if-eqz v7, :cond_90

    .line 590
    if-ne p1, v9, :cond_1b

    .line 591
    iget v7, p0, mTopOffset:I

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v8

    sub-int/2addr v7, v8

    invoke-virtual {v3, v7}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 592
    invoke-virtual {p0}, invalidate()V

    .line 650
    :goto_1a
    return-void

    .line 593
    :cond_1b
    if-ne p1, v8, :cond_34

    .line 594
    iget v7, p0, mBottomOffset:I

    iget v8, p0, mBottom:I

    add-int/2addr v7, v8

    iget v8, p0, mTop:I

    sub-int/2addr v7, v8

    iget v8, p0, mHandleHeight:I

    sub-int/2addr v7, v8

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v8

    sub-int/2addr v7, v8

    invoke-virtual {v3, v7}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 596
    invoke-virtual {p0}, invalidate()V

    goto :goto_1a

    .line 598
    :cond_34
    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v6

    .line 599
    .local v6, "top":I
    sub-int v1, p1, v6

    .line 600
    .local v1, "deltaY":I
    iget v7, p0, mTopOffset:I

    if-ge p1, v7, :cond_74

    .line 601
    iget v7, p0, mTopOffset:I

    sub-int v1, v7, v6

    .line 605
    :cond_42
    :goto_42
    invoke-virtual {v3, v1}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 607
    iget-object v2, p0, mFrame:Landroid/graphics/Rect;

    .line 608
    .local v2, "frame":Landroid/graphics/Rect;
    iget-object v5, p0, mInvalidate:Landroid/graphics/Rect;

    .line 610
    .local v5, "region":Landroid/graphics/Rect;
    invoke-virtual {v3, v2}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 611
    invoke-virtual {v5, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 613
    iget v7, v2, Landroid/graphics/Rect;->left:I

    iget v8, v2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v8, v1

    iget v9, v2, Landroid/graphics/Rect;->right:I

    iget v10, v2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v10, v1

    invoke-virtual {v5, v7, v8, v9, v10}, Landroid/graphics/Rect;->union(IIII)V

    .line 614
    iget v7, v2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v7, v1

    invoke-virtual {p0}, getWidth()I

    move-result v8

    iget v9, v2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v9, v1

    iget-object v10, p0, mContent:Landroid/view/View;

    invoke-virtual {v10}, Landroid/view/View;->getHeight()I

    move-result v10

    add-int/2addr v9, v10

    invoke-virtual {v5, v11, v7, v8, v9}, Landroid/graphics/Rect;->union(IIII)V

    .line 617
    invoke-virtual {p0, v5}, invalidate(Landroid/graphics/Rect;)V

    goto :goto_1a

    .line 602
    .end local v2    # "frame":Landroid/graphics/Rect;
    .end local v5    # "region":Landroid/graphics/Rect;
    :cond_74
    iget v7, p0, mBottomOffset:I

    iget v8, p0, mBottom:I

    add-int/2addr v7, v8

    iget v8, p0, mTop:I

    sub-int/2addr v7, v8

    iget v8, p0, mHandleHeight:I

    sub-int/2addr v7, v8

    sub-int/2addr v7, v6

    if-le v1, v7, :cond_42

    .line 603
    iget v7, p0, mBottomOffset:I

    iget v8, p0, mBottom:I

    add-int/2addr v7, v8

    iget v8, p0, mTop:I

    sub-int/2addr v7, v8

    iget v8, p0, mHandleHeight:I

    sub-int/2addr v7, v8

    sub-int v1, v7, v6

    goto :goto_42

    .line 620
    .end local v1    # "deltaY":I
    .end local v6    # "top":I
    :cond_90
    if-ne p1, v9, :cond_a1

    .line 621
    iget v7, p0, mTopOffset:I

    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v8

    sub-int/2addr v7, v8

    invoke-virtual {v3, v7}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 622
    invoke-virtual {p0}, invalidate()V

    goto/16 :goto_1a

    .line 623
    :cond_a1
    if-ne p1, v8, :cond_bb

    .line 624
    iget v7, p0, mBottomOffset:I

    iget v8, p0, mRight:I

    add-int/2addr v7, v8

    iget v8, p0, mLeft:I

    sub-int/2addr v7, v8

    iget v8, p0, mHandleWidth:I

    sub-int/2addr v7, v8

    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v8

    sub-int/2addr v7, v8

    invoke-virtual {v3, v7}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 626
    invoke-virtual {p0}, invalidate()V

    goto/16 :goto_1a

    .line 628
    :cond_bb
    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v4

    .line 629
    .local v4, "left":I
    sub-int v0, p1, v4

    .line 630
    .local v0, "deltaX":I
    iget v7, p0, mTopOffset:I

    if-ge p1, v7, :cond_fc

    .line 631
    iget v7, p0, mTopOffset:I

    sub-int v0, v7, v4

    .line 635
    :cond_c9
    :goto_c9
    invoke-virtual {v3, v0}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 637
    iget-object v2, p0, mFrame:Landroid/graphics/Rect;

    .line 638
    .restart local v2    # "frame":Landroid/graphics/Rect;
    iget-object v5, p0, mInvalidate:Landroid/graphics/Rect;

    .line 640
    .restart local v5    # "region":Landroid/graphics/Rect;
    invoke-virtual {v3, v2}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 641
    invoke-virtual {v5, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 643
    iget v7, v2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v7, v0

    iget v8, v2, Landroid/graphics/Rect;->top:I

    iget v9, v2, Landroid/graphics/Rect;->right:I

    sub-int/2addr v9, v0

    iget v10, v2, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v5, v7, v8, v9, v10}, Landroid/graphics/Rect;->union(IIII)V

    .line 644
    iget v7, v2, Landroid/graphics/Rect;->right:I

    sub-int/2addr v7, v0

    iget v8, v2, Landroid/graphics/Rect;->right:I

    sub-int/2addr v8, v0

    iget-object v9, p0, mContent:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getWidth()I

    move-result v9

    add-int/2addr v8, v9

    invoke-virtual {p0}, getHeight()I

    move-result v9

    invoke-virtual {v5, v7, v11, v8, v9}, Landroid/graphics/Rect;->union(IIII)V

    .line 647
    invoke-virtual {p0, v5}, invalidate(Landroid/graphics/Rect;)V

    goto/16 :goto_1a

    .line 632
    .end local v2    # "frame":Landroid/graphics/Rect;
    .end local v5    # "region":Landroid/graphics/Rect;
    :cond_fc
    iget v7, p0, mBottomOffset:I

    iget v8, p0, mRight:I

    add-int/2addr v7, v8

    iget v8, p0, mLeft:I

    sub-int/2addr v7, v8

    iget v8, p0, mHandleWidth:I

    sub-int/2addr v7, v8

    sub-int/2addr v7, v4

    if-le v0, v7, :cond_c9

    .line 633
    iget v7, p0, mBottomOffset:I

    iget v8, p0, mRight:I

    add-int/2addr v7, v8

    iget v8, p0, mLeft:I

    sub-int/2addr v7, v8

    iget v8, p0, mHandleWidth:I

    sub-int/2addr v7, v8

    sub-int v0, v7, v4

    goto :goto_c9
.end method

.method private openDrawer()V
    .registers 3

    .prologue
    .line 860
    const/16 v0, -0x2711

    invoke-direct {p0, v0}, moveHandle(I)V

    .line 861
    iget-object v0, p0, mContent:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 863
    iget-boolean v0, p0, mExpanded:Z

    if-eqz v0, :cond_10

    .line 872
    :cond_f
    :goto_f
    return-void

    .line 867
    :cond_10
    const/4 v0, 0x1

    iput-boolean v0, p0, mExpanded:Z

    .line 869
    iget-object v0, p0, mOnDrawerOpenListener:Landroid/widget/SlidingDrawer$OnDrawerOpenListener;

    if-eqz v0, :cond_f

    .line 870
    iget-object v0, p0, mOnDrawerOpenListener:Landroid/widget/SlidingDrawer$OnDrawerOpenListener;

    invoke-interface {v0}, Landroid/widget/SlidingDrawer$OnDrawerOpenListener;->onDrawerOpened()V

    goto :goto_f
.end method

.method private performFling(IFZ)V
    .registers 10
    .param p1, "position"    # I
    .param p2, "velocity"    # F
    .param p3, "always"    # Z

    .prologue
    const/16 v5, 0x3e8

    const/4 v4, 0x0

    .line 513
    int-to-float v2, p1

    iput v2, p0, mAnimationPosition:F

    .line 514
    iput p2, p0, mAnimatedVelocity:F

    .line 516
    iget-boolean v2, p0, mExpanded:Z

    if-eqz v2, :cond_67

    .line 517
    if-nez p3, :cond_28

    iget v2, p0, mMaximumMajorVelocity:I

    int-to-float v2, v2

    cmpl-float v2, p2, v2

    if-gtz v2, :cond_28

    iget v3, p0, mTopOffset:I

    iget-boolean v2, p0, mVertical:Z

    if-eqz v2, :cond_57

    iget v2, p0, mHandleHeight:I

    :goto_1d
    add-int/2addr v2, v3

    if-le p1, v2, :cond_5a

    iget v2, p0, mMaximumMajorVelocity:I

    neg-int v2, v2

    int-to-float v2, v2

    cmpl-float v2, p2, v2

    if-lez v2, :cond_5a

    .line 522
    :cond_28
    iget v2, p0, mMaximumAcceleration:I

    int-to-float v2, v2

    iput v2, p0, mAnimatedAcceleration:F

    .line 523
    cmpg-float v2, p2, v4

    if-gez v2, :cond_33

    .line 524
    iput v4, p0, mAnimatedVelocity:F

    .line 552
    :cond_33
    :goto_33
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 553
    .local v0, "now":J
    iput-wide v0, p0, mAnimationLastTime:J

    .line 554
    const-wide/16 v2, 0x10

    add-long/2addr v2, v0

    iput-wide v2, p0, mCurrentAnimationTime:J

    .line 555
    const/4 v2, 0x1

    iput-boolean v2, p0, mAnimating:Z

    .line 556
    iget-object v2, p0, mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 557
    iget-object v2, p0, mHandler:Landroid/os/Handler;

    iget-object v3, p0, mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    iget-wide v4, p0, mCurrentAnimationTime:J

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->sendMessageAtTime(Landroid/os/Message;J)Z

    .line 558
    invoke-direct {p0}, stopTracking()V

    .line 559
    return-void

    .line 517
    .end local v0    # "now":J
    :cond_57
    iget v2, p0, mHandleWidth:I

    goto :goto_1d

    .line 528
    :cond_5a
    iget v2, p0, mMaximumAcceleration:I

    neg-int v2, v2

    int-to-float v2, v2

    iput v2, p0, mAnimatedAcceleration:F

    .line 529
    cmpl-float v2, p2, v4

    if-lez v2, :cond_33

    .line 530
    iput v4, p0, mAnimatedVelocity:F

    goto :goto_33

    .line 534
    :cond_67
    if-nez p3, :cond_95

    iget v2, p0, mMaximumMajorVelocity:I

    int-to-float v2, v2

    cmpl-float v2, p2, v2

    if-gtz v2, :cond_84

    iget-boolean v2, p0, mVertical:Z

    if-eqz v2, :cond_90

    invoke-virtual {p0}, getHeight()I

    move-result v2

    :goto_78
    div-int/lit8 v2, v2, 0x2

    if-le p1, v2, :cond_95

    iget v2, p0, mMaximumMajorVelocity:I

    neg-int v2, v2

    int-to-float v2, v2

    cmpl-float v2, p2, v2

    if-lez v2, :cond_95

    .line 538
    :cond_84
    iget v2, p0, mMaximumAcceleration:I

    int-to-float v2, v2

    iput v2, p0, mAnimatedAcceleration:F

    .line 539
    cmpg-float v2, p2, v4

    if-gez v2, :cond_33

    .line 540
    iput v4, p0, mAnimatedVelocity:F

    goto :goto_33

    .line 534
    :cond_90
    invoke-virtual {p0}, getWidth()I

    move-result v2

    goto :goto_78

    .line 545
    :cond_95
    iget v2, p0, mMaximumAcceleration:I

    neg-int v2, v2

    int-to-float v2, v2

    iput v2, p0, mAnimatedAcceleration:F

    .line 546
    cmpl-float v2, p2, v4

    if-lez v2, :cond_33

    .line 547
    iput v4, p0, mAnimatedVelocity:F

    goto :goto_33
.end method

.method private prepareContent()V
    .registers 11

    .prologue
    const/4 v9, 0x0

    const/high16 v8, 0x40000000    # 2.0f

    .line 653
    iget-boolean v5, p0, mAnimating:Z

    if-eqz v5, :cond_8

    .line 684
    :goto_7
    return-void

    .line 659
    :cond_8
    iget-object v2, p0, mContent:Landroid/view/View;

    .line 660
    .local v2, "content":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->isLayoutRequested()Z

    move-result v5

    if-eqz v5, :cond_42

    .line 661
    iget-boolean v5, p0, mVertical:Z

    if-eqz v5, :cond_58

    .line 662
    iget v0, p0, mHandleHeight:I

    .line 663
    .local v0, "childHeight":I
    iget v5, p0, mBottom:I

    iget v6, p0, mTop:I

    sub-int/2addr v5, v6

    sub-int/2addr v5, v0

    iget v6, p0, mTopOffset:I

    sub-int v3, v5, v6

    .line 664
    .local v3, "height":I
    iget v5, p0, mRight:I

    iget v6, p0, mLeft:I

    sub-int/2addr v5, v6

    invoke-static {v5, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    invoke-static {v3, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    invoke-virtual {v2, v5, v6}, Landroid/view/View;->measure(II)V

    .line 666
    iget v5, p0, mTopOffset:I

    add-int/2addr v5, v0

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    iget v7, p0, mTopOffset:I

    add-int/2addr v7, v0

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    add-int/2addr v7, v8

    invoke-virtual {v2, v9, v5, v6, v7}, Landroid/view/View;->layout(IIII)V

    .line 680
    .end local v0    # "childHeight":I
    .end local v3    # "height":I
    :cond_42
    :goto_42
    invoke-virtual {v2}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/ViewTreeObserver;->dispatchOnPreDraw()Z

    .line 681
    invoke-virtual {v2}, Landroid/view/View;->isHardwareAccelerated()Z

    move-result v5

    if-nez v5, :cond_52

    invoke-virtual {v2}, Landroid/view/View;->buildDrawingCache()V

    .line 683
    :cond_52
    const/16 v5, 0x8

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_7

    .line 669
    :cond_58
    iget-object v5, p0, mHandle:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    move-result v1

    .line 670
    .local v1, "childWidth":I
    iget v5, p0, mRight:I

    iget v6, p0, mLeft:I

    sub-int/2addr v5, v6

    sub-int/2addr v5, v1

    iget v6, p0, mTopOffset:I

    sub-int v4, v5, v6

    .line 671
    .local v4, "width":I
    invoke-static {v4, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    iget v6, p0, mBottom:I

    iget v7, p0, mTop:I

    sub-int/2addr v6, v7

    invoke-static {v6, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    invoke-virtual {v2, v5, v6}, Landroid/view/View;->measure(II)V

    .line 673
    iget v5, p0, mTopOffset:I

    add-int/2addr v5, v1

    iget v6, p0, mTopOffset:I

    add-int/2addr v6, v1

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    add-int/2addr v6, v7

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    invoke-virtual {v2, v5, v9, v6, v7}, Landroid/view/View;->layout(IIII)V

    goto :goto_42
.end method

.method private prepareTracking(I)V
    .registers 10
    .param p1, "position"    # I

    .prologue
    const/16 v7, 0x3e8

    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 562
    iput-boolean v4, p0, mTracking:Z

    .line 563
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v5

    iput-object v5, p0, mVelocityTracker:Landroid/view/VelocityTracker;

    .line 564
    iget-boolean v5, p0, mExpanded:Z

    if-nez v5, :cond_49

    move v2, v4

    .line 565
    .local v2, "opening":Z
    :goto_11
    if-eqz v2, :cond_53

    .line 566
    iget v3, p0, mMaximumAcceleration:I

    int-to-float v3, v3

    iput v3, p0, mAnimatedAcceleration:F

    .line 567
    iget v3, p0, mMaximumMajorVelocity:I

    int-to-float v3, v3

    iput v3, p0, mAnimatedVelocity:F

    .line 568
    iget v5, p0, mBottomOffset:I

    iget-boolean v3, p0, mVertical:Z

    if-eqz v3, :cond_4b

    invoke-virtual {p0}, getHeight()I

    move-result v3

    iget v6, p0, mHandleHeight:I

    sub-int/2addr v3, v6

    :goto_2a
    add-int/2addr v3, v5

    int-to-float v3, v3

    iput v3, p0, mAnimationPosition:F

    .line 570
    iget v3, p0, mAnimationPosition:F

    float-to-int v3, v3

    invoke-direct {p0, v3}, moveHandle(I)V

    .line 571
    iput-boolean v4, p0, mAnimating:Z

    .line 572
    iget-object v3, p0, mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v7}, Landroid/os/Handler;->removeMessages(I)V

    .line 573
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 574
    .local v0, "now":J
    iput-wide v0, p0, mAnimationLastTime:J

    .line 575
    const-wide/16 v6, 0x10

    add-long/2addr v6, v0

    iput-wide v6, p0, mCurrentAnimationTime:J

    .line 576
    iput-boolean v4, p0, mAnimating:Z

    .line 584
    .end local v0    # "now":J
    :goto_48
    return-void

    .end local v2    # "opening":Z
    :cond_49
    move v2, v3

    .line 564
    goto :goto_11

    .line 568
    .restart local v2    # "opening":Z
    :cond_4b
    invoke-virtual {p0}, getWidth()I

    move-result v3

    iget v6, p0, mHandleWidth:I

    sub-int/2addr v3, v6

    goto :goto_2a

    .line 578
    :cond_53
    iget-boolean v4, p0, mAnimating:Z

    if-eqz v4, :cond_5e

    .line 579
    iput-boolean v3, p0, mAnimating:Z

    .line 580
    iget-object v3, p0, mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v7}, Landroid/os/Handler;->removeMessages(I)V

    .line 582
    :cond_5e
    invoke-direct {p0, p1}, moveHandle(I)V

    goto :goto_48
.end method

.method private stopTracking()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 687
    iget-object v0, p0, mHandle:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setPressed(Z)V

    .line 688
    iput-boolean v1, p0, mTracking:Z

    .line 690
    iget-object v0, p0, mOnDrawerScrollListener:Landroid/widget/SlidingDrawer$OnDrawerScrollListener;

    if-eqz v0, :cond_11

    .line 691
    iget-object v0, p0, mOnDrawerScrollListener:Landroid/widget/SlidingDrawer$OnDrawerScrollListener;

    invoke-interface {v0}, Landroid/widget/SlidingDrawer$OnDrawerScrollListener;->onScrollEnded()V

    .line 694
    :cond_11
    iget-object v0, p0, mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_1d

    .line 695
    iget-object v0, p0, mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 696
    const/4 v0, 0x0

    iput-object v0, p0, mVelocityTracker:Landroid/view/VelocityTracker;

    .line 698
    :cond_1d
    return-void
.end method


# virtual methods
.method public animateClose()V
    .registers 3

    .prologue
    .line 803
    invoke-direct {p0}, prepareContent()V

    .line 804
    iget-object v0, p0, mOnDrawerScrollListener:Landroid/widget/SlidingDrawer$OnDrawerScrollListener;

    .line 805
    .local v0, "scrollListener":Landroid/widget/SlidingDrawer$OnDrawerScrollListener;
    if-eqz v0, :cond_a

    .line 806
    invoke-interface {v0}, Landroid/widget/SlidingDrawer$OnDrawerScrollListener;->onScrollStarted()V

    .line 808
    :cond_a
    iget-boolean v1, p0, mVertical:Z

    if-eqz v1, :cond_1d

    iget-object v1, p0, mHandle:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    :goto_14
    invoke-direct {p0, v1}, animateClose(I)V

    .line 810
    if-eqz v0, :cond_1c

    .line 811
    invoke-interface {v0}, Landroid/widget/SlidingDrawer$OnDrawerScrollListener;->onScrollEnded()V

    .line 813
    :cond_1c
    return-void

    .line 808
    :cond_1d
    iget-object v1, p0, mHandle:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v1

    goto :goto_14
.end method

.method public animateOpen()V
    .registers 3

    .prologue
    .line 825
    invoke-direct {p0}, prepareContent()V

    .line 826
    iget-object v0, p0, mOnDrawerScrollListener:Landroid/widget/SlidingDrawer$OnDrawerScrollListener;

    .line 827
    .local v0, "scrollListener":Landroid/widget/SlidingDrawer$OnDrawerScrollListener;
    if-eqz v0, :cond_a

    .line 828
    invoke-interface {v0}, Landroid/widget/SlidingDrawer$OnDrawerScrollListener;->onScrollStarted()V

    .line 830
    :cond_a
    iget-boolean v1, p0, mVertical:Z

    if-eqz v1, :cond_22

    iget-object v1, p0, mHandle:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    :goto_14
    invoke-direct {p0, v1}, animateOpen(I)V

    .line 832
    const/16 v1, 0x20

    invoke-virtual {p0, v1}, sendAccessibilityEvent(I)V

    .line 834
    if-eqz v0, :cond_21

    .line 835
    invoke-interface {v0}, Landroid/widget/SlidingDrawer$OnDrawerScrollListener;->onScrollEnded()V

    .line 837
    :cond_21
    return-void

    .line 830
    :cond_22
    iget-object v1, p0, mHandle:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v1

    goto :goto_14
.end method

.method public animateToggle()V
    .registers 2

    .prologue
    .line 758
    iget-boolean v0, p0, mExpanded:Z

    if-nez v0, :cond_8

    .line 759
    invoke-virtual {p0}, animateOpen()V

    .line 763
    :goto_7
    return-void

    .line 761
    :cond_8
    invoke-virtual {p0}, animateClose()V

    goto :goto_7
.end method

.method public close()V
    .registers 1

    .prologue
    .line 788
    invoke-direct {p0}, closeDrawer()V

    .line 789
    invoke-virtual {p0}, invalidate()V

    .line 790
    invoke-virtual {p0}, requestLayout()V

    .line 791
    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .registers 10
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v7, 0x0

    const/4 v5, 0x0

    .line 308
    invoke-virtual {p0}, getDrawingTime()J

    move-result-wide v2

    .line 309
    .local v2, "drawingTime":J
    iget-object v1, p0, mHandle:Landroid/view/View;

    .line 310
    .local v1, "handle":Landroid/view/View;
    iget-boolean v4, p0, mVertical:Z

    .line 312
    .local v4, "isVertical":Z
    invoke-virtual {p0, p1, v1, v2, v3}, drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    .line 314
    iget-boolean v6, p0, mTracking:Z

    if-nez v6, :cond_15

    iget-boolean v6, p0, mAnimating:Z

    if-eqz v6, :cond_56

    .line 315
    :cond_15
    iget-object v6, p0, mContent:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 316
    .local v0, "cache":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_31

    .line 317
    if-eqz v4, :cond_28

    .line 318
    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {p1, v0, v5, v6, v7}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 332
    .end local v0    # "cache":Landroid/graphics/Bitmap;
    :cond_27
    :goto_27
    return-void

    .line 320
    .restart local v0    # "cache":Landroid/graphics/Bitmap;
    :cond_28
    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {p1, v0, v6, v5, v7}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_27

    .line 323
    :cond_31
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 324
    if-eqz v4, :cond_4d

    move v6, v5

    :goto_37
    if-eqz v4, :cond_41

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v5

    iget v7, p0, mTopOffset:I

    sub-int/2addr v5, v7

    int-to-float v5, v5

    :cond_41
    invoke-virtual {p1, v6, v5}, Landroid/graphics/Canvas;->translate(FF)V

    .line 326
    iget-object v5, p0, mContent:Landroid/view/View;

    invoke-virtual {p0, p1, v5, v2, v3}, drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    .line 327
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_27

    .line 324
    :cond_4d
    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v6

    iget v7, p0, mTopOffset:I

    sub-int/2addr v6, v7

    int-to-float v6, v6

    goto :goto_37

    .line 329
    .end local v0    # "cache":Landroid/graphics/Bitmap;
    :cond_56
    iget-boolean v5, p0, mExpanded:Z

    if-eqz v5, :cond_27

    .line 330
    iget-object v5, p0, mContent:Landroid/view/View;

    invoke-virtual {p0, p1, v5, v2, v3}, drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    goto :goto_27
.end method

.method public getAccessibilityClassName()Ljava/lang/CharSequence;
    .registers 2

    .prologue
    .line 841
    const-class v0, Landroid/widget/SlidingDrawer;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getContent()Landroid/view/View;
    .registers 2

    .prologue
    .line 921
    iget-object v0, p0, mContent:Landroid/view/View;

    return-object v0
.end method

.method public getHandle()Landroid/view/View;
    .registers 2

    .prologue
    .line 911
    iget-object v0, p0, mHandle:Landroid/view/View;

    return-object v0
.end method

.method public isMoving()Z
    .registers 2

    .prologue
    .line 957
    iget-boolean v0, p0, mTracking:Z

    if-nez v0, :cond_8

    iget-boolean v0, p0, mAnimating:Z

    if-eqz v0, :cond_a

    :cond_8
    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public isOpened()Z
    .registers 2

    .prologue
    .line 948
    iget-boolean v0, p0, mExpanded:Z

    return v0
.end method

.method public lock()V
    .registers 2

    .prologue
    .line 939
    const/4 v0, 0x1

    iput-boolean v0, p0, mLocked:Z

    .line 940
    return-void
.end method

.method protected onFinishInflate()V
    .registers 4

    .prologue
    .line 263
    iget v0, p0, mHandleId:I

    invoke-virtual {p0, v0}, findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, mHandle:Landroid/view/View;

    .line 264
    iget-object v0, p0, mHandle:Landroid/view/View;

    if-nez v0, :cond_14

    .line 265
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The handle attribute is must refer to an existing child."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 268
    :cond_14
    iget-object v0, p0, mHandle:Landroid/view/View;

    new-instance v1, Landroid/widget/SlidingDrawer$DrawerToggler;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Landroid/widget/SlidingDrawer$DrawerToggler;-><init>(Landroid/widget/SlidingDrawer;Landroid/widget/SlidingDrawer$1;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 270
    iget v0, p0, mContentId:I

    invoke-virtual {p0, v0}, findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, mContent:Landroid/view/View;

    .line 271
    iget-object v0, p0, mContent:Landroid/view/View;

    if-nez v0, :cond_33

    .line 272
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The content attribute is must refer to an existing child."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 275
    :cond_33
    iget-object v0, p0, mContent:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 276
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 13
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v7, 0x0

    const/4 v8, 0x1

    .line 375
    iget-boolean v9, p0, mLocked:Z

    if-eqz v9, :cond_7

    .line 416
    :cond_6
    :goto_6
    return v7

    .line 379
    :cond_7
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 381
    .local v0, "action":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    .line 382
    .local v5, "x":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    .line 384
    .local v6, "y":F
    iget-object v1, p0, mFrame:Landroid/graphics/Rect;

    .line 385
    .local v1, "frame":Landroid/graphics/Rect;
    iget-object v2, p0, mHandle:Landroid/view/View;

    .line 387
    .local v2, "handle":Landroid/view/View;
    invoke-virtual {v2, v1}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 388
    iget-boolean v9, p0, mTracking:Z

    if-nez v9, :cond_26

    float-to-int v9, v5

    float-to-int v10, v6

    invoke-virtual {v1, v9, v10}, Landroid/graphics/Rect;->contains(II)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 392
    :cond_26
    if-nez v0, :cond_4f

    .line 393
    iput-boolean v8, p0, mTracking:Z

    .line 395
    invoke-virtual {v2, v8}, Landroid/view/View;->setPressed(Z)V

    .line 397
    invoke-direct {p0}, prepareContent()V

    .line 400
    iget-object v7, p0, mOnDrawerScrollListener:Landroid/widget/SlidingDrawer$OnDrawerScrollListener;

    if-eqz v7, :cond_39

    .line 401
    iget-object v7, p0, mOnDrawerScrollListener:Landroid/widget/SlidingDrawer$OnDrawerScrollListener;

    invoke-interface {v7}, Landroid/widget/SlidingDrawer$OnDrawerScrollListener;->onScrollStarted()V

    .line 404
    :cond_39
    iget-boolean v7, p0, mVertical:Z

    if-eqz v7, :cond_51

    .line 405
    iget-object v7, p0, mHandle:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v4

    .line 406
    .local v4, "top":I
    float-to-int v7, v6

    sub-int/2addr v7, v4

    iput v7, p0, mTouchDelta:I

    .line 407
    invoke-direct {p0, v4}, prepareTracking(I)V

    .line 413
    .end local v4    # "top":I
    :goto_4a
    iget-object v7, p0, mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v7, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    :cond_4f
    move v7, v8

    .line 416
    goto :goto_6

    .line 409
    :cond_51
    iget-object v7, p0, mHandle:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getLeft()I

    move-result v3

    .line 410
    .local v3, "left":I
    float-to-int v7, v5

    sub-int/2addr v7, v3

    iput v7, p0, mTouchDelta:I

    .line 411
    invoke-direct {p0, v3}, prepareTracking(I)V

    goto :goto_4a
.end method

.method protected onLayout(ZIIII)V
    .registers 19
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    .line 336
    iget-boolean v8, p0, mTracking:Z

    if-eqz v8, :cond_5

    .line 371
    :goto_4
    return-void

    .line 340
    :cond_5
    sub-int v7, p4, p2

    .line 341
    .local v7, "width":I
    sub-int v6, p5, p3

    .line 343
    .local v6, "height":I
    iget-object v5, p0, mHandle:Landroid/view/View;

    .line 345
    .local v5, "handle":Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    .line 346
    .local v3, "childWidth":I
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    .line 351
    .local v0, "childHeight":I
    iget-object v4, p0, mContent:Landroid/view/View;

    .line 353
    .local v4, "content":Landroid/view/View;
    iget-boolean v8, p0, mVertical:Z

    if-eqz v8, :cond_51

    .line 354
    sub-int v8, v7, v3

    div-int/lit8 v1, v8, 0x2

    .line 355
    .local v1, "childLeft":I
    iget-boolean v8, p0, mExpanded:Z

    if-eqz v8, :cond_4a

    iget v2, p0, mTopOffset:I

    .line 357
    .local v2, "childTop":I
    :goto_23
    const/4 v8, 0x0

    iget v9, p0, mTopOffset:I

    add-int/2addr v9, v0

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v10

    iget v11, p0, mTopOffset:I

    add-int/2addr v11, v0

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v12

    add-int/2addr v11, v12

    invoke-virtual {v4, v8, v9, v10, v11}, Landroid/view/View;->layout(IIII)V

    .line 368
    :goto_36
    add-int v8, v1, v3

    add-int v9, v2, v0

    invoke-virtual {v5, v1, v2, v8, v9}, Landroid/view/View;->layout(IIII)V

    .line 369
    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v8

    iput v8, p0, mHandleHeight:I

    .line 370
    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    move-result v8

    iput v8, p0, mHandleWidth:I

    goto :goto_4

    .line 355
    .end local v2    # "childTop":I
    :cond_4a
    sub-int v8, v6, v0

    iget v9, p0, mBottomOffset:I

    add-int v2, v8, v9

    goto :goto_23

    .line 360
    .end local v1    # "childLeft":I
    :cond_51
    iget-boolean v8, p0, mExpanded:Z

    if-eqz v8, :cond_6f

    iget v1, p0, mTopOffset:I

    .line 361
    .restart local v1    # "childLeft":I
    :goto_57
    sub-int v8, v6, v0

    div-int/lit8 v2, v8, 0x2

    .line 363
    .restart local v2    # "childTop":I
    iget v8, p0, mTopOffset:I

    add-int/2addr v8, v3

    const/4 v9, 0x0

    iget v10, p0, mTopOffset:I

    add-int/2addr v10, v3

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v11

    add-int/2addr v10, v11

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v11

    invoke-virtual {v4, v8, v9, v10, v11}, Landroid/view/View;->layout(IIII)V

    goto :goto_36

    .line 360
    .end local v1    # "childLeft":I
    .end local v2    # "childTop":I
    :cond_6f
    sub-int v8, v7, v3

    iget v9, p0, mBottomOffset:I

    add-int v1, v8, v9

    goto :goto_57
.end method

.method protected onMeasure(II)V
    .registers 13
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/high16 v9, 0x40000000    # 2.0f

    .line 280
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v5

    .line 281
    .local v5, "widthSpecMode":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v6

    .line 283
    .local v6, "widthSpecSize":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    .line 284
    .local v2, "heightSpecMode":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    .line 286
    .local v3, "heightSpecSize":I
    if-eqz v5, :cond_16

    if-nez v2, :cond_1e

    .line 287
    :cond_16
    new-instance v7, Ljava/lang/RuntimeException;

    const-string v8, "SlidingDrawer cannot have UNSPECIFIED dimensions"

    invoke-direct {v7, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 290
    :cond_1e
    iget-object v0, p0, mHandle:Landroid/view/View;

    .line 291
    .local v0, "handle":Landroid/view/View;
    invoke-virtual {p0, v0, p1, p2}, measureChild(Landroid/view/View;II)V

    .line 293
    iget-boolean v7, p0, mVertical:Z

    if-eqz v7, :cond_42

    .line 294
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    sub-int v7, v3, v7

    iget v8, p0, mTopOffset:I

    sub-int v1, v7, v8

    .line 295
    .local v1, "height":I
    iget-object v7, p0, mContent:Landroid/view/View;

    invoke-static {v6, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    invoke-static {v1, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v9

    invoke-virtual {v7, v8, v9}, Landroid/view/View;->measure(II)V

    .line 303
    .end local v1    # "height":I
    :goto_3e
    invoke-virtual {p0, v6, v3}, setMeasuredDimension(II)V

    .line 304
    return-void

    .line 298
    :cond_42
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    sub-int v7, v6, v7

    iget v8, p0, mTopOffset:I

    sub-int v4, v7, v8

    .line 299
    .local v4, "width":I
    iget-object v7, p0, mContent:Landroid/view/View;

    invoke-static {v4, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    invoke-static {v3, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v9

    invoke-virtual {v7, v8, v9}, Landroid/view/View;->measure(II)V

    goto :goto_3e
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 16
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 421
    iget-boolean v9, p0, mLocked:Z

    if-eqz v9, :cond_6

    .line 422
    const/4 v9, 0x1

    .line 499
    :goto_5
    return v9

    .line 425
    :cond_6
    iget-boolean v9, p0, mTracking:Z

    if-eqz v9, :cond_16

    .line 426
    iget-object v9, p0, mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v9, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 427
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 428
    .local v0, "action":I
    packed-switch v0, :pswitch_data_120

    .line 499
    .end local v0    # "action":I
    :cond_16
    :goto_16
    iget-boolean v9, p0, mTracking:Z

    if-nez v9, :cond_24

    iget-boolean v9, p0, mAnimating:Z

    if-nez v9, :cond_24

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v9

    if-eqz v9, :cond_11c

    :cond_24
    const/4 v9, 0x1

    goto :goto_5

    .line 430
    .restart local v0    # "action":I
    :pswitch_26
    iget-boolean v9, p0, mVertical:Z

    if-eqz v9, :cond_36

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v9

    :goto_2e
    float-to-int v9, v9

    iget v10, p0, mTouchDelta:I

    sub-int/2addr v9, v10

    invoke-direct {p0, v9}, moveHandle(I)V

    goto :goto_16

    :cond_36
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v9

    goto :goto_2e

    .line 434
    :pswitch_3b
    iget-object v5, p0, mVelocityTracker:Landroid/view/VelocityTracker;

    .line 435
    .local v5, "velocityTracker":Landroid/view/VelocityTracker;
    iget v9, p0, mVelocityUnits:I

    invoke-virtual {v5, v9}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 437
    invoke-virtual {v5}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v8

    .line 438
    .local v8, "yVelocity":F
    invoke-virtual {v5}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v7

    .line 441
    .local v7, "xVelocity":F
    iget-boolean v6, p0, mVertical:Z

    .line 442
    .local v6, "vertical":Z
    if-eqz v6, :cond_bb

    .line 443
    const/4 v9, 0x0

    cmpg-float v9, v8, v9

    if-gez v9, :cond_b9

    const/4 v2, 0x1

    .line 444
    .local v2, "negative":Z
    :goto_54
    const/4 v9, 0x0

    cmpg-float v9, v7, v9

    if-gez v9, :cond_5a

    .line 445
    neg-float v7, v7

    .line 447
    :cond_5a
    iget v9, p0, mMaximumMinorVelocity:I

    int-to-float v9, v9

    cmpl-float v9, v7, v9

    if-lez v9, :cond_64

    .line 448
    iget v9, p0, mMaximumMinorVelocity:I

    int-to-float v7, v9

    .line 460
    :cond_64
    :goto_64
    float-to-double v10, v7

    float-to-double v12, v8

    invoke-static {v10, v11, v12, v13}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v10

    double-to-float v4, v10

    .line 461
    .local v4, "velocity":F
    if-eqz v2, :cond_6e

    .line 462
    neg-float v4, v4

    .line 465
    :cond_6e
    iget-object v9, p0, mHandle:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getTop()I

    move-result v3

    .line 466
    .local v3, "top":I
    iget-object v9, p0, mHandle:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getLeft()I

    move-result v1

    .line 468
    .local v1, "left":I
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v9

    iget v10, p0, mMaximumTapVelocity:I

    int-to-float v10, v10

    cmpg-float v9, v9, v10

    if-gez v9, :cond_112

    .line 469
    if-eqz v6, :cond_d4

    iget-boolean v9, p0, mExpanded:Z

    if-eqz v9, :cond_92

    iget v9, p0, mTapThreshold:I

    iget v10, p0, mTopOffset:I

    add-int/2addr v9, v10

    if-lt v3, v9, :cond_a6

    :cond_92
    iget-boolean v9, p0, mExpanded:Z

    if-nez v9, :cond_f3

    iget v9, p0, mBottomOffset:I

    iget v10, p0, mBottom:I

    add-int/2addr v9, v10

    iget v10, p0, mTop:I

    sub-int/2addr v9, v10

    iget v10, p0, mHandleHeight:I

    sub-int/2addr v9, v10

    iget v10, p0, mTapThreshold:I

    sub-int/2addr v9, v10

    if-le v3, v9, :cond_f3

    .line 476
    :cond_a6
    iget-boolean v9, p0, mAllowSingleTap:Z

    if-eqz v9, :cond_106

    .line 477
    const/4 v9, 0x0

    invoke-virtual {p0, v9}, playSoundEffect(I)V

    .line 479
    iget-boolean v9, p0, mExpanded:Z

    if-eqz v9, :cond_fd

    .line 480
    if-eqz v6, :cond_fb

    .end local v3    # "top":I
    :goto_b4
    invoke-direct {p0, v3}, animateClose(I)V

    goto/16 :goto_16

    .line 443
    .end local v1    # "left":I
    .end local v2    # "negative":Z
    .end local v4    # "velocity":F
    :cond_b9
    const/4 v2, 0x0

    goto :goto_54

    .line 451
    :cond_bb
    const/4 v9, 0x0

    cmpg-float v9, v7, v9

    if-gez v9, :cond_d2

    const/4 v2, 0x1

    .line 452
    .restart local v2    # "negative":Z
    :goto_c1
    const/4 v9, 0x0

    cmpg-float v9, v8, v9

    if-gez v9, :cond_c7

    .line 453
    neg-float v8, v8

    .line 455
    :cond_c7
    iget v9, p0, mMaximumMinorVelocity:I

    int-to-float v9, v9

    cmpl-float v9, v8, v9

    if-lez v9, :cond_64

    .line 456
    iget v9, p0, mMaximumMinorVelocity:I

    int-to-float v8, v9

    goto :goto_64

    .line 451
    .end local v2    # "negative":Z
    :cond_d2
    const/4 v2, 0x0

    goto :goto_c1

    .line 469
    .restart local v1    # "left":I
    .restart local v2    # "negative":Z
    .restart local v3    # "top":I
    .restart local v4    # "velocity":F
    :cond_d4
    iget-boolean v9, p0, mExpanded:Z

    if-eqz v9, :cond_df

    iget v9, p0, mTapThreshold:I

    iget v10, p0, mTopOffset:I

    add-int/2addr v9, v10

    if-lt v1, v9, :cond_a6

    :cond_df
    iget-boolean v9, p0, mExpanded:Z

    if-nez v9, :cond_f3

    iget v9, p0, mBottomOffset:I

    iget v10, p0, mRight:I

    add-int/2addr v9, v10

    iget v10, p0, mLeft:I

    sub-int/2addr v9, v10

    iget v10, p0, mHandleWidth:I

    sub-int/2addr v9, v10

    iget v10, p0, mTapThreshold:I

    sub-int/2addr v9, v10

    if-gt v1, v9, :cond_a6

    .line 489
    :cond_f3
    if-eqz v6, :cond_110

    .end local v3    # "top":I
    :goto_f5
    const/4 v9, 0x0

    invoke-direct {p0, v3, v4, v9}, performFling(IFZ)V

    goto/16 :goto_16

    .restart local v3    # "top":I
    :cond_fb
    move v3, v1

    .line 480
    goto :goto_b4

    .line 482
    :cond_fd
    if-eqz v6, :cond_104

    .end local v3    # "top":I
    :goto_ff
    invoke-direct {p0, v3}, animateOpen(I)V

    goto/16 :goto_16

    .restart local v3    # "top":I
    :cond_104
    move v3, v1

    goto :goto_ff

    .line 485
    :cond_106
    if-eqz v6, :cond_10e

    .end local v3    # "top":I
    :goto_108
    const/4 v9, 0x0

    invoke-direct {p0, v3, v4, v9}, performFling(IFZ)V

    goto/16 :goto_16

    .restart local v3    # "top":I
    :cond_10e
    move v3, v1

    goto :goto_108

    :cond_110
    move v3, v1

    .line 489
    goto :goto_f5

    .line 492
    :cond_112
    if-eqz v6, :cond_11a

    .end local v3    # "top":I
    :goto_114
    const/4 v9, 0x0

    invoke-direct {p0, v3, v4, v9}, performFling(IFZ)V

    goto/16 :goto_16

    .restart local v3    # "top":I
    :cond_11a
    move v3, v1

    goto :goto_114

    .line 499
    .end local v0    # "action":I
    .end local v1    # "left":I
    .end local v2    # "negative":Z
    .end local v3    # "top":I
    .end local v4    # "velocity":F
    .end local v5    # "velocityTracker":Landroid/view/VelocityTracker;
    .end local v6    # "vertical":Z
    .end local v7    # "xVelocity":F
    .end local v8    # "yVelocity":F
    :cond_11c
    const/4 v9, 0x0

    goto/16 :goto_5

    .line 428
    nop

    :pswitch_data_120
    .packed-switch 0x1
        :pswitch_3b
        :pswitch_26
        :pswitch_3b
    .end packed-switch
.end method

.method public open()V
    .registers 2

    .prologue
    .line 773
    invoke-direct {p0}, openDrawer()V

    .line 774
    invoke-virtual {p0}, invalidate()V

    .line 775
    invoke-virtual {p0}, requestLayout()V

    .line 777
    const/16 v0, 0x20

    invoke-virtual {p0, v0}, sendAccessibilityEvent(I)V

    .line 778
    return-void
.end method

.method public setOnDrawerCloseListener(Landroid/widget/SlidingDrawer$OnDrawerCloseListener;)V
    .registers 2
    .param p1, "onDrawerCloseListener"    # Landroid/widget/SlidingDrawer$OnDrawerCloseListener;

    .prologue
    .line 889
    iput-object p1, p0, mOnDrawerCloseListener:Landroid/widget/SlidingDrawer$OnDrawerCloseListener;

    .line 890
    return-void
.end method

.method public setOnDrawerOpenListener(Landroid/widget/SlidingDrawer$OnDrawerOpenListener;)V
    .registers 2
    .param p1, "onDrawerOpenListener"    # Landroid/widget/SlidingDrawer$OnDrawerOpenListener;

    .prologue
    .line 880
    iput-object p1, p0, mOnDrawerOpenListener:Landroid/widget/SlidingDrawer$OnDrawerOpenListener;

    .line 881
    return-void
.end method

.method public setOnDrawerScrollListener(Landroid/widget/SlidingDrawer$OnDrawerScrollListener;)V
    .registers 2
    .param p1, "onDrawerScrollListener"    # Landroid/widget/SlidingDrawer$OnDrawerScrollListener;

    .prologue
    .line 901
    iput-object p1, p0, mOnDrawerScrollListener:Landroid/widget/SlidingDrawer$OnDrawerScrollListener;

    .line 902
    return-void
.end method

.method public toggle()V
    .registers 2

    .prologue
    .line 739
    iget-boolean v0, p0, mExpanded:Z

    if-nez v0, :cond_e

    .line 740
    invoke-direct {p0}, openDrawer()V

    .line 744
    :goto_7
    invoke-virtual {p0}, invalidate()V

    .line 745
    invoke-virtual {p0}, requestLayout()V

    .line 746
    return-void

    .line 742
    :cond_e
    invoke-direct {p0}, closeDrawer()V

    goto :goto_7
.end method

.method public unlock()V
    .registers 2

    .prologue
    .line 930
    const/4 v0, 0x0

    iput-boolean v0, p0, mLocked:Z

    .line 931
    return-void
.end method
