.class Landroid/transition/ChangeText$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source "ChangeText.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/transition/ChangeText;->createAnimator(Landroid/view/ViewGroup;Landroid/transition/TransitionValues;Landroid/transition/TransitionValues;)Landroid/animation/Animator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/transition/ChangeText;

.field final synthetic val$endColor:I

.field final synthetic val$endSelectionEnd:I

.field final synthetic val$endSelectionStart:I

.field final synthetic val$endText:Ljava/lang/CharSequence;

.field final synthetic val$startText:Ljava/lang/CharSequence;

.field final synthetic val$view:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Landroid/transition/ChangeText;Ljava/lang/CharSequence;Landroid/widget/TextView;Ljava/lang/CharSequence;III)V
    .registers 8

    .prologue
    .line 222
    iput-object p1, p0, this$0:Landroid/transition/ChangeText;

    iput-object p2, p0, val$startText:Ljava/lang/CharSequence;

    iput-object p3, p0, val$view:Landroid/widget/TextView;

    iput-object p4, p0, val$endText:Ljava/lang/CharSequence;

    iput p5, p0, val$endSelectionStart:I

    iput p6, p0, val$endSelectionEnd:I

    iput p7, p0, val$endColor:I

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 6
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 225
    iget-object v0, p0, val$startText:Ljava/lang/CharSequence;

    iget-object v1, p0, val$view:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_28

    .line 227
    iget-object v0, p0, val$view:Landroid/widget/TextView;

    iget-object v1, p0, val$endText:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 228
    iget-object v0, p0, val$view:Landroid/widget/TextView;

    instance-of v0, v0, Landroid/widget/EditText;

    if-eqz v0, :cond_28

    .line 229
    iget-object v1, p0, this$0:Landroid/transition/ChangeText;

    iget-object v0, p0, val$view:Landroid/widget/TextView;

    check-cast v0, Landroid/widget/EditText;

    iget v2, p0, val$endSelectionStart:I

    iget v3, p0, val$endSelectionEnd:I

    # invokes: Landroid/transition/ChangeText;->setSelection(Landroid/widget/EditText;II)V
    invoke-static {v1, v0, v2, v3}, Landroid/transition/ChangeText;->access$000(Landroid/transition/ChangeText;Landroid/widget/EditText;II)V

    .line 234
    :cond_28
    iget-object v0, p0, val$view:Landroid/widget/TextView;

    iget v1, p0, val$endColor:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 235
    return-void
.end method
