.class final Landroid/widget/HorizontalFastScroller$7;
.super Landroid/util/IntProperty;
.source "HorizontalFastScroller.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/HorizontalFastScroller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/IntProperty",
        "<",
        "Landroid/view/View;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "x0"    # Ljava/lang/String;

    .prologue
    .line 1520
    invoke-direct {p0, p1}, Landroid/util/IntProperty;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public get(Landroid/view/View;)Ljava/lang/Integer;
    .registers 3
    .param p1, "object"    # Landroid/view/View;

    .prologue
    .line 1528
    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 1520
    check-cast p1, Landroid/view/View;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, get(Landroid/view/View;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public setValue(Landroid/view/View;I)V
    .registers 3
    .param p1, "object"    # Landroid/view/View;
    .param p2, "value"    # I

    .prologue
    .line 1523
    invoke-virtual {p1, p2}, Landroid/view/View;->setBottom(I)V

    .line 1524
    return-void
.end method

.method public bridge synthetic setValue(Ljava/lang/Object;I)V
    .registers 3
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # I

    .prologue
    .line 1520
    check-cast p1, Landroid/view/View;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, setValue(Landroid/view/View;I)V

    return-void
.end method
