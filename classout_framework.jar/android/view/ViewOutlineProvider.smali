.class public abstract Landroid/view/ViewOutlineProvider;
.super Ljava/lang/Object;
.source "ViewOutlineProvider.java"


# static fields
.field public static final BACKGROUND:Landroid/view/ViewOutlineProvider;

.field public static final BOUNDS:Landroid/view/ViewOutlineProvider;

.field public static final PADDED_BOUNDS:Landroid/view/ViewOutlineProvider;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 33
    new-instance v0, Landroid/view/ViewOutlineProvider$1;

    invoke-direct {v0}, Landroid/view/ViewOutlineProvider$1;-><init>()V

    sput-object v0, BACKGROUND:Landroid/view/ViewOutlineProvider;

    .line 52
    new-instance v0, Landroid/view/ViewOutlineProvider$2;

    invoke-direct {v0}, Landroid/view/ViewOutlineProvider$2;-><init>()V

    sput-object v0, BOUNDS:Landroid/view/ViewOutlineProvider;

    .line 65
    new-instance v0, Landroid/view/ViewOutlineProvider$3;

    invoke-direct {v0}, Landroid/view/ViewOutlineProvider$3;-><init>()V

    sput-object v0, PADDED_BOUNDS:Landroid/view/ViewOutlineProvider;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract getOutline(Landroid/view/View;Landroid/graphics/Outline;)V
.end method
