.class public Landroid/widget/OverScroller;
.super Ljava/lang/Object;
.source "OverScroller.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/OverScroller$SplineOverScroller;
    }
.end annotation


# static fields
.field private static final DEFAULT_DURATION:I = 0xfa

.field private static final FLING_MODE:I = 0x1

.field private static final SCROLL_MODE:I


# instance fields
.field private final mFlywheel:Z

.field private mInterpolator:Landroid/view/animation/Interpolator;

.field private mMode:I

.field private final mScrollerX:Landroid/widget/OverScroller$SplineOverScroller;

.field private final mScrollerY:Landroid/widget/OverScroller$SplineOverScroller;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 53
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, <init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    .line 54
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "interpolator"    # Landroid/view/animation/Interpolator;

    .prologue
    .line 63
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, <init>(Landroid/content/Context;Landroid/view/animation/Interpolator;Z)V

    .line 64
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/animation/Interpolator;FF)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "interpolator"    # Landroid/view/animation/Interpolator;
    .param p3, "bounceCoefficientX"    # F
    .param p4, "bounceCoefficientY"    # F

    .prologue
    .line 99
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, <init>(Landroid/content/Context;Landroid/view/animation/Interpolator;Z)V

    .line 100
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/animation/Interpolator;FFZ)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "interpolator"    # Landroid/view/animation/Interpolator;
    .param p3, "bounceCoefficientX"    # F
    .param p4, "bounceCoefficientY"    # F
    .param p5, "flywheel"    # Z

    .prologue
    .line 117
    invoke-direct {p0, p1, p2, p5}, <init>(Landroid/content/Context;Landroid/view/animation/Interpolator;Z)V

    .line 118
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/animation/Interpolator;Z)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "interpolator"    # Landroid/view/animation/Interpolator;
    .param p3, "flywheel"    # Z

    .prologue
    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    if-nez p2, :cond_1d

    .line 76
    new-instance v0, Landroid/widget/Scroller$ViscousFluidInterpolator;

    invoke-direct {v0}, Landroid/widget/Scroller$ViscousFluidInterpolator;-><init>()V

    iput-object v0, p0, mInterpolator:Landroid/view/animation/Interpolator;

    .line 80
    :goto_c
    iput-boolean p3, p0, mFlywheel:Z

    .line 81
    new-instance v0, Landroid/widget/OverScroller$SplineOverScroller;

    invoke-direct {v0, p1}, Landroid/widget/OverScroller$SplineOverScroller;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, mScrollerX:Landroid/widget/OverScroller$SplineOverScroller;

    .line 82
    new-instance v0, Landroid/widget/OverScroller$SplineOverScroller;

    invoke-direct {v0, p1}, Landroid/widget/OverScroller$SplineOverScroller;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, mScrollerY:Landroid/widget/OverScroller$SplineOverScroller;

    .line 83
    return-void

    .line 78
    :cond_1d
    iput-object p2, p0, mInterpolator:Landroid/view/animation/Interpolator;

    goto :goto_c
.end method


# virtual methods
.method public abortAnimation()V
    .registers 2

    .prologue
    .line 540
    iget-object v0, p0, mScrollerX:Landroid/widget/OverScroller$SplineOverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller$SplineOverScroller;->finish()V

    .line 541
    iget-object v0, p0, mScrollerY:Landroid/widget/OverScroller$SplineOverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller$SplineOverScroller;->finish()V

    .line 542
    return-void
.end method

