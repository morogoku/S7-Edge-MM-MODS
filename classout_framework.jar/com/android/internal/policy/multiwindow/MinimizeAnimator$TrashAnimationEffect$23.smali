.class Lcom/android/internal/policy/multiwindow/MinimizeAnimator$TrashAnimationEffect$23;
.super Ljava/lang/Object;
.source "MinimizeAnimator.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/multiwindow/MinimizeAnimator$TrashAnimationEffect;->removeTrashCoverCloseAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/internal/policy/multiwindow/MinimizeAnimator$TrashAnimationEffect;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/multiwindow/MinimizeAnimator$TrashAnimationEffect;)V
    .registers 2

    .prologue
    .line 1967
    iput-object p1, p0, this$1:Lcom/android/internal/policy/multiwindow/MinimizeAnimator$TrashAnimationEffect;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .registers 2
    .param p1, "arg0"    # Landroid/view/animation/Animation;

    .prologue
    .line 1973
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .registers 4
    .param p1, "arg0"    # Landroid/view/animation/Animation;

    .prologue
    .line 1969
    # getter for: Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->DEBUG_MINIMIZE_REMOVE_ANIM:Z
    invoke-static {}, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->access$4300()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 1970
    const-string v0, "MinimizeAnimator"

    const-string v1, "MinimizeAnimator::removeTrashCoverCloseAnimation() Start of TranslateAnimation"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1971
    :cond_d
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .registers 4
    .param p1, "arg0"    # Landroid/view/animation/Animation;

    .prologue
    .line 1975
    # getter for: Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->DEBUG_MINIMIZE_REMOVE_ANIM:Z
    invoke-static {}, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->access$4300()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 1976
    const-string v0, "MinimizeAnimator"

    const-string v1, "MinimizeAnimator::removeTrashCoverCloseAnimation() Start of TranslateAnimation"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1977
    :cond_d
    return-void
.end method
