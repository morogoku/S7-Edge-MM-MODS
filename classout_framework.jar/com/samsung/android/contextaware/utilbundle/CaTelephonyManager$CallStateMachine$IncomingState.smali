.class Lcom/samsung/android/contextaware/utilbundle/CaTelephonyManager$CallStateMachine$IncomingState;
.super Lcom/android/internal/util/State;
.source "CaTelephonyManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/contextaware/utilbundle/CaTelephonyManager$CallStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "IncomingState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/contextaware/utilbundle/CaTelephonyManager$CallStateMachine;


# direct methods
.method constructor <init>(Lcom/samsung/android/contextaware/utilbundle/CaTelephonyManager$CallStateMachine;)V
    .registers 2

    .prologue
    .line 192
    iput-object p1, p0, this$0:Lcom/samsung/android/contextaware/utilbundle/CaTelephonyManager$CallStateMachine;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method


# virtual methods
.method public enter()V
    .registers 3

    .prologue
    .line 196
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Entering "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->info(Ljava/lang/String;)V

    .line 197
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .registers 5
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    .line 202
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Handling message "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/samsung/android/contextaware/utilbundle/CaTelephonyManager$Msg;->values()[Lcom/samsung/android/contextaware/utilbundle/CaTelephonyManager$Msg;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " in "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->info(Ljava/lang/String;)V

    .line 204
    sget-object v0, Lcom/samsung/android/contextaware/utilbundle/CaTelephonyManager$2;->$SwitchMap$com$samsung$android$contextaware$utilbundle$CaTelephonyManager$Msg:[I

    invoke-static {}, Lcom/samsung/android/contextaware/utilbundle/CaTelephonyManager$Msg;->values()[Lcom/samsung/android/contextaware/utilbundle/CaTelephonyManager$Msg;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    aget-object v1, v1, v2

    invoke-virtual {v1}, Lcom/samsung/android/contextaware/utilbundle/CaTelephonyManager$Msg;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_5a

    .line 218
    const/4 v0, 0x0

    .line 221
    :goto_40
    return v0

    .line 208
    :pswitch_41
    iget-object v0, p0, this$0:Lcom/samsung/android/contextaware/utilbundle/CaTelephonyManager$CallStateMachine;

    iget-object v1, p0, this$0:Lcom/samsung/android/contextaware/utilbundle/CaTelephonyManager$CallStateMachine;

    # getter for: Lcom/samsung/android/contextaware/utilbundle/CaTelephonyManager$CallStateMachine;->mIdleState:Lcom/samsung/android/contextaware/utilbundle/CaTelephonyManager$CallStateMachine$IdleState;
    invoke-static {v1}, Lcom/samsung/android/contextaware/utilbundle/CaTelephonyManager$CallStateMachine;->access$200(Lcom/samsung/android/contextaware/utilbundle/CaTelephonyManager$CallStateMachine;)Lcom/samsung/android/contextaware/utilbundle/CaTelephonyManager$CallStateMachine$IdleState;

    move-result-object v1

    # invokes: Lcom/samsung/android/contextaware/utilbundle/CaTelephonyManager$CallStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v0, v1}, Lcom/samsung/android/contextaware/utilbundle/CaTelephonyManager$CallStateMachine;->access$300(Lcom/samsung/android/contextaware/utilbundle/CaTelephonyManager$CallStateMachine;Lcom/android/internal/util/IState;)V

    .line 221
    :goto_4c
    const/4 v0, 0x1

    goto :goto_40

    .line 214
    :pswitch_4e
    iget-object v0, p0, this$0:Lcom/samsung/android/contextaware/utilbundle/CaTelephonyManager$CallStateMachine;

    iget-object v1, p0, this$0:Lcom/samsung/android/contextaware/utilbundle/CaTelephonyManager$CallStateMachine;

    # getter for: Lcom/samsung/android/contextaware/utilbundle/CaTelephonyManager$CallStateMachine;->mIncomingAnsweredState:Lcom/samsung/android/contextaware/utilbundle/CaTelephonyManager$CallStateMachine$IncomingAnsweredState;
    invoke-static {v1}, Lcom/samsung/android/contextaware/utilbundle/CaTelephonyManager$CallStateMachine;->access$400(Lcom/samsung/android/contextaware/utilbundle/CaTelephonyManager$CallStateMachine;)Lcom/samsung/android/contextaware/utilbundle/CaTelephonyManager$CallStateMachine$IncomingAnsweredState;

    move-result-object v1

    # invokes: Lcom/samsung/android/contextaware/utilbundle/CaTelephonyManager$CallStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v0, v1}, Lcom/samsung/android/contextaware/utilbundle/CaTelephonyManager$CallStateMachine;->access$500(Lcom/samsung/android/contextaware/utilbundle/CaTelephonyManager$CallStateMachine;Lcom/android/internal/util/IState;)V

    goto :goto_4c

    .line 204
    :pswitch_data_5a
    .packed-switch 0x2
        :pswitch_4e
        :pswitch_41
    .end packed-switch
.end method