.method public computeScrollOffset()Z
    .registers 10

    .prologue
    .line 300
    invoke-virtual {p0}, isFinished()Z

    move-result v6

    if-eqz v6, :cond_8

    .line 301
    const/4 v6, 0x0

    .line 341
    :goto_7
    return v6

    .line 304
    :cond_8
    iget v6, p0, mMode:I

    packed-switch v6, :pswitch_data_7a

    .line 341
    :cond_d
    :goto_d
    const/4 v6, 0x1

    goto :goto_7

    .line 306
    :pswitch_f
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v4

    .line 309
    .local v4, "time":J
    iget-object v6, p0, mScrollerX:Landroid/widget/OverScroller$SplineOverScroller;

    # getter for: Landroid/widget/OverScroller$SplineOverScroller;->mStartTime:J
    invoke-static {v6}, Landroid/widget/OverScroller$SplineOverScroller;->access$600(Landroid/widget/OverScroller$SplineOverScroller;)J

    move-result-wide v6

    sub-long v2, v4, v6

    .line 311
    .local v2, "elapsedTime":J
    iget-object v6, p0, mScrollerX:Landroid/widget/OverScroller$SplineOverScroller;

    # getter for: Landroid/widget/OverScroller$SplineOverScroller;->mDuration:I
    invoke-static {v6}, Landroid/widget/OverScroller$SplineOverScroller;->access$500(Landroid/widget/OverScroller$SplineOverScroller;)I

    move-result v0

    .line 312
    .local v0, "duration":I
    int-to-long v6, v0

    cmp-long v6, v2, v6

    if-gez v6, :cond_3a

    .line 313
    iget-object v6, p0, mInterpolator:Landroid/view/animation/Interpolator;

    long-to-float v7, v2

    int-to-float v8, v0

    div-float/2addr v7, v8

    invoke-interface {v6, v7}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v1

    .line 314
    .local v1, "q":F
    iget-object v6, p0, mScrollerX:Landroid/widget/OverScroller$SplineOverScroller;

    invoke-virtual {v6, v1}, Landroid/widget/OverScroller$SplineOverScroller;->updateScroll(F)V

    .line 315
    iget-object v6, p0, mScrollerY:Landroid/widget/OverScroller$SplineOverScroller;

    invoke-virtual {v6, v1}, Landroid/widget/OverScroller$SplineOverScroller;->updateScroll(F)V

    goto :goto_d

    .line 317
    .end local v1    # "q":F
    :cond_3a
    invoke-virtual {p0}, abortAnimation()V

    goto :goto_d

    .line 322
    .end local v0    # "duration":I
    .end local v2    # "elapsedTime":J
    .end local v4    # "time":J
    :pswitch_3e
    iget-object v6, p0, mScrollerX:Landroid/widget/OverScroller$SplineOverScroller;

    # getter for: Landroid/widget/OverScroller$SplineOverScroller;->mFinished:Z
    invoke-static {v6}, Landroid/widget/OverScroller$SplineOverScroller;->access$000(Landroid/widget/OverScroller$SplineOverScroller;)Z

    move-result v6

    if-nez v6, :cond_5b

    .line 323
    iget-object v6, p0, mScrollerX:Landroid/widget/OverScroller$SplineOverScroller;

    invoke-virtual {v6}, Landroid/widget/OverScroller$SplineOverScroller;->update()Z

    move-result v6

    if-nez v6, :cond_5b

    .line 324
    iget-object v6, p0, mScrollerX:Landroid/widget/OverScroller$SplineOverScroller;

    invoke-virtual {v6}, Landroid/widget/OverScroller$SplineOverScroller;->continueWhenFinished()Z

    move-result v6

    if-nez v6, :cond_5b

    .line 325
    iget-object v6, p0, mScrollerX:Landroid/widget/OverScroller$SplineOverScroller;

    invoke-virtual {v6}, Landroid/widget/OverScroller$SplineOverScroller;->finish()V

    .line 330
    :cond_5b
    iget-object v6, p0, mScrollerY:Landroid/widget/OverScroller$SplineOverScroller;

    # getter for: Landroid/widget/OverScroller$SplineOverScroller;->mFinished:Z
    invoke-static {v6}, Landroid/widget/OverScroller$SplineOverScroller;->access$000(Landroid/widget/OverScroller$SplineOverScroller;)Z

    move-result v6

    if-nez v6, :cond_d

    .line 331
    iget-object v6, p0, mScrollerY:Landroid/widget/OverScroller$SplineOverScroller;

    invoke-virtual {v6}, Landroid/widget/OverScroller$SplineOverScroller;->update()Z

    move-result v6

    if-nez v6, :cond_d

    .line 332
    iget-object v6, p0, mScrollerY:Landroid/widget/OverScroller$SplineOverScroller;

    invoke-virtual {v6}, Landroid/widget/OverScroller$SplineOverScroller;->continueWhenFinished()Z

    move-result v6

    if-nez v6, :cond_d

    .line 333
    iget-object v6, p0, mScrollerY:Landroid/widget/OverScroller$SplineOverScroller;

    invoke-virtual {v6}, Landroid/widget/OverScroller$SplineOverScroller;->finish()V

    goto :goto_d

    .line 304
    nop

    :pswitch_data_7a
    .packed-switch 0x0
        :pswitch_f
        :pswitch_3e
    .end packed-switch
.end method

