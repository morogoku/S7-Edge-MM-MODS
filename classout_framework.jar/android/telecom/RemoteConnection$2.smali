.class Landroid/telecom/RemoteConnection$2;
.super Ljava/lang/Object;
.source "RemoteConnection.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/telecom/RemoteConnection;->setDisconnected(Landroid/telecom/DisconnectCause;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/telecom/RemoteConnection;

.field final synthetic val$callback:Landroid/telecom/RemoteConnection$Callback;

.field final synthetic val$connection:Landroid/telecom/RemoteConnection;

.field final synthetic val$disconnectCause:Landroid/telecom/DisconnectCause;


# direct methods
.method constructor <init>(Landroid/telecom/RemoteConnection;Landroid/telecom/RemoteConnection$Callback;Landroid/telecom/RemoteConnection;Landroid/telecom/DisconnectCause;)V
    .registers 5

    .prologue
    .line 1043
    iput-object p1, p0, this$0:Landroid/telecom/RemoteConnection;

    iput-object p2, p0, val$callback:Landroid/telecom/RemoteConnection$Callback;

    iput-object p3, p0, val$connection:Landroid/telecom/RemoteConnection;

    iput-object p4, p0, val$disconnectCause:Landroid/telecom/DisconnectCause;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 1046
    iget-object v0, p0, val$callback:Landroid/telecom/RemoteConnection$Callback;

    iget-object v1, p0, val$connection:Landroid/telecom/RemoteConnection;

    iget-object v2, p0, val$disconnectCause:Landroid/telecom/DisconnectCause;

    invoke-virtual {v0, v1, v2}, Landroid/telecom/RemoteConnection$Callback;->onDisconnected(Landroid/telecom/RemoteConnection;Landroid/telecom/DisconnectCause;)V

    .line 1047
    return-void
.end method
