.class final Landroid/transition/ChangeBounds$3;
.super Landroid/util/Property;
.source "ChangeBounds.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/transition/ChangeBounds;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/Property",
        "<",
        "Landroid/transition/ChangeBounds$ViewBounds;",
        "Landroid/graphics/PointF;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/Class;Ljava/lang/String;)V
    .registers 3
    .param p2, "x1"    # Ljava/lang/String;

    .prologue
    .line 100
    .local p1, "x0":Ljava/lang/Class;, "Ljava/lang/Class<Landroid/graphics/PointF;>;"
    invoke-direct {p0, p1, p2}, Landroid/util/Property;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public get(Landroid/transition/ChangeBounds$ViewBounds;)Landroid/graphics/PointF;
    .registers 3
    .param p1, "viewBounds"    # Landroid/transition/ChangeBounds$ViewBounds;

    .prologue
    .line 108
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 100
    check-cast p1, Landroid/transition/ChangeBounds$ViewBounds;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, get(Landroid/transition/ChangeBounds$ViewBounds;)Landroid/graphics/PointF;

    move-result-object v0

    return-object v0
.end method

.method public set(Landroid/transition/ChangeBounds$ViewBounds;Landroid/graphics/PointF;)V
    .registers 3
    .param p1, "viewBounds"    # Landroid/transition/ChangeBounds$ViewBounds;
    .param p2, "bottomRight"    # Landroid/graphics/PointF;

    .prologue
    .line 103
    invoke-virtual {p1, p2}, Landroid/transition/ChangeBounds$ViewBounds;->setBottomRight(Landroid/graphics/PointF;)V

    .line 104
    return-void
.end method

.method public bridge synthetic set(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 3
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 100
    check-cast p1, Landroid/transition/ChangeBounds$ViewBounds;

    .end local p1    # "x0":Ljava/lang/Object;
    check-cast p2, Landroid/graphics/PointF;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, set(Landroid/transition/ChangeBounds$ViewBounds;Landroid/graphics/PointF;)V

    return-void
.end method
