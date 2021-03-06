.class final Lcom/android/server/hdmi/OneTouchPlayAction;
.super Lcom/android/server/hdmi/HdmiCecFeatureAction;
.source "OneTouchPlayAction.java"


# static fields
.field private static final LOOP_COUNTER_MAX:I = 0xa

.field private static final STATE_WAITING_FOR_REPORT_POWER_STATUS:I = 0x1

.field private static final TAG:Ljava/lang/String; = "OneTouchPlayAction"


# instance fields
.field private final mCallback:Landroid/hardware/hdmi/IHdmiControlCallback;

.field private mPowerStatusCounter:I

.field private final mTargetAddress:I


# direct methods
.method private constructor <init>(Lcom/android/server/hdmi/HdmiCecLocalDevice;ILandroid/hardware/hdmi/IHdmiControlCallback;)V
    .registers 5
    .param p1, "localDevice"    # Lcom/android/server/hdmi/HdmiCecLocalDevice;
    .param p2, "targetAddress"    # I
    .param p3, "callback"    # Landroid/hardware/hdmi/IHdmiControlCallback;

    .prologue
    .line 67
    invoke-direct {p0, p1}, Lcom/android/server/hdmi/HdmiCecFeatureAction;-><init>(Lcom/android/server/hdmi/HdmiCecLocalDevice;)V

    .line 52
    const/4 v0, 0x0

    iput v0, p0, mPowerStatusCounter:I

    .line 68
    iput p2, p0, mTargetAddress:I

    .line 69
    iput-object p3, p0, mCallback:Landroid/hardware/hdmi/IHdmiControlCallback;

    .line 70
    return-void
.end method

.method private broadcastActiveSource()V
    .registers 3

    .prologue
    .line 83
    invoke-virtual {p0}, getSourceAddress()I

    move-result v0

    invoke-virtual {p0}, getSourcePath()I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildActiveSource(II)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object v0

    invoke-virtual {p0, v0}, sendCommand(Lcom/android/server/hdmi/HdmiCecMessage;)V

    .line 85
    invoke-virtual {p0}, playback()Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;->setActiveSource(Z)V

    .line 86
    return-void
.end method

.method static create(Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;ILandroid/hardware/hdmi/IHdmiControlCallback;)Lcom/android/server/hdmi/OneTouchPlayAction;
    .registers 5
    .param p0, "source"    # Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;
    .param p1, "targetAddress"    # I
    .param p2, "callback"    # Landroid/hardware/hdmi/IHdmiControlCallback;

    .prologue
    .line 57
    if-eqz p0, :cond_4

    if-nez p2, :cond_d

    .line 58
    :cond_4
    const-string v0, "OneTouchPlayAction"

    const-string v1, "Wrong arguments"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    const/4 v0, 0x0

    .line 61
    :goto_c
    return-object v0

    :cond_d
    new-instance v0, Lcom/android/server/hdmi/OneTouchPlayAction;

    invoke-direct {v0, p0, p1, p2}, <init>(Lcom/android/server/hdmi/HdmiCecLocalDevice;ILandroid/hardware/hdmi/IHdmiControlCallback;)V

    goto :goto_c
.end method

.method private invokeCallback(I)V
    .registers 6
    .param p1, "result"    # I

    .prologue
    .line 130
    :try_start_0
    iget-object v1, p0, mCallback:Landroid/hardware/hdmi/IHdmiControlCallback;

    invoke-interface {v1, p1}, Landroid/hardware/hdmi/IHdmiControlCallback;->onComplete(I)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 134
    :goto_5
    return-void

    .line 131
    :catch_6
    move-exception v0

    .line 132
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "OneTouchPlayAction"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Callback failed:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5
.end method

.method private queryDevicePowerStatus()V
    .registers 3

    .prologue
    .line 89
    invoke-virtual {p0}, getSourceAddress()I

    move-result v0

    iget v1, p0, mTargetAddress:I

    invoke-static {v0, v1}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildGiveDevicePowerStatus(II)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object v0

    invoke-virtual {p0, v0}, sendCommand(Lcom/android/server/hdmi/HdmiCecMessage;)V

    .line 91
    return-void
.end method


# virtual methods
.method handleTimerEvent(I)V
    .registers 5
    .param p1, "state"    # I

    .prologue
    const/4 v2, 0x1

    .line 113
    iget v0, p0, mState:I

    if-eq v0, p1, :cond_6

    .line 126
    :cond_5
    :goto_5
    return-void

    .line 116
    :cond_6
    if-ne p1, v2, :cond_5

    .line 117
    iget v0, p0, mPowerStatusCounter:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, mPowerStatusCounter:I

    const/16 v1, 0xa

    if-ge v0, v1, :cond_1d

    .line 118
    invoke-direct {p0}, queryDevicePowerStatus()V

    .line 119
    iget v0, p0, mState:I

    const/16 v1, 0x7d0

    invoke-virtual {p0, v0, v1}, addTimer(II)V

    goto :goto_5

    .line 122
    :cond_1d
    invoke-direct {p0, v2}, invokeCallback(I)V

    .line 123
    invoke-virtual {p0}, finish()V

    goto :goto_5
.end method

.method processCommand(Lcom/android/server/hdmi/HdmiCecMessage;)Z
    .registers 7
    .param p1, "cmd"    # Lcom/android/server/hdmi/HdmiCecMessage;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 95
    iget v3, p0, mState:I

    if-ne v3, v1, :cond_e

    iget v3, p0, mTargetAddress:I

    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getSource()I

    move-result v4

    if-eq v3, v4, :cond_10

    :cond_e
    move v1, v2

    .line 108
    :cond_f
    :goto_f
    return v1

    .line 99
    :cond_10
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getOpcode()I

    move-result v3

    const/16 v4, 0x90

    if-ne v3, v4, :cond_2a

    .line 100
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getParams()[B

    move-result-object v3

    aget-byte v0, v3, v2

    .line 101
    .local v0, "status":I
    if-nez v0, :cond_f

    .line 102
    invoke-direct {p0}, broadcastActiveSource()V

    .line 103
    invoke-direct {p0, v2}, invokeCallback(I)V

    .line 104
    invoke-virtual {p0}, finish()V

    goto :goto_f

    .end local v0    # "status":I
    :cond_2a
    move v1, v2

    .line 108
    goto :goto_f
.end method

.method start()Z
    .registers 4

    .prologue
    const/4 v2, 0x1

    .line 74
    invoke-virtual {p0}, getSourceAddress()I

    move-result v0

    iget v1, p0, mTargetAddress:I

    invoke-static {v0, v1}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildTextViewOn(II)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object v0

    invoke-virtual {p0, v0}, sendCommand(Lcom/android/server/hdmi/HdmiCecMessage;)V

    .line 75
    invoke-direct {p0}, broadcastActiveSource()V

    .line 76
    invoke-direct {p0}, queryDevicePowerStatus()V

    .line 77
    iput v2, p0, mState:I

    .line 78
    iget v0, p0, mState:I

    const/16 v1, 0x7d0

    invoke-virtual {p0, v0, v1}, addTimer(II)V

    .line 79
    return v2
.end method
