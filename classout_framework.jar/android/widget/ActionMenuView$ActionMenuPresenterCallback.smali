.class Landroid/widget/ActionMenuView$ActionMenuPresenterCallback;
.super Ljava/lang/Object;
.source "ActionMenuView.java"

# interfaces
.implements Lcom/android/internal/view/menu/MenuPresenter$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/ActionMenuView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ActionMenuPresenterCallback"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/ActionMenuView;


# direct methods
.method private constructor <init>(Landroid/widget/ActionMenuView;)V
    .registers 2

    .prologue
    .line 814
    iput-object p1, p0, this$0:Landroid/widget/ActionMenuView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/widget/ActionMenuView;Landroid/widget/ActionMenuView$1;)V
    .registers 3
    .param p1, "x0"    # Landroid/widget/ActionMenuView;
    .param p2, "x1"    # Landroid/widget/ActionMenuView$1;

    .prologue
    .line 814
    invoke-direct {p0, p1}, <init>(Landroid/widget/ActionMenuView;)V

    return-void
.end method


# virtual methods
.method public onCloseMenu(Lcom/android/internal/view/menu/MenuBuilder;Z)V
    .registers 3
    .param p1, "menu"    # Lcom/android/internal/view/menu/MenuBuilder;
    .param p2, "allMenusAreClosing"    # Z

    .prologue
    .line 817
    return-void
.end method

.method public onOpenSubMenu(Lcom/android/internal/view/menu/MenuBuilder;)Z
    .registers 3
    .param p1, "subMenu"    # Lcom/android/internal/view/menu/MenuBuilder;

    .prologue
    .line 821
    const/4 v0, 0x0

    return v0
.end method