.method public extendDuration(I)V
    .registers 3
    .param p1, "extend"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 255
    iget-object v0, p0, mScrollerX:Landroid/widget/OverScroller$SplineOverScroller;

    invoke-virtual {v0, p1}, Landroid/widget/OverScroller$SplineOverScroller;->extendDuration(I)V

    .line 256
    iget-object v0, p0, mScrollerY:Landroid/widget/OverScroller$SplineOverScroller;

    invoke-virtual {v0, p1}, Landroid/widget/OverScroller$SplineOverScroller;->extendDuration(I)V

    .line 257
    return-void
.end method

.method public fling(IIIIIIII)V
    .registers 20
    .param p1, "startX"    # I
    .param p2, "startY"    # I
    .param p3, "velocityX"    # I
    .param p4, "velocityY"    # I
    .param p5, "minX"    # I
    .param p6, "maxX"    # I
    .param p7, "minY"    # I
    .param p8, "maxY"    # I

    .prologue
    .line 404
    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    invoke-virtual/range {v0 .. v10}, fling(IIIIIIIIII)V

    .line 405
    return-void
.end method

.method public fling(IIIIIIIIII)V
    .registers 19
    .param p1, "startX"    # I
    .param p2, "startY"    # I
    .param p3, "velocityX"    # I
    .param p4, "velocityY"    # I
    .param p5, "minX"    # I
    .param p6, "maxX"    # I
    .param p7, "minY"    # I
    .param p8, "maxY"    # I
    .param p9, "overX"    # I
    .param p10, "overY"    # I

    .prologue
    .line 442
    iget-boolean v0, p0, mFlywheel:Z

    if-eqz v0, :cond_36

    invoke-virtual {p0}, isFinished()Z

    move-result v0

    if-nez v0, :cond_36

    .line 443
    iget-object v0, p0, mScrollerX:Landroid/widget/OverScroller$SplineOverScroller;

    # getter for: Landroid/widget/OverScroller$SplineOverScroller;->mCurrVelocity:F
    invoke-static {v0}, Landroid/widget/OverScroller$SplineOverScroller;->access$200(Landroid/widget/OverScroller$SplineOverScroller;)F

    move-result v6

    .line 444
    .local v6, "oldVelocityX":F
    iget-object v0, p0, mScrollerY:Landroid/widget/OverScroller$SplineOverScroller;

    # getter for: Landroid/widget/OverScroller$SplineOverScroller;->mCurrVelocity:F
    invoke-static {v0}, Landroid/widget/OverScroller$SplineOverScroller;->access$200(Landroid/widget/OverScroller$SplineOverScroller;)F

    move-result v7

    .line 445
    .local v7, "oldVelocityY":F
    int-to-float v0, p3

    invoke-static {v0}, Ljava/lang/Math;->signum(F)F

    move-result v0

    invoke-static {v6}, Ljava/lang/Math;->signum(F)F

    move-result v1

    cmpl-float v0, v0, v1

    if-nez v0, :cond_36

    int-to-float v0, p4

    invoke-static {v0}, Ljava/lang/Math;->signum(F)F

    move-result v0

    invoke-static {v7}, Ljava/lang/Math;->signum(F)F

    move-result v1

    cmpl-float v0, v0, v1

    if-nez v0, :cond_36

    .line 447
    int-to-float v0, p3

    add-float/2addr v0, v6

    float-to-int p3, v0

    .line 448
    int-to-float v0, p4

    add-float/2addr v0, v7

    float-to-int p4, v0

    .line 452
    .end local v6    # "oldVelocityX":F
    .end local v7    # "oldVelocityY":F
    :cond_36
    const/4 v0, 0x1

    iput v0, p0, mMode:I

    .line 453
    iget-object v0, p0, mScrollerX:Landroid/widget/OverScroller$SplineOverScroller;

    move v1, p1

    move v2, p3

    move v3, p5

    move v4, p6

    move/from16 v5, p9

    invoke-virtual/range {v0 .. v5}, Landroid/widget/OverScroller$SplineOverScroller;->fling(IIIII)V

    .line 454
    iget-object v0, p0, mScrollerY:Landroid/widget/OverScroller$SplineOverScroller;

    move v1, p2

    move v2, p4

    move v3, p7

    move/from16 v4, p8

    move/from16 v5, p10

    invoke-virtual/range {v0 .. v5}, Landroid/widget/OverScroller$SplineOverScroller;->fling(IIIII)V

    .line 455
    return-void
.end method

