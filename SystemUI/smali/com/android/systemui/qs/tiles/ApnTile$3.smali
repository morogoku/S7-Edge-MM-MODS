.class Lcom/android/systemui/qs/tiles/ApnTile$3;
.super Lcom/android/systemui/qs/GlobalSetting;
.source "ApnTile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/qs/tiles/ApnTile;-><init>(Lcom/android/systemui/qs/QSTile$Host;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/tiles/ApnTile;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/tiles/ApnTile;Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;)V
    .locals 0
    .param p2, "x0"    # Landroid/content/Context;
    .param p3, "x1"    # Landroid/os/Handler;
    .param p4, "x2"    # Ljava/lang/String;

    .prologue
    .line 124
    iput-object p1, p0, Lcom/android/systemui/qs/tiles/ApnTile$3;->this$0:Lcom/android/systemui/qs/tiles/ApnTile;

    invoke-direct {p0, p2, p3, p4}, Lcom/android/systemui/qs/GlobalSetting;-><init>(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected handleValueChanged(I)V
    .locals 4
    .param p1, "value"    # I

    .prologue
    const/4 v0, 0x1

    .line 127
    # getter for: Lcom/android/systemui/qs/tiles/ApnTile;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/systemui/qs/tiles/ApnTile;->access$000()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleValueChanged : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/ApnTile$3;->this$0:Lcom/android/systemui/qs/tiles/ApnTile;

    if-ne p1, v0, :cond_0

    :goto_0
    # setter for: Lcom/android/systemui/qs/tiles/ApnTile;->mIsAirPlaneMode:Z
    invoke-static {v1, v0}, Lcom/android/systemui/qs/tiles/ApnTile;->access$602(Lcom/android/systemui/qs/tiles/ApnTile;Z)Z

    .line 129
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/ApnTile$3;->this$0:Lcom/android/systemui/qs/tiles/ApnTile;

    # invokes: Lcom/android/systemui/qs/tiles/ApnTile;->refreshState()V
    invoke-static {v0}, Lcom/android/systemui/qs/tiles/ApnTile;->access$700(Lcom/android/systemui/qs/tiles/ApnTile;)V

    .line 130
    return-void

    .line 128
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
