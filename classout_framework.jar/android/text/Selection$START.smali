.class final Landroid/text/Selection$START;
.super Ljava/lang/Object;
.source "Selection.java"

# interfaces
.implements Landroid/text/NoCopySpan;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/text/Selection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "START"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 514
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/text/Selection$1;)V
    .registers 2
    .param p1, "x0"    # Landroid/text/Selection$1;

    .prologue
    .line 514
    invoke-direct {p0}, <init>()V

    return-void
.end method