.method public fling(IIIIIIIIIIZ)V
    .registers 20
    .param p1, "startX"    # I
    .param p2, "startY"    # I
    .param p3, "velocityX"    # I
    .param p4, "velocityY"    # I
    .param p5, "minX"    # I
    .param p6, "maxX"    # I
    .param p7, "minY"    # I
    .param p8, "maxY"    # I
    .param p9, "overX"    # I
    .param p10, "overY"    # I
    .param p11, "accDisabled"    # Z

    .prologue
    .line 463
    iget-boolean v0, p0, mFlywheel:Z

    if-eqz v0, :cond_38

    invoke-virtual {p0}, isFinished()Z

    move-result v0

    if-nez v0, :cond_38

    if-nez p11, :cond_38

    .line 464
    iget-object v0, p0, mScrollerX:Landroid/widget/OverScroller$SplineOverScroller;

    # getter for: Landroid/widget/OverScroller$SplineOverScroller;->mCurrVelocity:F
    invoke-static {v0}, Landroid/widget/OverScroller$SplineOverScroller;->access$200(Landroid/widget/OverScroller$SplineOverScroller;)F

    move-result v6

    .line 465
    .local v6, "oldVelocityX":F
    iget-object v0, p0, mScrollerY:Landroid/widget/OverScroller$SplineOverScroller;

    # getter for: Landroid/widget/OverScroller$SplineOverScroller;->mCurrVelocity:F
    invoke-static {v0}, Landroid/widget/OverScroller$SplineOverScroller;->access$200(Landroid/widget/OverScroller$SplineOverScroller;)F

    move-result v7

    .line 466
    .local v7, "oldVelocityY":F
    int-to-float v0, p3

    invoke-static {v0}, Ljava/lang/Math;->signum(F)F

    move-result v0

    invoke-static {v6}, Ljava/lang/Math;->signum(F)F

    move-result v1

    cmpl-float v0, v0, v1

    if-nez v0, :cond_38

    int-to-float v0, p4

    invoke-static {v0}, Ljava/lang/Math;->signum(F)F

    move-result v0

    invoke-static {v7}, Ljava/lang/Math;->signum(F)F

    move-result v1

    cmpl-float v0, v0, v1

    if-nez v0, :cond_38

    .line 468
    int-to-float v0, p3

    add-float/2addr v0, v6

    float-to-int p3, v0

    .line 469
    int-to-float v0, p4

    add-float/2addr v0, v7

    float-to-int p4, v0

    .line 473
    .end local v6    # "oldVelocityX":F
    .end local v7    # "oldVelocityY":F
    :cond_38
    const/4 v0, 0x1

    iput v0, p0, mMode:I

    .line 474
    iget-object v0, p0, mScrollerX:Landroid/widget/OverScroller$SplineOverScroller;

    move v1, p1

    move v2, p3

    move v3, p5

    move v4, p6

    move/from16 v5, p9

    invoke-virtual/range {v0 .. v5}, Landroid/widget/OverScroller$SplineOverScroller;->fling(IIIII)V

    .line 475
    iget-object v0, p0, mScrollerY:Landroid/widget/OverScroller$SplineOverScroller;

    move v1, p2

    move v2, p4

    move v3, p7

    move/from16 v4, p8

    move/from16 v5, p10

    invoke-virtual/range {v0 .. v5}, Landroid/widget/OverScroller$SplineOverScroller;->fling(IIIII)V

    .line 476
    return-void
.end method

.method protected fling(IIIIIIIIZ)V
    .registers 22
    .param p1, "startX"    # I
    .param p2, "startY"    # I
    .param p3, "velocityX"    # I
    .param p4, "velocityY"    # I
    .param p5, "minX"    # I
    .param p6, "maxX"    # I
    .param p7, "minY"    # I
    .param p8, "maxY"    # I
    .param p9, "accDisabled"    # Z

    .prologue
    .line 409
    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v11, p9

    invoke-virtual/range {v0 .. v11}, fling(IIIIIIIIIIZ)V

    .line 410
    return-void
.end method

.method public final forceFinished(Z)V
    .registers 4
    .param p1, "finished"    # Z

    .prologue
    .line 159
    iget-object v0, p0, mScrollerX:Landroid/widget/OverScroller$SplineOverScroller;

    iget-object v1, p0, mScrollerY:Landroid/widget/OverScroller$SplineOverScroller;

    # setter for: Landroid/widget/OverScroller$SplineOverScroller;->mFinished:Z
    invoke-static {v1, p1}, Landroid/widget/OverScroller$SplineOverScroller;->access$002(Landroid/widget/OverScroller$SplineOverScroller;Z)Z

    move-result v1

    # setter for: Landroid/widget/OverScroller$SplineOverScroller;->mFinished:Z
    invoke-static {v0, v1}, Landroid/widget/OverScroller$SplineOverScroller;->access$002(Landroid/widget/OverScroller$SplineOverScroller;Z)Z

    .line 160
    return-void
