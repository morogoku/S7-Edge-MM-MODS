.class Lcom/android/keyguard/status/SecKeyguardClockSingleImageView$1;
.super Landroid/os/Handler;
.source "SecKeyguardClockSingleImageView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/status/SecKeyguardClockSingleImageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/status/SecKeyguardClockSingleImageView;


# direct methods
.method constructor <init>(Lcom/android/keyguard/status/SecKeyguardClockSingleImageView;)V
    .locals 0

    .prologue
    .line 54
    iput-object p1, p0, Lcom/android/keyguard/status/SecKeyguardClockSingleImageView$1;->this$0:Lcom/android/keyguard/status/SecKeyguardClockSingleImageView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 57
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 65
    :goto_0
    return-void

    .line 59
    :pswitch_0
    iget-object v0, p0, Lcom/android/keyguard/status/SecKeyguardClockSingleImageView$1;->this$0:Lcom/android/keyguard/status/SecKeyguardClockSingleImageView;

    # invokes: Lcom/android/keyguard/status/SecKeyguardClockSingleImageView;->updateClockTime()V
    invoke-static {v0}, Lcom/android/keyguard/status/SecKeyguardClockSingleImageView;->access$000(Lcom/android/keyguard/status/SecKeyguardClockSingleImageView;)V

    goto :goto_0

    .line 57
    :pswitch_data_0
    .packed-switch 0x66
        :pswitch_0
    .end packed-switch
.end method
