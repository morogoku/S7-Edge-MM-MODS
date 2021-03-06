.class public Lcom/samsung/android/visualeffect/progressfingerscan/object/CompleteView;
.super Landroid/view/View;
.source "CompleteView.java"


# instance fields
.field private final TAG:Ljava/lang/String;

.field private centerX:F

.field private centerY:F

.field private currentRatio:F

.field private height:I

.field private paint:Landroid/graphics/Paint;

.field private radius:F

.field private width:I


# direct methods
.method public constructor <init>(Landroid/content/Context;III)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "completeColor"    # I

    .prologue
    const/high16 v1, 0x40000000    # 2.0f

    .line 21
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 10
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/CompleteView;->TAG:Ljava/lang/String;

    .line 23
    iput p2, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/CompleteView;->width:I

    .line 24
    iput p3, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/CompleteView;->height:I

    .line 25
    int-to-float v0, p2

    div-float/2addr v0, v1

    iput v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/CompleteView;->centerX:F

    .line 26
    int-to-float v0, p3

    div-float/2addr v0, v1

    iput v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/CompleteView;->centerY:F

    .line 27
    iget v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/CompleteView;->centerX:F

    iput v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/CompleteView;->radius:F

    .line 29
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/CompleteView;->paint:Landroid/graphics/Paint;

    .line 30
    iget-object v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/CompleteView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, p4}, Landroid/graphics/Paint;->setColor(I)V

    .line 31
    iget-object v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/CompleteView;->paint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 32
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 41
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 42
    iget v1, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/CompleteView;->currentRatio:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_0

    .line 43
    iget v1, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/CompleteView;->radius:F

    iget v2, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/CompleteView;->currentRatio:F

    mul-float v0, v1, v2

    .line 44
    .local v0, "currnetRadius":F
    iget v1, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/CompleteView;->centerX:F

    iget v2, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/CompleteView;->centerY:F

    iget-object v3, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/CompleteView;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v0, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 46
    .end local v0    # "currnetRadius":F
    :cond_0
    return-void
.end method

.method public setRatio(F)V
    .locals 3
    .param p1, "ratio"    # F

    .prologue
    const/4 v2, 0x0

    .line 35
    iput p1, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/CompleteView;->currentRatio:F

    .line 36
    iget v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/CompleteView;->width:I

    iget v1, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/CompleteView;->height:I

    invoke-virtual {p0, v2, v2, v0, v1}, Lcom/samsung/android/visualeffect/progressfingerscan/object/CompleteView;->invalidate(IIII)V

    .line 37
    return-void
.end method
