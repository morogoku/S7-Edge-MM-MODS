.class Landroid/widget/Editor$InsertionHandleView$1;
.super Ljava/lang/Object;
.source "Editor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/Editor$InsertionHandleView;->show()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/widget/Editor$InsertionHandleView;


# direct methods
.method constructor <init>(Landroid/widget/Editor$InsertionHandleView;)V
    .registers 2

    .prologue
    .line 4433
    iput-object p1, p0, this$1:Landroid/widget/Editor$InsertionHandleView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 4436
    iget-object v0, p0, this$1:Landroid/widget/Editor$InsertionHandleView;

    iget-object v0, v0, Landroid/widget/Editor$InsertionHandleView;->this$0:Landroid/widget/Editor;

    invoke-virtual {v0}, Landroid/widget/Editor;->startInsertionActionMode()V

    .line 4437
    return-void
.end method
