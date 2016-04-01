.class final Lcom/android/server/appwidget/AppWidgetServiceImpl$ServiceConnectionProxy;
.super Ljava/lang/Object;
.source "AppWidgetServiceImpl.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/appwidget/AppWidgetServiceImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ServiceConnectionProxy"
.end annotation


# instance fields
.field private final mConnectionCb:Lcom/android/internal/widget/IRemoteViewsAdapterConnection;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .registers 3
    .param p1, "connectionCb"    # Landroid/os/IBinder;

    .prologue
    .line 4035
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4036
    invoke-static {p1}, Lcom/android/internal/widget/IRemoteViewsAdapterConnection$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/widget/IRemoteViewsAdapterConnection;

    move-result-object v0

    iput-object v0, p0, mConnectionCb:Lcom/android/internal/widget/IRemoteViewsAdapterConnection;

    .line 4038
    return-void
.end method


# virtual methods
.method public disconnect()V
    .registers 4

    .prologue
    .line 4054
    :try_start_0
    iget-object v1, p0, mConnectionCb:Lcom/android/internal/widget/IRemoteViewsAdapterConnection;

    invoke-interface {v1}, Lcom/android/internal/widget/IRemoteViewsAdapterConnection;->onServiceDisconnected()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 4058
    :goto_5
    return-void

    .line 4055
    :catch_6
    move-exception v0

    .line 4056
    .local v0, "re":Landroid/os/RemoteException;
    const-string v1, "AppWidgetServiceImpl"

    const-string v2, "Error clearing service interface"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 6
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 4042
    :try_start_0
    iget-object v1, p0, mConnectionCb:Lcom/android/internal/widget/IRemoteViewsAdapterConnection;

    invoke-interface {v1, p2}, Lcom/android/internal/widget/IRemoteViewsAdapterConnection;->onServiceConnected(Landroid/os/IBinder;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 4046
    :goto_5
    return-void

    .line 4043
    :catch_6
    move-exception v0

    .line 4044
    .local v0, "re":Landroid/os/RemoteException;
    const-string v1, "AppWidgetServiceImpl"

    const-string v2, "Error passing service interface"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 2
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    .line 4049
    invoke-virtual {p0}, disconnect()V

    .line 4050
    return-void
.end method