.end method

.method public getCurrVelocity()F
    .registers 5

    .prologue
    .line 186
    iget-object v0, p0, mScrollerX:Landroid/widget/OverScroller$SplineOverScroller;

    # getter for: Landroid/widget/OverScroller$SplineOverScroller;->mCurrVelocity:F
    invoke-static {v0}, Landroid/widget/OverScroller$SplineOverScroller;->access$200(Landroid/widget/OverScroller$SplineOverScroller;)F

    move-result v0

    float-to-double v0, v0

    iget-object v2, p0, mScrollerY:Landroid/widget/OverScroller$SplineOverScroller;

    # getter for: Landroid/widget/OverScroller$SplineOverScroller;->mCurrVelocity:F
    invoke-static {v2}, Landroid/widget/OverScroller$SplineOverScroller;->access$200(Landroid/widget/OverScroller$SplineOverScroller;)F

    move-result v2

    float-to-double v2, v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method public final getCurrX()I
    .registers 2

    .prologue
    .line 168
    iget-object v0, p0, mScrollerX:Landroid/widget/OverScroller$SplineOverScroller;

    # getter for: Landroid/widget/OverScroller$SplineOverScroller;->mCurrentPosition:I
    invoke-static {v0}, Landroid/widget/OverScroller$SplineOverScroller;->access$100(Landroid/widget/OverScroller$SplineOverScroller;)I

    move-result v0

    return v0
.end method

.method public final getCurrY()I
    .registers 2

    .prologue
    .line 177
    iget-object v0, p0, mScrollerY:Landroid/widget/OverScroller$SplineOverScroller;

    # getter for: Landroid/widget/OverScroller$SplineOverScroller;->mCurrentPosition:I
    invoke-static {v0}, Landroid/widget/OverScroller$SplineOverScroller;->access$100(Landroid/widget/OverScroller$SplineOverScroller;)I

    move-result v0

    return v0
.end method

.method public final getDuration()I
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 236
    iget-object v0, p0, mScrollerX:Landroid/widget/OverScroller$SplineOverScroller;

    # getter for: Landroid/widget/OverScroller$SplineOverScroller;->mDuration:I
    invoke-static {v0}, Landroid/widget/OverScroller$SplineOverScroller;->access$500(Landroid/widget/OverScroller$SplineOverScroller;)I

    move-result v0

    iget-object v1, p0, mScrollerY:Landroid/widget/OverScroller$SplineOverScroller;

    # getter for: Landroid/widget/OverScroller$SplineOverScroller;->mDuration:I
    invoke-static {v1}, Landroid/widget/OverScroller$SplineOverScroller;->access$500(Landroid/widget/OverScroller$SplineOverScroller;)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method public final getFinalX()I
    .registers 2

    .prologue
    .line 213
    iget-object v0, p0, mScrollerX:Landroid/widget/OverScroller$SplineOverScroller;

    # getter for: Landroid/widget/OverScroller$SplineOverScroller;->mFinal:I
    invoke-static {v0}, Landroid/widget/OverScroller$SplineOverScroller;->access$400(Landroid/widget/OverScroller$SplineOverScroller;)I

    move-result v0

    return v0
.end method

.method public final getFinalY()I
    .registers 2

    .prologue
    .line 222
    iget-object v0, p0, mScrollerY:Landroid/widget/OverScroller$SplineOverScroller;

    # getter for: Landroid/widget/OverScroller$SplineOverScroller;->mFinal:I
    invoke-static {v0}, Landroid/widget/OverScroller$SplineOverScroller;->access$400(Landroid/widget/OverScroller$SplineOverScroller;)I

    move-result v0

    return v0
.end method

.method public final getStartX()I
    .registers 2

    .prologue
    .line 195
    iget-object v0, p0, mScrollerX:Landroid/widget/OverScroller$SplineOverScroller;

    # getter for: Landroid/widget/OverScroller$SplineOverScroller;->mStart:I
    invoke-static {v0}, Landroid/widget/OverScroller$SplineOverScroller;->access$300(Landroid/widget/OverScroller$SplineOverScroller;)I

    move-result v0

    return v0
.end method

