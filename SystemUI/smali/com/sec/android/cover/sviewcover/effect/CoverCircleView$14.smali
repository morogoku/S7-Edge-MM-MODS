.class Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$14;
.super Ljava/lang/Object;
.source "CoverCircleView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->setDCircleAlphaAnimator(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;


# direct methods
.method constructor <init>(Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;)V
    .locals 0

    .prologue
    .line 939
    iput-object p1, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$14;->this$0:Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 942
    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$14;->this$0:Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    # setter for: Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mDCircleAlpha:I
    invoke-static {v1, v0}, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->access$1702(Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;I)I

    .line 943
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$14;->this$0:Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;

    invoke-virtual {v0}, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->invalidate()V

    .line 944
    return-void
.end method
