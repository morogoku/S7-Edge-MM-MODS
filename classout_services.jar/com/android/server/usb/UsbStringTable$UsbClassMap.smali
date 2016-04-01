.class Lcom/android/server/usb/UsbStringTable$UsbClassMap;
.super Ljava/lang/Object;
.source "UsbStringTable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/usb/UsbStringTable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UsbClassMap"
.end annotation


# instance fields
.field private final clasz:I

.field private onlyclasz:Z

.field private final protocol:I

.field private final subclass:I

.field private final szsubtext:Ljava/lang/String;

.field private final sztext:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/server/usb/UsbStringTable;


# direct methods
.method constructor <init>(Lcom/android/server/usb/UsbStringTable;III)V
    .registers 7
    .param p2, "clasz"    # I
    .param p3, "subclass"    # I
    .param p4, "protocol"    # I

    .prologue
    const/4 v1, 0x0

    .line 91
    iput-object p1, p0, this$0:Lcom/android/server/usb/UsbStringTable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    const/4 v0, 0x0

    iput-boolean v0, p0, onlyclasz:Z

    .line 92
    iput p2, p0, clasz:I

    .line 93
    iput p3, p0, subclass:I

    .line 94
    iput p4, p0, protocol:I

    .line 95
    iput-object v1, p0, sztext:Ljava/lang/String;

    .line 96
    iput-object v1, p0, szsubtext:Ljava/lang/String;

    .line 97
    return-void
.end method

.method constructor <init>(Lcom/android/server/usb/UsbStringTable;IIILjava/lang/String;)V
    .registers 7
    .param p2, "clasz"    # I
    .param p3, "subclass"    # I
    .param p4, "protocol"    # I
    .param p5, "sztext"    # Ljava/lang/String;

    .prologue
    .line 74
    iput-object p1, p0, this$0:Lcom/android/server/usb/UsbStringTable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    const/4 v0, 0x0

    iput-boolean v0, p0, onlyclasz:Z

    .line 75
    iput p2, p0, clasz:I

    .line 76
    iput p3, p0, subclass:I

    .line 77
    iput p4, p0, protocol:I

    .line 78
    iput-object p5, p0, sztext:Ljava/lang/String;

    .line 79
    const/4 v0, 0x0

    iput-object v0, p0, szsubtext:Ljava/lang/String;

    .line 80
    return-void
.end method

.method constructor <init>(Lcom/android/server/usb/UsbStringTable;IIILjava/lang/String;Ljava/lang/String;)V
    .registers 8
    .param p2, "clasz"    # I
    .param p3, "subclass"    # I
    .param p4, "protocol"    # I
    .param p5, "sztext"    # Ljava/lang/String;
    .param p6, "szsubtext"    # Ljava/lang/String;

    .prologue
    .line 66
    iput-object p1, p0, this$0:Lcom/android/server/usb/UsbStringTable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    const/4 v0, 0x0

    iput-boolean v0, p0, onlyclasz:Z

    .line 67
    iput p2, p0, clasz:I

    .line 68
    iput p3, p0, subclass:I

    .line 69
    iput p4, p0, protocol:I

    .line 70
    iput-object p5, p0, sztext:Ljava/lang/String;

    .line 71
    iput-object p6, p0, szsubtext:Ljava/lang/String;

    .line 72
    return-void
.end method

.method constructor <init>(Lcom/android/server/usb/UsbStringTable;ILjava/lang/String;)V
    .registers 6
    .param p2, "clasz"    # I
    .param p3, "sztext"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 82
    iput-object p1, p0, this$0:Lcom/android/server/usb/UsbStringTable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    iput-boolean v1, p0, onlyclasz:Z

    .line 83
    const/4 v0, 0x1

    iput-boolean v0, p0, onlyclasz:Z

    .line 84
    iput p2, p0, clasz:I

    .line 85
    iput v1, p0, subclass:I

    .line 86
    iput v1, p0, protocol:I

    .line 87
    iput-object p3, p0, sztext:Ljava/lang/String;

    .line 88
    const/4 v0, 0x0

    iput-object v0, p0, szsubtext:Ljava/lang/String;

    .line 89
    return-void
.end method


# virtual methods
.method public equals(III)Z
    .registers 7
    .param p1, "clasz"    # I
    .param p2, "subclass"    # I
    .param p3, "protocol"    # I

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 100
    iget-boolean v2, p0, onlyclasz:Z

    if-eqz v2, :cond_d

    .line 101
    iget v2, p0, clasz:I

    if-ne v2, p1, :cond_b

    .line 103
    :cond_a
    :goto_a
    return v0

    :cond_b
    move v0, v1

    .line 101
    goto :goto_a

    .line 103
    :cond_d
    iget v2, p0, clasz:I

    if-ne v2, p1, :cond_19

    iget v2, p0, subclass:I

    if-ne v2, p2, :cond_19

    iget v2, p0, protocol:I

    if-eq v2, p3, :cond_a

    :cond_19
    move v0, v1

    goto :goto_a
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 108
    instance-of v3, p1, Lcom/android/server/usb/UsbStringTable$UsbClassMap;

    if-eqz v3, :cond_2a

    move-object v0, p1

    .line 109
    check-cast v0, Lcom/android/server/usb/UsbStringTable$UsbClassMap;

    .line 110
    .local v0, "tmp":Lcom/android/server/usb/UsbStringTable$UsbClassMap;
    iget-boolean v3, p0, onlyclasz:Z

    if-eqz v3, :cond_16

    .line 111
    iget v3, v0, clasz:I

    iget v4, p0, clasz:I

    if-ne v3, v4, :cond_14

    .line 115
    .end local v0    # "tmp":Lcom/android/server/usb/UsbStringTable$UsbClassMap;
    :cond_13
    :goto_13
    return v1

    .restart local v0    # "tmp":Lcom/android/server/usb/UsbStringTable$UsbClassMap;
    :cond_14
    move v1, v2

    .line 111
    goto :goto_13

    .line 113
    :cond_16
    iget v3, v0, clasz:I

    iget v4, p0, clasz:I

    if-ne v3, v4, :cond_28

    iget v3, v0, subclass:I

    iget v4, p0, subclass:I

    if-ne v3, v4, :cond_28

    iget v3, v0, protocol:I

    iget v4, p0, protocol:I

    if-eq v3, v4, :cond_13

    :cond_28
    move v1, v2

    goto :goto_13

    .end local v0    # "tmp":Lcom/android/server/usb/UsbStringTable$UsbClassMap;
    :cond_2a
    move v1, v2

    .line 115
    goto :goto_13
.end method

.method public hashCode()I
    .registers 3

    .prologue
    .line 120
    iget v0, p0, clasz:I

    shl-int/lit8 v0, v0, 0x10

    iget v1, p0, subclass:I

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    iget v1, p0, protocol:I

    or-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .prologue
    .line 125
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, sztext:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 126
    .local v0, "tmp":Ljava/lang/String;
    iget-object v1, p0, szsubtext:Ljava/lang/String;

    if-eqz v1, :cond_2a

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, szsubtext:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " )"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 127
    :cond_2a
    return-object v0
.end method