.method public final getStartY()I
    .registers 2

    .prologue
    .line 204
    iget-object v0, p0, mScrollerY:Landroid/widget/OverScroller$SplineOverScroller;

    # getter for: Landroid/widget/OverScroller$SplineOverScroller;->mStart:I
    invoke-static {v0}, Landroid/widget/OverScroller$SplineOverScroller;->access$300(Landroid/widget/OverScroller$SplineOverScroller;)I

    move-result v0

    return v0
.end method

.method public final isFinished()Z
    .registers 2

    .prologue
    .line 147
    iget-object v0, p0, mScrollerX:Landroid/widget/OverScroller$SplineOverScroller;

    # getter for: Landroid/widget/OverScroller$SplineOverScroller;->mFinished:Z
    invoke-static {v0}, Landroid/widget/OverScroller$SplineOverScroller;->access$000(Landroid/widget/OverScroller$SplineOverScroller;)Z

    move-result v0

    if-eqz v0, :cond_12

    iget-object v0, p0, mScrollerY:Landroid/widget/OverScroller$SplineOverScroller;

    # getter for: Landroid/widget/OverScroller$SplineOverScroller;->mFinished:Z
    invoke-static {v0}, Landroid/widget/OverScroller$SplineOverScroller;->access$000(Landroid/widget/OverScroller$SplineOverScroller;)Z

    move-result v0

    if-eqz v0, :cond_12

    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method public isOverScrolled()Z
    .registers 2

    .prologue
    .line 526
    iget-object v0, p0, mScrollerX:Landroid/widget/OverScroller$SplineOverScroller;

    # getter for: Landroid/widget/OverScroller$SplineOverScroller;->mFinished:Z
    invoke-static {v0}, Landroid/widget/OverScroller$SplineOverScroller;->access$000(Landroid/widget/OverScroller$SplineOverScroller;)Z

    move-result v0

    if-nez v0, :cond_10

    iget-object v0, p0, mScrollerX:Landroid/widget/OverScroller$SplineOverScroller;

    # getter for: Landroid/widget/OverScroller$SplineOverScroller;->mState:I
    invoke-static {v0}, Landroid/widget/OverScroller$SplineOverScroller;->access$700(Landroid/widget/OverScroller$SplineOverScroller;)I

    move-result v0

    if-nez v0, :cond_20

    :cond_10
    iget-object v0, p0, mScrollerY:Landroid/widget/OverScroller$SplineOverScroller;

    # getter for: Landroid/widget/OverScroller$SplineOverScroller;->mFinished:Z
    invoke-static {v0}, Landroid/widget/OverScroller$SplineOverScroller;->access$000(Landroid/widget/OverScroller$SplineOverScroller;)Z

    move-result v0

    if-nez v0, :cond_22

    iget-object v0, p0, mScrollerY:Landroid/widget/OverScroller$SplineOverScroller;

    # getter for: Landroid/widget/OverScroller$SplineOverScroller;->mState:I
    invoke-static {v0}, Landroid/widget/OverScroller$SplineOverScroller;->access$700(Landroid/widget/OverScroller$SplineOverScroller;)I

    move-result v0

    if-eqz v0, :cond_22

    :cond_20
    const/4 v0, 0x1

    :goto_21
    return v0

    :cond_22
    const/4 v0, 0x0

    goto :goto_21
.end method

