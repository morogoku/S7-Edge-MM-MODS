.class Lcom/android/server/NsdService$NativeEvent;
.super Ljava/lang/Object;
.source "NsdService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/NsdService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NativeEvent"
.end annotation


# instance fields
.field final code:I

.field final cooked:[Ljava/lang/String;

.field final raw:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/server/NsdService;


# direct methods
.method constructor <init>(Lcom/android/server/NsdService;ILjava/lang/String;[Ljava/lang/String;)V
    .registers 5
    .param p2, "code"    # I
    .param p3, "raw"    # Ljava/lang/String;
    .param p4, "cooked"    # [Ljava/lang/String;

    .prologue
    .line 660
    iput-object p1, p0, this$0:Lcom/android/server/NsdService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 661
    iput p2, p0, code:I

    .line 662
    iput-object p3, p0, raw:Ljava/lang/String;

    .line 663
    iput-object p4, p0, cooked:[Ljava/lang/String;

    .line 664
    return-void
.end method