.class public Landroid/transition/TransitionUtils;
.super Ljava/lang/Object;
.source "TransitionUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/transition/TransitionUtils$MatrixEvaluator;
    }
.end annotation


# static fields
.field private static MAX_IMAGE_SIZE:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 39
    const/high16 v0, 0x100000

    sput v0, MAX_IMAGE_SIZE:I

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 173
    return-void
.end method

.method public static copyViewImage(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/View;)Landroid/view/View;
    .registers 17
    .param p0, "sceneRoot"    # Landroid/view/ViewGroup;
    .param p1, "view"    # Landroid/view/View;
    .param p2, "parent"    # Landroid/view/View;

    .prologue
    .line 89
    new-instance v6, Landroid/graphics/Matrix;

    invoke-direct {v6}, Landroid/graphics/Matrix;-><init>()V

    .line 90
    .local v6, "matrix":Landroid/graphics/Matrix;
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getScrollX()I

    move-result v10

    neg-int v10, v10

    int-to-float v10, v10

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getScrollY()I

    move-result v11

    neg-int v11, v11

    int-to-float v11, v11

    invoke-virtual {v6, v10, v11}, Landroid/graphics/Matrix;->setTranslate(FF)V

    .line 91
    invoke-virtual {p1, v6}, Landroid/view/View;->transformMatrixToGlobal(Landroid/graphics/Matrix;)V

    .line 92
    invoke-virtual {p0, v6}, Landroid/view/ViewGroup;->transformMatrixToLocal(Landroid/graphics/Matrix;)V

    .line 93
    new-instance v2, Landroid/graphics/RectF;

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v12

    int-to-float v12, v12

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v13

    int-to-float v13, v13

    invoke-direct {v2, v10, v11, v12, v13}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 94
    .local v2, "bounds":Landroid/graphics/RectF;
    invoke-virtual {v6, v2}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 95
    iget v10, v2, Landroid/graphics/RectF;->left:F

    invoke-static {v10}, Ljava/lang/Math;->round(F)I

    move-result v5

    .line 96
    .local v5, "left":I
    iget v10, v2, Landroid/graphics/RectF;->top:F

    invoke-static {v10}, Ljava/lang/Math;->round(F)I

    move-result v8

    .line 97
    .local v8, "top":I
    iget v10, v2, Landroid/graphics/RectF;->right:F

    invoke-static {v10}, Ljava/lang/Math;->round(F)I

    move-result v7

    .line 98
    .local v7, "right":I
    iget v10, v2, Landroid/graphics/RectF;->bottom:F

    invoke-static {v10}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 100
    .local v1, "bottom":I
    new-instance v3, Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-direct {v3, v10}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 101
    .local v3, "copy":Landroid/widget/ImageView;
    sget-object v10, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v3, v10}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 102
    invoke-static {p1, v6, v2}, createViewBitmap(Landroid/view/View;Landroid/graphics/Matrix;Landroid/graphics/RectF;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 103
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_5d

    .line 104
    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 106
    :cond_5d
    sub-int v10, v7, v5

    const/high16 v11, 0x40000000    # 2.0f

    invoke-static {v10, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v9

    .line 107
    .local v9, "widthSpec":I
    sub-int v10, v1, v8

    const/high16 v11, 0x40000000    # 2.0f

    invoke-static {v10, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    .line 108
    .local v4, "heightSpec":I
    invoke-virtual {v3, v9, v4}, Landroid/widget/ImageView;->measure(II)V

    .line 109
    invoke-virtual {v3, v5, v8, v7, v1}, Landroid/widget/ImageView;->layout(IIII)V

    .line 110
    return-object v3
.end method

.method public static createDrawableBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    .registers 16
    .param p0, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 117
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v11

    .line 118
    .local v11, "width":I
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v6

    .line 119
    .local v6, "height":I
    if-lez v11, :cond_c

    if-gtz v6, :cond_e

    .line 120
    :cond_c
    const/4 v0, 0x0

    .line 139
    .end local p0    # "drawable":Landroid/graphics/drawable/Drawable;
    :goto_d
    return-object v0

    .line 122
    .restart local p0    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_e
    const/high16 v12, 0x3f800000    # 1.0f

    sget v13, MAX_IMAGE_SIZE:I

    int-to-float v13, v13

    mul-int v14, v11, v6

    int-to-float v14, v14

    div-float/2addr v13, v14

    invoke-static {v12, v13}, Ljava/lang/Math;->min(FF)F

    move-result v9

    .line 123
    .local v9, "scale":F
    instance-of v12, p0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v12, :cond_2c

    const/high16 v12, 0x3f800000    # 1.0f

    cmpl-float v12, v9, v12

    if-nez v12, :cond_2c

    .line 125
    check-cast p0, Landroid/graphics/drawable/BitmapDrawable;

    .end local p0    # "drawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_d

    .line 127
    .restart local p0    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_2c
    int-to-float v12, v11

    mul-float/2addr v12, v9

    float-to-int v2, v12

    .line 128
    .local v2, "bitmapWidth":I
    int-to-float v12, v6

    mul-float/2addr v12, v9

    float-to-int v1, v12

    .line 129
    .local v1, "bitmapHeight":I
    sget-object v12, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v1, v12}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 130
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    new-instance v4, Landroid/graphics/Canvas;

    invoke-direct {v4, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 131
    .local v4, "canvas":Landroid/graphics/Canvas;
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v5

    .line 132
    .local v5, "existingBounds":Landroid/graphics/Rect;
    iget v7, v5, Landroid/graphics/Rect;->left:I

    .line 133
    .local v7, "left":I
    iget v10, v5, Landroid/graphics/Rect;->top:I

    .line 134
    .local v10, "top":I
    iget v8, v5, Landroid/graphics/Rect;->right:I

    .line 135
    .local v8, "right":I
    iget v3, v5, Landroid/graphics/Rect;->bottom:I

    .line 136
    .local v3, "bottom":I
    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual {p0, v12, v13, v2, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 137
    invoke-virtual {p0, v4}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 138
    invoke-virtual {p0, v7, v10, v8, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto :goto_d
.end method

.method public static createViewBitmap(Landroid/view/View;Landroid/graphics/Matrix;Landroid/graphics/RectF;)Landroid/graphics/Bitmap;
    .registers 11
    .param p0, "view"    # Landroid/view/View;
    .param p1, "matrix"    # Landroid/graphics/Matrix;
    .param p2, "bounds"    # Landroid/graphics/RectF;

    .prologue
    .line 156
    const/4 v0, 0x0

    .line 157
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    invoke-virtual {p2}, Landroid/graphics/RectF;->width()F

    move-result v5

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v2

    .line 158
    .local v2, "bitmapWidth":I
    invoke-virtual {p2}, Landroid/graphics/RectF;->height()F

    move-result v5

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 159
    .local v1, "bitmapHeight":I
    if-lez v2, :cond_45

    if-lez v1, :cond_45

    .line 160
    const/high16 v5, 0x3f800000    # 1.0f

    sget v6, MAX_IMAGE_SIZE:I

    int-to-float v6, v6

    mul-int v7, v2, v1

    int-to-float v7, v7

    div-float/2addr v6, v7

    invoke-static {v5, v6}, Ljava/lang/Math;->min(FF)F

    move-result v4

    .line 161
    .local v4, "scale":F
    int-to-float v5, v2

    mul-float/2addr v5, v4

    float-to-int v2, v5

    .line 162
    int-to-float v5, v1

    mul-float/2addr v5, v4

    float-to-int v1, v5

    .line 163
    iget v5, p2, Landroid/graphics/RectF;->left:F

    neg-float v5, v5

    iget v6, p2, Landroid/graphics/RectF;->top:F

    neg-float v6, v6

    invoke-virtual {p1, v5, v6}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 164
    invoke-virtual {p1, v4, v4}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 165
    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v1, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 166
    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 167
    .local v3, "canvas":Landroid/graphics/Canvas;
    invoke-virtual {v3, p1}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 168
    invoke-virtual {p0, v3}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 170
    .end local v3    # "canvas":Landroid/graphics/Canvas;
    .end local v4    # "scale":F
    :cond_45
    return-object v0
.end method

.method static mergeAnimators(Landroid/animation/Animator;Landroid/animation/Animator;)Landroid/animation/Animator;
    .registers 5
    .param p0, "animator1"    # Landroid/animation/Animator;
    .param p1, "animator2"    # Landroid/animation/Animator;

    .prologue
    .line 42
    if-nez p0, :cond_3

    .line 49
    .end local p1    # "animator2":Landroid/animation/Animator;
    :goto_2
    return-object p1

    .line 44
    .restart local p1    # "animator2":Landroid/animation/Animator;
    :cond_3
    if-nez p1, :cond_7

    move-object p1, p0

    .line 45
    goto :goto_2

    .line 47
    :cond_7
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 48
    .local v0, "animatorSet":Landroid/animation/AnimatorSet;
    const/4 v1, 0x2

    new-array v1, v1, [Landroid/animation/Animator;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    move-object p1, v0

    .line 49
    goto :goto_2
.end method

.method public static varargs mergeTransitions([Landroid/transition/Transition;)Landroid/transition/Transition;
    .registers 6
    .param p0, "transitions"    # [Landroid/transition/Transition;

    .prologue
    .line 54
    const/4 v0, 0x0

    .line 55
    .local v0, "count":I
    const/4 v2, -0x1

    .line 56
    .local v2, "nonNullIndex":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_3
    array-length v4, p0

    if-ge v1, v4, :cond_10

    .line 57
    aget-object v4, p0, v1

    if-eqz v4, :cond_d

    .line 58
    add-int/lit8 v0, v0, 0x1

    .line 59
    move v2, v1

    .line 56
    :cond_d
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 63
    :cond_10
    if-nez v0, :cond_14

    .line 64
    const/4 v3, 0x0

    .line 77
    :cond_13
    :goto_13
    return-object v3

    .line 67
    :cond_14
    const/4 v4, 0x1

    if-ne v0, v4, :cond_1a

    .line 68
    aget-object v3, p0, v2

    goto :goto_13

    .line 71
    :cond_1a
    new-instance v3, Landroid/transition/TransitionSet;

    invoke-direct {v3}, Landroid/transition/TransitionSet;-><init>()V

    .line 72
    .local v3, "transitionSet":Landroid/transition/TransitionSet;
    const/4 v1, 0x0

    :goto_20
    array-length v4, p0

    if-ge v1, v4, :cond_13

    .line 73
    aget-object v4, p0, v1

    if-eqz v4, :cond_2c

    .line 74
    aget-object v4, p0, v1

    invoke-virtual {v3, v4}, Landroid/transition/TransitionSet;->addTransition(Landroid/transition/Transition;)Landroid/transition/TransitionSet;

    .line 72
    :cond_2c
    add-int/lit8 v1, v1, 0x1

    goto :goto_20
.end method