.method public isScrollingInDirection(FF)Z
    .registers 7
    .param p1, "xvel"    # F
    .param p2, "yvel"    # F

    .prologue
    .line 561
    iget-object v2, p0, mScrollerX:Landroid/widget/OverScroller$SplineOverScroller;

    # getter for: Landroid/widget/OverScroller$SplineOverScroller;->mFinal:I
    invoke-static {v2}, Landroid/widget/OverScroller$SplineOverScroller;->access$400(Landroid/widget/OverScroller$SplineOverScroller;)I

    move-result v2

    iget-object v3, p0, mScrollerX:Landroid/widget/OverScroller$SplineOverScroller;

    # getter for: Landroid/widget/OverScroller$SplineOverScroller;->mStart:I
    invoke-static {v3}, Landroid/widget/OverScroller$SplineOverScroller;->access$300(Landroid/widget/OverScroller$SplineOverScroller;)I

    move-result v3

    sub-int v0, v2, v3

    .line 562
    .local v0, "dx":I
    iget-object v2, p0, mScrollerY:Landroid/widget/OverScroller$SplineOverScroller;

    # getter for: Landroid/widget/OverScroller$SplineOverScroller;->mFinal:I
    invoke-static {v2}, Landroid/widget/OverScroller$SplineOverScroller;->access$400(Landroid/widget/OverScroller$SplineOverScroller;)I

    move-result v2

    iget-object v3, p0, mScrollerY:Landroid/widget/OverScroller$SplineOverScroller;

    # getter for: Landroid/widget/OverScroller$SplineOverScroller;->mStart:I
    invoke-static {v3}, Landroid/widget/OverScroller$SplineOverScroller;->access$300(Landroid/widget/OverScroller$SplineOverScroller;)I

    move-result v3

    sub-int v1, v2, v3

    .line 563
    .local v1, "dy":I
    invoke-virtual {p0}, isFinished()Z

    move-result v2

    if-nez v2, :cond_3e

    invoke-static {p1}, Ljava/lang/Math;->signum(F)F

    move-result v2

    int-to-float v3, v0

    invoke-static {v3}, Ljava/lang/Math;->signum(F)F

    move-result v3

    cmpl-float v2, v2, v3

    if-nez v2, :cond_3e

    invoke-static {p2}, Ljava/lang/Math;->signum(F)F

    move-result v2

    int-to-float v3, v1

    invoke-static {v3}, Ljava/lang/Math;->signum(F)F

    move-result v3

    cmpl-float v2, v2, v3

    if-nez v2, :cond_3e

    const/4 v2, 0x1

    :goto_3d
    return v2

    :cond_3e
    const/4 v2, 0x0

    goto :goto_3d
.end method

.method public notifyHorizontalEdgeReached(III)V
    .registers 5
    .param p1, "startX"    # I
    .param p2, "finalX"    # I
    .param p3, "overX"    # I

    .prologue
    .line 492
    iget-object v0, p0, mScrollerX:Landroid/widget/OverScroller$SplineOverScroller;

    invoke-virtual {v0, p1, p2, p3}, Landroid/widget/OverScroller$SplineOverScroller;->notifyEdgeReached(III)V

    .line 493
    return-void
.end method

.method public notifyVerticalEdgeReached(III)V
    .registers 5
    .param p1, "startY"    # I
    .param p2, "finalY"    # I
    .param p3, "overY"    # I

    .prologue
    .line 509
    iget-object v0, p0, mScrollerY:Landroid/widget/OverScroller$SplineOverScroller;

    invoke-virtual {v0, p1, p2, p3}, Landroid/widget/OverScroller$SplineOverScroller;->notifyEdgeReached(III)V

    .line 510
    return-void
.end method

.method public setFinalX(I)V
    .registers 3
    .param p1, "newX"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 274
    iget-object v0, p0, mScrollerX:Landroid/widget/OverScroller$SplineOverScroller;

    invoke-virtual {v0, p1}, Landroid/widget/OverScroller$SplineOverScroller;->setFinalPosition(I)V

    .line 275
    return-void
.end method

.method public setFinalY(I)V
    .registers 3
    .param p1, "newY"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 292
    iget-object v0, p0, mScrollerY:Landroid/widget/OverScroller$SplineOverScroller;

    invoke-virtual {v0, p1}, Landroid/widget/OverScroller$SplineOverScroller;->setFinalPosition(I)V

    .line 293
    return-void
.end method

.method public final setFriction(F)V
    .registers 3
    .param p1, "friction"    # F

    .prologue
    .line 136
    iget-object v0, p0, mScrollerX:Landroid/widget/OverScroller$SplineOverScroller;

    invoke-virtual {v0, p1}, Landroid/widget/OverScroller$SplineOverScroller;->setFriction(F)V

    .line 137
    iget-object v0, p0, mScrollerY:Landroid/widget/OverScroller$SplineOverScroller;

    invoke-virtual {v0, p1}, Landroid/widget/OverScroller$SplineOverScroller;->setFriction(F)V

    .line 138
    return-void
.end method

.method setInterpolator(Landroid/view/animation/Interpolator;)V
    .registers 3
    .param p1, "interpolator"    # Landroid/view/animation/Interpolator;

    .prologue
    .line 121
    if-nez p1, :cond_a

    .line 122
    new-instance v0, Landroid/widget/Scroller$ViscousFluidInterpolator;

    invoke-direct {v0}, Landroid/widget/Scroller$ViscousFluidInterpolator;-><init>()V

    iput-object v0, p0, mInterpolator:Landroid/view/animation/Interpolator;

    .line 126
    :goto_9
    return-void

    .line 124
    :cond_a
    iput-object p1, p0, mInterpolator:Landroid/view/animation/Interpolator;

    goto :goto_9
