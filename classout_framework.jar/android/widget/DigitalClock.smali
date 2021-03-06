.class public Landroid/widget/DigitalClock;
.super Landroid/widget/TextView;
.source "DigitalClock.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/DigitalClock$FormatChangeObserver;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field mCalendar:Ljava/util/Calendar;

.field mFormat:Ljava/lang/String;

.field private mFormatChangeObserver:Landroid/widget/DigitalClock$FormatChangeObserver;

.field private mHandler:Landroid/os/Handler;

.field private mTicker:Ljava/lang/Runnable;

.field private mTickerStopped:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 50
    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 45
    const/4 v0, 0x0

    iput-boolean v0, p0, mTickerStopped:Z

    .line 51
    invoke-direct {p0}, initClock()V

    .line 52
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 55
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 45
    const/4 v0, 0x0

    iput-boolean v0, p0, mTickerStopped:Z

    .line 56
    invoke-direct {p0}, initClock()V

    .line 57
    return-void
.end method

.method static synthetic access$000(Landroid/widget/DigitalClock;)Z
    .registers 2
    .param p0, "x0"    # Landroid/widget/DigitalClock;

    .prologue
    .line 34
    iget-boolean v0, p0, mTickerStopped:Z

    return v0
.end method

.method static synthetic access$100(Landroid/widget/DigitalClock;)Ljava/lang/Runnable;
    .registers 2
    .param p0, "x0"    # Landroid/widget/DigitalClock;

    .prologue
    .line 34
    iget-object v0, p0, mTicker:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$200(Landroid/widget/DigitalClock;)Landroid/os/Handler;
    .registers 2
    .param p0, "x0"    # Landroid/widget/DigitalClock;

    .prologue
    .line 34
    iget-object v0, p0, mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$300(Landroid/widget/DigitalClock;)V
    .registers 1
    .param p0, "x0"    # Landroid/widget/DigitalClock;

    .prologue
    .line 34
    invoke-direct {p0}, setFormat()V

    return-void
.end method

.method private initClock()V
    .registers 5

    .prologue
    .line 60
    iget-object v0, p0, mCalendar:Ljava/util/Calendar;

    if-nez v0, :cond_a

    .line 61
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, mCalendar:Ljava/util/Calendar;

    .line 64
    :cond_a
    new-instance v0, Landroid/widget/DigitalClock$FormatChangeObserver;

    invoke-direct {v0, p0}, Landroid/widget/DigitalClock$FormatChangeObserver;-><init>(Landroid/widget/DigitalClock;)V

    iput-object v0, p0, mFormatChangeObserver:Landroid/widget/DigitalClock$FormatChangeObserver;

    .line 65
    invoke-virtual {p0}, getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Settings$System;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    iget-object v3, p0, mFormatChangeObserver:Landroid/widget/DigitalClock$FormatChangeObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 68
    invoke-direct {p0}, setFormat()V

    .line 69
    return-void
.end method

.method private setFormat()V
    .registers 2

    .prologue
    .line 101
    invoke-virtual {p0}, getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/text/format/DateFormat;->getTimeFormatString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, mFormat:Ljava/lang/String;

    .line 102
    return-void
.end method


# virtual methods
.method public getAccessibilityClassName()Ljava/lang/CharSequence;
    .registers 2

    .prologue
    .line 118
    const-class v0, Landroid/widget/DigitalClock;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected onAttachedToWindow()V
    .registers 2

    .prologue
    .line 73
    const/4 v0, 0x0

    iput-boolean v0, p0, mTickerStopped:Z

    .line 74
    invoke-super {p0}, Landroid/widget/TextView;->onAttachedToWindow()V

    .line 75
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, mHandler:Landroid/os/Handler;

    .line 80
    new-instance v0, Landroid/widget/DigitalClock$1;

    invoke-direct {v0, p0}, Landroid/widget/DigitalClock$1;-><init>(Landroid/widget/DigitalClock;)V

    iput-object v0, p0, mTicker:Ljava/lang/Runnable;

    .line 91
    iget-object v0, p0, mTicker:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 92
    return-void
.end method

.method protected onDetachedFromWindow()V
    .registers 2

    .prologue
    .line 96
    invoke-super {p0}, Landroid/widget/TextView;->onDetachedFromWindow()V

    .line 97
    const/4 v0, 0x1

    iput-boolean v0, p0, mTickerStopped:Z

    .line 98
    return-void
.end method
