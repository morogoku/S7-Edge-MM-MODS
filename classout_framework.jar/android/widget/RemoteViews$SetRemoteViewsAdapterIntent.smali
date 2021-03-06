.class Landroid/widget/RemoteViews$SetRemoteViewsAdapterIntent;
.super Landroid/widget/RemoteViews$Action;
.source "RemoteViews.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/RemoteViews;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SetRemoteViewsAdapterIntent"
.end annotation


# static fields
.field public static final TAG:I = 0xa


# instance fields
.field intent:Landroid/content/Intent;

.field final synthetic this$0:Landroid/widget/RemoteViews;


# direct methods
.method public constructor <init>(Landroid/widget/RemoteViews;ILandroid/content/Intent;)V
    .registers 5
    .param p2, "id"    # I
    .param p3, "intent"    # Landroid/content/Intent;

    .prologue
    .line 714
    iput-object p1, p0, this$0:Landroid/widget/RemoteViews;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews$Action;-><init>(Landroid/widget/RemoteViews$1;)V

    .line 715
    iput p2, p0, viewId:I

    .line 716
    iput-object p3, p0, intent:Landroid/content/Intent;

    .line 717
    return-void
.end method

.method public constructor <init>(Landroid/widget/RemoteViews;Landroid/os/Parcel;)V
    .registers 4
    .param p2, "parcel"    # Landroid/os/Parcel;

    .prologue
    .line 719
    iput-object p1, p0, this$0:Landroid/widget/RemoteViews;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews$Action;-><init>(Landroid/widget/RemoteViews$1;)V

    .line 720
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, viewId:I

    .line 721
    sget-object v0, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    iput-object v0, p0, intent:Landroid/content/Intent;

    .line 722
    return-void
.end method


