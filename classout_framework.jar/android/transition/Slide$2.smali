.class final Landroid/transition/Slide$2;
.super Landroid/transition/Slide$CalculateSlideHorizontal;
.source "Slide.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/transition/Slide;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 2

    .prologue
    .line 79
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/transition/Slide$CalculateSlideHorizontal;-><init>(Landroid/transition/Slide$1;)V

    return-void
.end method


# virtual methods
.method public getGoneX(Landroid/view/ViewGroup;Landroid/view/View;)F
    .registers 7
    .param p1, "sceneRoot"    # Landroid/view/ViewGroup;
    .param p2, "view"    # Landroid/view/View;

    .prologue
    const/4 v0, 0x1

    .line 82
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getLayoutDirection()I

    move-result v2

    if-ne v2, v0, :cond_15

    .line 84
    .local v0, "isRtl":Z
    :goto_7
    if-eqz v0, :cond_17

    .line 85
    invoke-virtual {p2}, Landroid/view/View;->getTranslationX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getWidth()I

    move-result v3

    int-to-float v3, v3

    add-float v1, v2, v3

    .line 89
    .local v1, "x":F
    :goto_14
    return v1

    .line 82
    .end local v0    # "isRtl":Z
    .end local v1    # "x":F
    :cond_15
    const/4 v0, 0x0

    goto :goto_7

    .line 87
    .restart local v0    # "isRtl":Z
    :cond_17
    invoke-virtual {p2}, Landroid/view/View;->getTranslationX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getWidth()I

    move-result v3

    int-to-float v3, v3

    sub-float v1, v2, v3

    .restart local v1    # "x":F
    goto :goto_14
.end method
