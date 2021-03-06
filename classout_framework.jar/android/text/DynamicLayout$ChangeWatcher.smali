.class Landroid/text/DynamicLayout$ChangeWatcher;
.super Ljava/lang/Object;
.source "DynamicLayout.java"

# interfaces
.implements Landroid/text/SpanWatcher;
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/text/DynamicLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ChangeWatcher"
.end annotation


# instance fields
.field private mLayout:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/text/DynamicLayout;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/text/DynamicLayout;)V
    .registers 3
    .param p1, "layout"    # Landroid/text/DynamicLayout;

    .prologue
    .line 654
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 655
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, mLayout:Ljava/lang/ref/WeakReference;

    .line 656
    return-void
.end method

.method private reflow(Ljava/lang/CharSequence;III)V
    .registers 7
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "where"    # I
    .param p3, "before"    # I
    .param p4, "after"    # I

    .prologue
    .line 659
    iget-object v1, p0, mLayout:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/text/DynamicLayout;

    .line 661
    .local v0, "ml":Landroid/text/DynamicLayout;
    if-eqz v0, :cond_e

    .line 662
    # invokes: Landroid/text/DynamicLayout;->reflow(Ljava/lang/CharSequence;III)V
    invoke-static {v0, p1, p2, p3, p4}, Landroid/text/DynamicLayout;->access$000(Landroid/text/DynamicLayout;Ljava/lang/CharSequence;III)V

    .line 665
    .end local p1    # "s":Ljava/lang/CharSequence;
    :cond_d
    :goto_d
    return-void

    .line 663
    .restart local p1    # "s":Ljava/lang/CharSequence;
    :cond_e
    instance-of v1, p1, Landroid/text/Spannable;

    if-eqz v1, :cond_d

    .line 664
    check-cast p1, Landroid/text/Spannable;

    .end local p1    # "s":Ljava/lang/CharSequence;
    invoke-interface {p1, p0}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    goto :goto_d
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .registers 2
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    .line 677
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "where"    # I
    .param p3, "before"    # I
    .param p4, "after"    # I

    .prologue
    .line 669
    return-void
.end method

.method public onSpanAdded(Landroid/text/Spannable;Ljava/lang/Object;II)V
    .registers 7
    .param p1, "s"    # Landroid/text/Spannable;
    .param p2, "o"    # Ljava/lang/Object;
    .param p3, "start"    # I
    .param p4, "end"    # I

    .prologue
    .line 680
    instance-of v0, p2, Landroid/text/style/UpdateLayout;

    if-eqz v0, :cond_b

    .line 681
    sub-int v0, p4, p3

    sub-int v1, p4, p3

    invoke-direct {p0, p1, p3, v0, v1}, reflow(Ljava/lang/CharSequence;III)V

    .line 682
    :cond_b
    return-void
.end method

.method public onSpanChanged(Landroid/text/Spannable;Ljava/lang/Object;IIII)V
    .registers 9
    .param p1, "s"    # Landroid/text/Spannable;
    .param p2, "o"    # Ljava/lang/Object;
    .param p3, "start"    # I
    .param p4, "end"    # I
    .param p5, "nstart"    # I
    .param p6, "nend"    # I

    .prologue
    .line 690
    instance-of v0, p2, Landroid/text/style/UpdateLayout;

    if-eqz v0, :cond_12

    .line 691
    sub-int v0, p4, p3

    sub-int v1, p4, p3

    invoke-direct {p0, p1, p3, v0, v1}, reflow(Ljava/lang/CharSequence;III)V

    .line 692
    sub-int v0, p6, p5

    sub-int v1, p6, p5

    invoke-direct {p0, p1, p5, v0, v1}, reflow(Ljava/lang/CharSequence;III)V

    .line 694
    :cond_12
    return-void
.end method

.method public onSpanRemoved(Landroid/text/Spannable;Ljava/lang/Object;II)V
    .registers 7
    .param p1, "s"    # Landroid/text/Spannable;
    .param p2, "o"    # Ljava/lang/Object;
    .param p3, "start"    # I
    .param p4, "end"    # I

    .prologue
    .line 685
    instance-of v0, p2, Landroid/text/style/UpdateLayout;

    if-eqz v0, :cond_b

    .line 686
    sub-int v0, p4, p3

    sub-int v1, p4, p3

    invoke-direct {p0, p1, p3, v0, v1}, reflow(Ljava/lang/CharSequence;III)V

    .line 687
    :cond_b
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "where"    # I
    .param p3, "before"    # I
    .param p4, "after"    # I

    .prologue
    .line 672
    invoke-direct {p0, p1, p2, p3, p4}, reflow(Ljava/lang/CharSequence;III)V

    .line 673
    return-void
.end method