# virtual methods
.method public apply(Landroid/view/View;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$OnClickHandler;)V
    .registers 11
    .param p1, "root"    # Landroid/view/View;
    .param p2, "rootParent"    # Landroid/view/ViewGroup;
    .param p3, "handler"    # Landroid/widget/RemoteViews$OnClickHandler;

    .prologue
    .line 732
    iget v4, p0, viewId:I

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 733
    .local v2, "target":Landroid/view/View;
    if-nez v2, :cond_9

    .line 804
    :cond_8
    :goto_8
    return-void

    .line 736
    :cond_9
    const/4 v1, 0x0

    .line 737
    .local v1, "isCocktail":Z
    instance-of v4, p2, Lcom/samsung/android/cocktailbar/CocktailHostView;

    if-eqz v4, :cond_f

    .line 738
    const/4 v1, 0x1

    .line 745
    :cond_f
    instance-of v4, p2, Landroid/appwidget/AppWidgetHostView;

    if-nez v4, :cond_36

    if-nez v1, :cond_36

    .line 746
    const-string v4, "RemoteViews"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SetRemoteViewsAdapterIntent action can only be used for AppWidgets (root id: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, viewId:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8

    .line 762
    :cond_36
    instance-of v4, v2, Landroid/widget/AbsListView;

    if-nez v4, :cond_63

    instance-of v4, v2, Landroid/widget/AdapterViewAnimator;

    if-nez v4, :cond_63

    instance-of v4, v2, Landroid/widget/AbsHorizontalListView;

    if-nez v4, :cond_63

    .line 763
    const-string v4, "RemoteViews"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Cannot setRemoteViewsAdapter on a view which is not an AbsListView or AdapterViewAnimator (id: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, viewId:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8

    .line 777
    :cond_63
    if-eqz v1, :cond_8e

    .line 778
    iget-object v4, p0, intent:Landroid/content/Intent;

    const-string/jumbo v5, "remoteAdapterCocktail"

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-object v0, p2

    .line 779
    check-cast v0, Lcom/samsung/android/cocktailbar/CocktailHostView;

    .line 780
    .local v0, "host":Lcom/samsung/android/cocktailbar/CocktailHostView;
    iget-object v4, p0, intent:Landroid/content/Intent;

    const-string/jumbo v5, "remoteAdapterAppWidgetId"

    invoke-virtual {v0}, Lcom/samsung/android/cocktailbar/CocktailHostView;->getCocktailId()I

    move-result v6

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 789
    .end local v0    # "host":Lcom/samsung/android/cocktailbar/CocktailHostView;
    :goto_7d
    instance-of v4, v2, Landroid/widget/AbsListView;

    if-eqz v4, :cond_9e

    move-object v3, v2

    .line 790
    check-cast v3, Landroid/widget/AbsListView;

    .line 791
    .local v3, "v":Landroid/widget/AbsListView;
    iget-object v4, p0, intent:Landroid/content/Intent;

    invoke-virtual {v3, v4}, Landroid/widget/AbsListView;->setRemoteViewsAdapter(Landroid/content/Intent;)V

    .line 792
    invoke-virtual {v3, p3}, Landroid/widget/AbsListView;->setRemoteViewsOnClickHandler(Landroid/widget/RemoteViews$OnClickHandler;)V

    goto/16 :goto_8

    .end local v3    # "v":Landroid/widget/AbsListView;
    :cond_8e
    move-object v0, p2

    .line 784
    check-cast v0, Landroid/appwidget/AppWidgetHostView;

    .line 785
    .local v0, "host":Landroid/appwidget/AppWidgetHostView;
    iget-object v4, p0, intent:Landroid/content/Intent;

    const-string/jumbo v5, "remoteAdapterAppWidgetId"

    invoke-virtual {v0}, Landroid/appwidget/AppWidgetHostView;->getAppWidgetId()I

    move-result v6

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_7d

    .line 793
    .end local v0    # "host":Landroid/appwidget/AppWidgetHostView;
    :cond_9e
    instance-of v4, v2, Landroid/widget/AdapterViewAnimator;

    if-eqz v4, :cond_af

    move-object v3, v2

    .line 794
    check-cast v3, Landroid/widget/AdapterViewAnimator;

    .line 795
    .local v3, "v":Landroid/widget/AdapterViewAnimator;
    iget-object v4, p0, intent:Landroid/content/Intent;

    invoke-virtual {v3, v4}, Landroid/widget/AdapterViewAnimator;->setRemoteViewsAdapter(Landroid/content/Intent;)V

    .line 796
    invoke-virtual {v3, p3}, Landroid/widget/AdapterViewAnimator;->setRemoteViewsOnClickHandler(Landroid/widget/RemoteViews$OnClickHandler;)V

    goto/16 :goto_8

    .line 798
    .end local v3    # "v":Landroid/widget/AdapterViewAnimator;
    :cond_af
    instance-of v4, v2, Landroid/widget/AbsHorizontalListView;

    if-eqz v4, :cond_8

    move-object v3, v2

    .line 799
    check-cast v3, Landroid/widget/AbsHorizontalListView;

    .line 800
    .local v3, "v":Landroid/widget/AbsHorizontalListView;
    iget-object v4, p0, intent:Landroid/content/Intent;

    invoke-virtual {v3, v4}, Landroid/widget/AbsHorizontalListView;->setRemoteViewsAdapter(Landroid/content/Intent;)V

    .line 801
    invoke-virtual {v3, p3}, Landroid/widget/AbsHorizontalListView;->setRemoteViewsOnClickHandler(Landroid/widget/RemoteViews$OnClickHandler;)V

    goto/16 :goto_8
.end method

.method public getActionName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 807
    const-string v0, "SetRemoteViewsAdapterIntent"

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 725
    const/16 v0, 0xa

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 726
    iget v0, p0, viewId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 727
    iget-object v0, p0, intent:Landroid/content/Intent;

    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->writeToParcel(Landroid/os/Parcel;I)V

    .line 728
    return-void
.end method