.end method

.method public springBack(IIIIII)Z
    .registers 11
    .param p1, "startX"    # I
    .param p2, "startY"    # I
    .param p3, "minX"    # I
    .param p4, "maxX"    # I
    .param p5, "minY"    # I
    .param p6, "maxY"    # I

    .prologue
    const/4 v2, 0x1

    .line 394
    iput v2, p0, mMode:I

    .line 397
    iget-object v3, p0, mScrollerX:Landroid/widget/OverScroller$SplineOverScroller;

    invoke-virtual {v3, p1, p3, p4}, Landroid/widget/OverScroller$SplineOverScroller;->springback(III)Z

    move-result v0

    .line 398
    .local v0, "spingbackX":Z
    iget-object v3, p0, mScrollerY:Landroid/widget/OverScroller$SplineOverScroller;

    invoke-virtual {v3, p2, p5, p6}, Landroid/widget/OverScroller$SplineOverScroller;->springback(III)Z

    move-result v1

    .line 399
    .local v1, "spingbackY":Z
    if-nez v0, :cond_13

    if-eqz v1, :cond_14

    :cond_13
    :goto_13
    return v2

    :cond_14
    const/4 v2, 0x0

    goto :goto_13
.end method

.method public startScroll(IIII)V
    .registers 11
    .param p1, "startX"    # I
    .param p2, "startY"    # I
    .param p3, "dx"    # I
    .param p4, "dy"    # I

    .prologue
    .line 359
    const/16 v5, 0xfa

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, startScroll(IIIII)V

    .line 360
    return-void
.end method

.method public startScroll(IIIII)V
    .registers 7
    .param p1, "startX"    # I
    .param p2, "startY"    # I
    .param p3, "dx"    # I
    .param p4, "dy"    # I
    .param p5, "duration"    # I

    .prologue
    .line 376
    const/4 v0, 0x0

    iput v0, p0, mMode:I

    .line 377
    iget-object v0, p0, mScrollerX:Landroid/widget/OverScroller$SplineOverScroller;

    invoke-virtual {v0, p1, p3, p5}, Landroid/widget/OverScroller$SplineOverScroller;->startScroll(III)V

    .line 378
    iget-object v0, p0, mScrollerY:Landroid/widget/OverScroller$SplineOverScroller;

    invoke-virtual {v0, p2, p4, p5}, Landroid/widget/OverScroller$SplineOverScroller;->startScroll(III)V

    .line 379
    return-void
.end method

.method public timePassed()I
    .registers 9

    .prologue
    .line 552
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v2

    .line 553
    .local v2, "time":J
    iget-object v4, p0, mScrollerX:Landroid/widget/OverScroller$SplineOverScroller;

    # getter for: Landroid/widget/OverScroller$SplineOverScroller;->mStartTime:J
    invoke-static {v4}, Landroid/widget/OverScroller$SplineOverScroller;->access$600(Landroid/widget/OverScroller$SplineOverScroller;)J

    move-result-wide v4

    iget-object v6, p0, mScrollerY:Landroid/widget/OverScroller$SplineOverScroller;

    # getter for: Landroid/widget/OverScroller$SplineOverScroller;->mStartTime:J
    invoke-static {v6}, Landroid/widget/OverScroller$SplineOverScroller;->access$600(Landroid/widget/OverScroller$SplineOverScroller;)J

    move-result-wide v6

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    .line 554
    .local v0, "startTime":J
    sub-long v4, v2, v0

    long-to-int v4, v4

    return v4
.end method

.method public twSetSmoothScrollEnable(Z)V
    .registers 4
    .param p1, "enable"    # Z

    .prologue
    .line 578
    if-eqz p1, :cond_e

    const/4 v0, 0x1

    .line 579
    .local v0, "mode":I
    :goto_3
    iget-object v1, p0, mScrollerX:Landroid/widget/OverScroller$SplineOverScroller;

    invoke-virtual {v1, v0}, Landroid/widget/OverScroller$SplineOverScroller;->setMode(I)V

    .line 580
    iget-object v1, p0, mScrollerY:Landroid/widget/OverScroller$SplineOverScroller;

    invoke-virtual {v1, v0}, Landroid/widget/OverScroller$SplineOverScroller;->setMode(I)V

    .line 582
    return-void

    .line 578
    .end local v0    # "mode":I
    :cond_e
    const/4 v0, 0x0

    goto :goto_3
.end method
