.class Lcom/android/systemui/statusbar/policy/HeadsUpManager$HeadsUpEntry$1;
.super Ljava/lang/Object;
.source "HeadsUpManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/policy/HeadsUpManager$HeadsUpEntry;->setEntry(Lcom/android/systemui/statusbar/NotificationData$Entry;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/statusbar/policy/HeadsUpManager$HeadsUpEntry;

.field final synthetic val$entry:Lcom/android/systemui/statusbar/NotificationData$Entry;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/policy/HeadsUpManager$HeadsUpEntry;Lcom/android/systemui/statusbar/NotificationData$Entry;)V
    .locals 0

    .prologue
    .line 575
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/HeadsUpManager$HeadsUpEntry$1;->this$1:Lcom/android/systemui/statusbar/policy/HeadsUpManager$HeadsUpEntry;

    iput-object p2, p0, Lcom/android/systemui/statusbar/policy/HeadsUpManager$HeadsUpEntry$1;->val$entry:Lcom/android/systemui/statusbar/NotificationData$Entry;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 578
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/HeadsUpManager$HeadsUpEntry$1;->this$1:Lcom/android/systemui/statusbar/policy/HeadsUpManager$HeadsUpEntry;

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/HeadsUpManager$HeadsUpEntry;->this$0:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    # getter for: Lcom/android/systemui/statusbar/policy/HeadsUpManager;->mTrackingHeadsUp:Z
    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->access$700(Lcom/android/systemui/statusbar/policy/HeadsUpManager;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 579
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/HeadsUpManager$HeadsUpEntry$1;->this$1:Lcom/android/systemui/statusbar/policy/HeadsUpManager$HeadsUpEntry;

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/HeadsUpManager$HeadsUpEntry;->this$0:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/HeadsUpManager$HeadsUpEntry$1;->val$entry:Lcom/android/systemui/statusbar/NotificationData$Entry;

    # invokes: Lcom/android/systemui/statusbar/policy/HeadsUpManager;->removeHeadsUpEntry(Lcom/android/systemui/statusbar/NotificationData$Entry;)V
    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->access$800(Lcom/android/systemui/statusbar/policy/HeadsUpManager;Lcom/android/systemui/statusbar/NotificationData$Entry;)V

    .line 583
    :goto_0
    return-void

    .line 581
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/HeadsUpManager$HeadsUpEntry$1;->this$1:Lcom/android/systemui/statusbar/policy/HeadsUpManager$HeadsUpEntry;

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/HeadsUpManager$HeadsUpEntry;->this$0:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    # getter for: Lcom/android/systemui/statusbar/policy/HeadsUpManager;->mEntriesToRemoveAfterExpand:Ljava/util/HashSet;
    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->access$900(Lcom/android/systemui/statusbar/policy/HeadsUpManager;)Ljava/util/HashSet;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/HeadsUpManager$HeadsUpEntry$1;->val$entry:Lcom/android/systemui/statusbar/NotificationData$Entry;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method
