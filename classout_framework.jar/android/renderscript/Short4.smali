.class public Landroid/renderscript/Short4;
.super Ljava/lang/Object;
.source "Short4.java"


# instance fields
.field public w:S

.field public x:S

.field public y:S

.field public z:S


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    return-void
.end method

.method public constructor <init>(Landroid/renderscript/Short4;)V
    .registers 3
    .param p1, "source"    # Landroid/renderscript/Short4;

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iget-short v0, p1, x:S

    iput-short v0, p0, x:S

    .line 47
    iget-short v0, p1, y:S

    iput-short v0, p0, y:S

    .line 48
    iget-short v0, p1, z:S

    iput-short v0, p0, z:S

    .line 49
    iget-short v0, p1, w:S

    iput-short v0, p0, w:S

    .line 50
    return-void
.end method

.method public constructor <init>(S)V
    .registers 2
    .param p1, "i"    # S

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-short p1, p0, w:S

    iput-short p1, p0, z:S

    iput-short p1, p0, y:S

    iput-short p1, p0, x:S

    .line 35
    return-void
.end method

.method public constructor <init>(SSSS)V
    .registers 5
    .param p1, "x"    # S
    .param p2, "y"    # S
    .param p3, "z"    # S
    .param p4, "w"    # S

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-short p1, p0, x:S

    .line 39
    iput-short p2, p0, y:S

    .line 40
    iput-short p3, p0, z:S

    .line 41
    iput-short p4, p0, w:S

    .line 42
    return-void
.end method

.method public static add(Landroid/renderscript/Short4;Landroid/renderscript/Short4;)Landroid/renderscript/Short4;
    .registers 5
    .param p0, "a"    # Landroid/renderscript/Short4;
    .param p1, "b"    # Landroid/renderscript/Short4;

    .prologue
    .line 72
    new-instance v0, Landroid/renderscript/Short4;

    invoke-direct {v0}, <init>()V

    .line 73
    .local v0, "result":Landroid/renderscript/Short4;
    iget-short v1, p0, x:S

    iget-short v2, p1, x:S

    add-int/2addr v1, v2

    int-to-short v1, v1

    iput-short v1, v0, x:S

    .line 74
    iget-short v1, p0, y:S

    iget-short v2, p1, y:S

    add-int/2addr v1, v2

    int-to-short v1, v1

    iput-short v1, v0, y:S

    .line 75
    iget-short v1, p0, z:S

    iget-short v2, p1, z:S

    add-int/2addr v1, v2

    int-to-short v1, v1

    iput-short v1, v0, z:S

    .line 76
    iget-short v1, p0, w:S

    iget-short v2, p1, w:S

    add-int/2addr v1, v2

    int-to-short v1, v1

    iput-short v1, v0, w:S

    .line 78
    return-object v0
.end method

.method public static add(Landroid/renderscript/Short4;S)Landroid/renderscript/Short4;
    .registers 4
    .param p0, "a"    # Landroid/renderscript/Short4;
    .param p1, "b"    # S

    .prologue
    .line 101
    new-instance v0, Landroid/renderscript/Short4;

    invoke-direct {v0}, <init>()V

    .line 102
    .local v0, "result":Landroid/renderscript/Short4;
    iget-short v1, p0, x:S

    add-int/2addr v1, p1

    int-to-short v1, v1

    iput-short v1, v0, x:S

    .line 103
    iget-short v1, p0, y:S

    add-int/2addr v1, p1

    int-to-short v1, v1

    iput-short v1, v0, y:S

    .line 104
    iget-short v1, p0, z:S

    add-int/2addr v1, p1

    int-to-short v1, v1

    iput-short v1, v0, z:S

    .line 105
    iget-short v1, p0, w:S

    add-int/2addr v1, p1

    int-to-short v1, v1

    iput-short v1, v0, w:S

    .line 107
    return-object v0
.end method

.method public static div(Landroid/renderscript/Short4;Landroid/renderscript/Short4;)Landroid/renderscript/Short4;
    .registers 5
    .param p0, "a"    # Landroid/renderscript/Short4;
    .param p1, "b"    # Landroid/renderscript/Short4;

    .prologue
    .line 246
    new-instance v0, Landroid/renderscript/Short4;

    invoke-direct {v0}, <init>()V

    .line 247
    .local v0, "result":Landroid/renderscript/Short4;
    iget-short v1, p0, x:S

    iget-short v2, p1, x:S

    div-int/2addr v1, v2

    int-to-short v1, v1

    iput-short v1, v0, x:S

    .line 248
    iget-short v1, p0, y:S

    iget-short v2, p1, y:S

    div-int/2addr v1, v2

    int-to-short v1, v1

    iput-short v1, v0, y:S

    .line 249
    iget-short v1, p0, z:S

    iget-short v2, p1, z:S

    div-int/2addr v1, v2

    int-to-short v1, v1

    iput-short v1, v0, z:S

    .line 250
    iget-short v1, p0, w:S

    iget-short v2, p1, w:S

    div-int/2addr v1, v2

    int-to-short v1, v1

    iput-short v1, v0, w:S

    .line 252
    return-object v0
.end method

.method public static div(Landroid/renderscript/Short4;S)Landroid/renderscript/Short4;
    .registers 4
    .param p0, "a"    # Landroid/renderscript/Short4;
    .param p1, "b"    # S

    .prologue
    .line 275
    new-instance v0, Landroid/renderscript/Short4;

    invoke-direct {v0}, <init>()V

    .line 276
    .local v0, "result":Landroid/renderscript/Short4;
    iget-short v1, p0, x:S

    div-int/2addr v1, p1

    int-to-short v1, v1

    iput-short v1, v0, x:S

    .line 277
    iget-short v1, p0, y:S

    div-int/2addr v1, p1

    int-to-short v1, v1

    iput-short v1, v0, y:S

    .line 278
    iget-short v1, p0, z:S

    div-int/2addr v1, p1

    int-to-short v1, v1

    iput-short v1, v0, z:S

    .line 279
    iget-short v1, p0, w:S

    div-int/2addr v1, p1

    int-to-short v1, v1

    iput-short v1, v0, w:S

    .line 281
    return-object v0
.end method

.method public static dotProduct(Landroid/renderscript/Short4;Landroid/renderscript/Short4;)S
    .registers 5
    .param p0, "a"    # Landroid/renderscript/Short4;
    .param p1, "b"    # Landroid/renderscript/Short4;

    .prologue
    .line 379
    iget-short v0, p1, x:S

    iget-short v1, p0, x:S

    mul-int/2addr v0, v1

    iget-short v1, p1, y:S

    iget-short v2, p0, y:S

    mul-int/2addr v1, v2

    add-int/2addr v0, v1

    iget-short v1, p1, z:S

    iget-short v2, p0, z:S

    mul-int/2addr v1, v2

    add-int/2addr v0, v1

    iget-short v1, p1, w:S

    iget-short v2, p0, w:S

    mul-int/2addr v1, v2

    add-int/2addr v0, v1

    int-to-short v0, v0

    return v0
.end method

.method public static mod(Landroid/renderscript/Short4;Landroid/renderscript/Short4;)Landroid/renderscript/Short4;
    .registers 5
    .param p0, "a"    # Landroid/renderscript/Short4;
    .param p1, "b"    # Landroid/renderscript/Short4;

    .prologue
    .line 304
    new-instance v0, Landroid/renderscript/Short4;

    invoke-direct {v0}, <init>()V

    .line 305
    .local v0, "result":Landroid/renderscript/Short4;
    iget-short v1, p0, x:S

    iget-short v2, p1, x:S

    rem-int/2addr v1, v2

    int-to-short v1, v1

    iput-short v1, v0, x:S

    .line 306
    iget-short v1, p0, y:S

    iget-short v2, p1, y:S

    rem-int/2addr v1, v2

    int-to-short v1, v1

    iput-short v1, v0, y:S

    .line 307
    iget-short v1, p0, z:S

    iget-short v2, p1, z:S

    rem-int/2addr v1, v2

    int-to-short v1, v1

    iput-short v1, v0, z:S

    .line 308
    iget-short v1, p0, w:S

    iget-short v2, p1, w:S

    rem-int/2addr v1, v2

    int-to-short v1, v1

    iput-short v1, v0, w:S

    .line 310
    return-object v0
.end method

.method public static mod(Landroid/renderscript/Short4;S)Landroid/renderscript/Short4;
    .registers 4
    .param p0, "a"    # Landroid/renderscript/Short4;
    .param p1, "b"    # S

    .prologue
    .line 333
    new-instance v0, Landroid/renderscript/Short4;

    invoke-direct {v0}, <init>()V

    .line 334
    .local v0, "result":Landroid/renderscript/Short4;
    iget-short v1, p0, x:S

    rem-int/2addr v1, p1

    int-to-short v1, v1

    iput-short v1, v0, x:S

    .line 335
    iget-short v1, p0, y:S

    rem-int/2addr v1, p1

    int-to-short v1, v1

    iput-short v1, v0, y:S

    .line 336
    iget-short v1, p0, z:S

    rem-int/2addr v1, p1

    int-to-short v1, v1

    iput-short v1, v0, z:S

    .line 337
    iget-short v1, p0, w:S

    rem-int/2addr v1, p1

    int-to-short v1, v1

    iput-short v1, v0, w:S

    .line 339
    return-object v0
.end method

.method public static mul(Landroid/renderscript/Short4;Landroid/renderscript/Short4;)Landroid/renderscript/Short4;
    .registers 5
    .param p0, "a"    # Landroid/renderscript/Short4;
    .param p1, "b"    # Landroid/renderscript/Short4;

    .prologue
    .line 188
    new-instance v0, Landroid/renderscript/Short4;

    invoke-direct {v0}, <init>()V

    .line 189
    .local v0, "result":Landroid/renderscript/Short4;
    iget-short v1, p0, x:S

    iget-short v2, p1, x:S

    mul-int/2addr v1, v2

    int-to-short v1, v1

    iput-short v1, v0, x:S

    .line 190
    iget-short v1, p0, y:S

    iget-short v2, p1, y:S

    mul-int/2addr v1, v2

    int-to-short v1, v1

    iput-short v1, v0, y:S

    .line 191
    iget-short v1, p0, z:S

    iget-short v2, p1, z:S

    mul-int/2addr v1, v2

    int-to-short v1, v1

    iput-short v1, v0, z:S

    .line 192
    iget-short v1, p0, w:S

    iget-short v2, p1, w:S

    mul-int/2addr v1, v2

    int-to-short v1, v1

    iput-short v1, v0, w:S

    .line 194
    return-object v0
.end method

.method public static mul(Landroid/renderscript/Short4;S)Landroid/renderscript/Short4;
    .registers 4
    .param p0, "a"    # Landroid/renderscript/Short4;
    .param p1, "b"    # S

    .prologue
    .line 217
    new-instance v0, Landroid/renderscript/Short4;

    invoke-direct {v0}, <init>()V

    .line 218
    .local v0, "result":Landroid/renderscript/Short4;
    iget-short v1, p0, x:S

    mul-int/2addr v1, p1

    int-to-short v1, v1

    iput-short v1, v0, x:S

    .line 219
    iget-short v1, p0, y:S

    mul-int/2addr v1, p1

    int-to-short v1, v1

    iput-short v1, v0, y:S

    .line 220
    iget-short v1, p0, z:S

    mul-int/2addr v1, p1

    int-to-short v1, v1

    iput-short v1, v0, z:S

    .line 221
    iget-short v1, p0, w:S

    mul-int/2addr v1, p1

    int-to-short v1, v1

    iput-short v1, v0, w:S

    .line 223
    return-object v0
.end method

.method public static sub(Landroid/renderscript/Short4;Landroid/renderscript/Short4;)Landroid/renderscript/Short4;
    .registers 5
    .param p0, "a"    # Landroid/renderscript/Short4;
    .param p1, "b"    # Landroid/renderscript/Short4;

    .prologue
    .line 130
    new-instance v0, Landroid/renderscript/Short4;

    invoke-direct {v0}, <init>()V

    .line 131
    .local v0, "result":Landroid/renderscript/Short4;
    iget-short v1, p0, x:S

    iget-short v2, p1, x:S

    sub-int/2addr v1, v2

    int-to-short v1, v1

    iput-short v1, v0, x:S

    .line 132
    iget-short v1, p0, y:S

    iget-short v2, p1, y:S

    sub-int/2addr v1, v2

    int-to-short v1, v1

    iput-short v1, v0, y:S

    .line 133
    iget-short v1, p0, z:S

    iget-short v2, p1, z:S

    sub-int/2addr v1, v2

    int-to-short v1, v1

    iput-short v1, v0, z:S

    .line 134
    iget-short v1, p0, w:S

    iget-short v2, p1, w:S

    sub-int/2addr v1, v2

    int-to-short v1, v1

    iput-short v1, v0, w:S

    .line 136
    return-object v0
.end method

.method public static sub(Landroid/renderscript/Short4;S)Landroid/renderscript/Short4;
    .registers 4
    .param p0, "a"    # Landroid/renderscript/Short4;
    .param p1, "b"    # S

    .prologue
    .line 159
    new-instance v0, Landroid/renderscript/Short4;

    invoke-direct {v0}, <init>()V

    .line 160
    .local v0, "result":Landroid/renderscript/Short4;
    iget-short v1, p0, x:S

    sub-int/2addr v1, p1

    int-to-short v1, v1

    iput-short v1, v0, x:S

    .line 161
    iget-short v1, p0, y:S

    sub-int/2addr v1, p1

    int-to-short v1, v1

    iput-short v1, v0, y:S

    .line 162
    iget-short v1, p0, z:S

    sub-int/2addr v1, p1

    int-to-short v1, v1

    iput-short v1, v0, z:S

    .line 163
    iget-short v1, p0, w:S

    sub-int/2addr v1, p1

    int-to-short v1, v1

    iput-short v1, v0, w:S

    .line 165
    return-object v0
.end method


# virtual methods
.method public add(Landroid/renderscript/Short4;)V
    .registers 4
    .param p1, "a"    # Landroid/renderscript/Short4;

    .prologue
    .line 58
    iget-short v0, p0, x:S

    iget-short v1, p1, x:S

    add-int/2addr v0, v1

    int-to-short v0, v0

    iput-short v0, p0, x:S

    .line 59
    iget-short v0, p0, y:S

    iget-short v1, p1, y:S

    add-int/2addr v0, v1

    int-to-short v0, v0

    iput-short v0, p0, y:S

    .line 60
    iget-short v0, p0, z:S

    iget-short v1, p1, z:S

    add-int/2addr v0, v1

    int-to-short v0, v0

    iput-short v0, p0, z:S

    .line 61
    iget-short v0, p0, w:S

    iget-short v1, p1, w:S

    add-int/2addr v0, v1

    int-to-short v0, v0

    iput-short v0, p0, w:S

    .line 62
    return-void
.end method

.method public add(S)V
    .registers 3
    .param p1, "value"    # S

    .prologue
    .line 87
    iget-short v0, p0, x:S

    add-int/2addr v0, p1

    int-to-short v0, v0

    iput-short v0, p0, x:S

    .line 88
    iget-short v0, p0, y:S

    add-int/2addr v0, p1

    int-to-short v0, v0

    iput-short v0, p0, y:S

    .line 89
    iget-short v0, p0, z:S

    add-int/2addr v0, p1

    int-to-short v0, v0

    iput-short v0, p0, z:S

    .line 90
    iget-short v0, p0, w:S

    add-int/2addr v0, p1

    int-to-short v0, v0

    iput-short v0, p0, w:S

    .line 91
    return-void
.end method

.method public addAt(IS)V
    .registers 5
    .param p1, "i"    # I
    .param p2, "value"    # S

    .prologue
    .line 484
    packed-switch p1, :pswitch_data_28

    .line 498
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    const-string v1, "Index: i"

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 486
    :pswitch_b
    iget-short v0, p0, x:S

    add-int/2addr v0, p2

    int-to-short v0, v0

    iput-short v0, p0, x:S

    .line 496
    :goto_11
    return-void

    .line 489
    :pswitch_12
    iget-short v0, p0, y:S

    add-int/2addr v0, p2

    int-to-short v0, v0

    iput-short v0, p0, y:S

    goto :goto_11

    .line 492
    :pswitch_19
    iget-short v0, p0, z:S

    add-int/2addr v0, p2

    int-to-short v0, v0

    iput-short v0, p0, z:S

    goto :goto_11

    .line 495
    :pswitch_20
    iget-short v0, p0, w:S

    add-int/2addr v0, p2

    int-to-short v0, v0

    iput-short v0, p0, w:S

    goto :goto_11

    .line 484
    nop

    :pswitch_data_28
    .packed-switch 0x0
        :pswitch_b
        :pswitch_12
        :pswitch_19
        :pswitch_20
    .end packed-switch
.end method

.method public addMultiple(Landroid/renderscript/Short4;S)V
    .registers 5
    .param p1, "a"    # Landroid/renderscript/Short4;
    .param p2, "factor"    # S

    .prologue
    .line 389
    iget-short v0, p0, x:S

    iget-short v1, p1, x:S

    mul-int/2addr v1, p2

    add-int/2addr v0, v1

    int-to-short v0, v0

    iput-short v0, p0, x:S

    .line 390
    iget-short v0, p0, y:S

    iget-short v1, p1, y:S

    mul-int/2addr v1, p2

    add-int/2addr v0, v1

    int-to-short v0, v0

    iput-short v0, p0, y:S

    .line 391
    iget-short v0, p0, z:S

    iget-short v1, p1, z:S

    mul-int/2addr v1, p2

    add-int/2addr v0, v1

    int-to-short v0, v0

    iput-short v0, p0, z:S

    .line 392
    iget-short v0, p0, w:S

    iget-short v1, p1, w:S

    mul-int/2addr v1, p2

    add-int/2addr v0, v1

    int-to-short v0, v0

    iput-short v0, p0, w:S

    .line 393
    return-void
.end method

.method public copyTo([SI)V
    .registers 5
    .param p1, "data"    # [S
    .param p2, "offset"    # I

    .prologue
    .line 509
    iget-short v0, p0, x:S

    aput-short v0, p1, p2

    .line 510
    add-int/lit8 v0, p2, 0x1

    iget-short v1, p0, y:S

    aput-short v1, p1, v0

    .line 511
    add-int/lit8 v0, p2, 0x2

    iget-short v1, p0, z:S

    aput-short v1, p1, v0

    .line 512
    add-int/lit8 v0, p2, 0x3

    iget-short v1, p0, w:S

    aput-short v1, p1, v0

    .line 513
    return-void
.end method

.method public div(Landroid/renderscript/Short4;)V
    .registers 4
    .param p1, "a"    # Landroid/renderscript/Short4;

    .prologue
    .line 232
    iget-short v0, p0, x:S

    iget-short v1, p1, x:S

    div-int/2addr v0, v1

    int-to-short v0, v0

    iput-short v0, p0, x:S

    .line 233
    iget-short v0, p0, y:S

    iget-short v1, p1, y:S

    div-int/2addr v0, v1

    int-to-short v0, v0

    iput-short v0, p0, y:S

    .line 234
    iget-short v0, p0, z:S

    iget-short v1, p1, z:S

    div-int/2addr v0, v1

    int-to-short v0, v0

    iput-short v0, p0, z:S

    .line 235
    iget-short v0, p0, w:S

    iget-short v1, p1, w:S

    div-int/2addr v0, v1

    int-to-short v0, v0

    iput-short v0, p0, w:S

    .line 236
    return-void
.end method

.method public div(S)V
    .registers 3
    .param p1, "value"    # S

    .prologue
    .line 261
    iget-short v0, p0, x:S

    div-int/2addr v0, p1

    int-to-short v0, v0

    iput-short v0, p0, x:S

    .line 262
    iget-short v0, p0, y:S

    div-int/2addr v0, p1

    int-to-short v0, v0

    iput-short v0, p0, y:S

    .line 263
    iget-short v0, p0, z:S

    div-int/2addr v0, p1

    int-to-short v0, v0

    iput-short v0, p0, z:S

    .line 264
    iget-short v0, p0, w:S

    div-int/2addr v0, p1

    int-to-short v0, v0

    iput-short v0, p0, w:S

    .line 265
    return-void
.end method

.method public dotProduct(Landroid/renderscript/Short4;)S
    .registers 5
    .param p1, "a"    # Landroid/renderscript/Short4;

    .prologue
    .line 368
    iget-short v0, p0, x:S

    iget-short v1, p1, x:S

    mul-int/2addr v0, v1

    iget-short v1, p0, y:S

    iget-short v2, p1, y:S

    mul-int/2addr v1, v2

    add-int/2addr v0, v1

    iget-short v1, p0, z:S

    iget-short v2, p1, z:S

    mul-int/2addr v1, v2

    add-int/2addr v0, v1

    iget-short v1, p0, w:S

    iget-short v2, p1, w:S

    mul-int/2addr v1, v2

    add-int/2addr v0, v1

    int-to-short v0, v0

    return v0
.end method

.method public elementSum()S
    .registers 3

    .prologue
    .line 428
    iget-short v0, p0, x:S

    iget-short v1, p0, y:S

    add-int/2addr v0, v1

    iget-short v1, p0, z:S

    add-int/2addr v0, v1

    iget-short v1, p0, w:S

    add-int/2addr v0, v1

    int-to-short v0, v0

    return v0
.end method

.method public get(I)S
    .registers 4
    .param p1, "i"    # I

    .prologue
    .line 438
    packed-switch p1, :pswitch_data_18

    .line 448
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    const-string v1, "Index: i"

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 440
    :pswitch_b
    iget-short v0, p0, x:S

    .line 446
    :goto_d
    return v0

    .line 442
    :pswitch_e
    iget-short v0, p0, y:S

    goto :goto_d

    .line 444
    :pswitch_11
    iget-short v0, p0, z:S

    goto :goto_d

    .line 446
    :pswitch_14
    iget-short v0, p0, w:S

    goto :goto_d

    .line 438
    nop

    :pswitch_data_18
    .packed-switch 0x0
        :pswitch_b
        :pswitch_e
        :pswitch_11
        :pswitch_14
    .end packed-switch
.end method

.method public length()S
    .registers 2

    .prologue
    .line 348
    const/4 v0, 0x4

    return v0
.end method

.method public mod(Landroid/renderscript/Short4;)V
    .registers 4
    .param p1, "a"    # Landroid/renderscript/Short4;

    .prologue
    .line 290
    iget-short v0, p0, x:S

    iget-short v1, p1, x:S

    rem-int/2addr v0, v1

    int-to-short v0, v0

    iput-short v0, p0, x:S

    .line 291
    iget-short v0, p0, y:S

    iget-short v1, p1, y:S

    rem-int/2addr v0, v1

    int-to-short v0, v0

    iput-short v0, p0, y:S

    .line 292
    iget-short v0, p0, z:S

    iget-short v1, p1, z:S

    rem-int/2addr v0, v1

    int-to-short v0, v0

    iput-short v0, p0, z:S

    .line 293
    iget-short v0, p0, w:S

    iget-short v1, p1, w:S

    rem-int/2addr v0, v1

    int-to-short v0, v0

    iput-short v0, p0, w:S

    .line 294
    return-void
.end method

.method public mod(S)V
    .registers 3
    .param p1, "value"    # S

    .prologue
    .line 319
    iget-short v0, p0, x:S

    rem-int/2addr v0, p1

    int-to-short v0, v0

    iput-short v0, p0, x:S

    .line 320
    iget-short v0, p0, y:S

    rem-int/2addr v0, p1

    int-to-short v0, v0

    iput-short v0, p0, y:S

    .line 321
    iget-short v0, p0, z:S

    rem-int/2addr v0, p1

    int-to-short v0, v0

    iput-short v0, p0, z:S

    .line 322
    iget-short v0, p0, w:S

    rem-int/2addr v0, p1

    int-to-short v0, v0

    iput-short v0, p0, w:S

    .line 323
    return-void
.end method

.method public mul(Landroid/renderscript/Short4;)V
    .registers 4
    .param p1, "a"    # Landroid/renderscript/Short4;

    .prologue
    .line 174
    iget-short v0, p0, x:S

    iget-short v1, p1, x:S

    mul-int/2addr v0, v1

    int-to-short v0, v0

    iput-short v0, p0, x:S

    .line 175
    iget-short v0, p0, y:S

    iget-short v1, p1, y:S

    mul-int/2addr v0, v1

    int-to-short v0, v0

    iput-short v0, p0, y:S

    .line 176
    iget-short v0, p0, z:S

    iget-short v1, p1, z:S

    mul-int/2addr v0, v1

    int-to-short v0, v0

    iput-short v0, p0, z:S

    .line 177
    iget-short v0, p0, w:S

    iget-short v1, p1, w:S

    mul-int/2addr v0, v1

    int-to-short v0, v0

    iput-short v0, p0, w:S

    .line 178
    return-void
.end method

.method public mul(S)V
    .registers 3
    .param p1, "value"    # S

    .prologue
    .line 203
    iget-short v0, p0, x:S

    mul-int/2addr v0, p1

    int-to-short v0, v0

    iput-short v0, p0, x:S

    .line 204
    iget-short v0, p0, y:S

    mul-int/2addr v0, p1

    int-to-short v0, v0

    iput-short v0, p0, y:S

    .line 205
    iget-short v0, p0, z:S

    mul-int/2addr v0, p1

    int-to-short v0, v0

    iput-short v0, p0, z:S

    .line 206
    iget-short v0, p0, w:S

    mul-int/2addr v0, p1

    int-to-short v0, v0

    iput-short v0, p0, w:S

    .line 207
    return-void
.end method

.method public negate()V
    .registers 2

    .prologue
    .line 355
    iget-short v0, p0, x:S

    neg-int v0, v0

    int-to-short v0, v0

    iput-short v0, p0, x:S

    .line 356
    iget-short v0, p0, y:S

    neg-int v0, v0

    int-to-short v0, v0

    iput-short v0, p0, y:S

    .line 357
    iget-short v0, p0, z:S

    neg-int v0, v0

    int-to-short v0, v0

    iput-short v0, p0, z:S

    .line 358
    iget-short v0, p0, w:S

    neg-int v0, v0

    int-to-short v0, v0

    iput-short v0, p0, w:S

    .line 359
    return-void
.end method

.method public set(Landroid/renderscript/Short4;)V
    .registers 3
    .param p1, "a"    # Landroid/renderscript/Short4;

    .prologue
    .line 401
    iget-short v0, p1, x:S

    iput-short v0, p0, x:S

    .line 402
    iget-short v0, p1, y:S

    iput-short v0, p0, y:S

    .line 403
    iget-short v0, p1, z:S

    iput-short v0, p0, z:S

    .line 404
    iget-short v0, p1, w:S

    iput-short v0, p0, w:S

    .line 405
    return-void
.end method

.method public setAt(IS)V
    .registers 5
    .param p1, "i"    # I
    .param p2, "value"    # S

    .prologue
    .line 459
    packed-switch p1, :pswitch_data_18

    .line 473
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    const-string v1, "Index: i"

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 461
    :pswitch_b
    iput-short p2, p0, x:S

    .line 471
    :goto_d
    return-void

    .line 464
    :pswitch_e
    iput-short p2, p0, y:S

    goto :goto_d

    .line 467
    :pswitch_11
    iput-short p2, p0, z:S

    goto :goto_d

    .line 470
    :pswitch_14
    iput-short p2, p0, w:S

    goto :goto_d

    .line 459
    nop

    :pswitch_data_18
    .packed-switch 0x0
        :pswitch_b
        :pswitch_e
        :pswitch_11
        :pswitch_14
    .end packed-switch
.end method

.method public setValues(SSSS)V
    .registers 5
    .param p1, "a"    # S
    .param p2, "b"    # S
    .param p3, "c"    # S
    .param p4, "d"    # S

    .prologue
    .line 416
    iput-short p1, p0, x:S

    .line 417
    iput-short p2, p0, y:S

    .line 418
    iput-short p3, p0, z:S

    .line 419
    iput-short p4, p0, w:S

    .line 420
    return-void
.end method

.method public sub(Landroid/renderscript/Short4;)V
    .registers 4
    .param p1, "a"    # Landroid/renderscript/Short4;

    .prologue
    .line 116
    iget-short v0, p0, x:S

    iget-short v1, p1, x:S

    sub-int/2addr v0, v1

    int-to-short v0, v0

    iput-short v0, p0, x:S

    .line 117
    iget-short v0, p0, y:S

    iget-short v1, p1, y:S

    sub-int/2addr v0, v1

    int-to-short v0, v0

    iput-short v0, p0, y:S

    .line 118
    iget-short v0, p0, z:S

    iget-short v1, p1, z:S

    sub-int/2addr v0, v1

    int-to-short v0, v0

    iput-short v0, p0, z:S

    .line 119
    iget-short v0, p0, w:S

    iget-short v1, p1, w:S

    sub-int/2addr v0, v1

    int-to-short v0, v0

    iput-short v0, p0, w:S

    .line 120
    return-void
.end method

.method public sub(S)V
    .registers 3
    .param p1, "value"    # S

    .prologue
    .line 145
    iget-short v0, p0, x:S

    sub-int/2addr v0, p1

    int-to-short v0, v0

    iput-short v0, p0, x:S

    .line 146
    iget-short v0, p0, y:S

    sub-int/2addr v0, p1

    int-to-short v0, v0

    iput-short v0, p0, y:S

    .line 147
    iget-short v0, p0, z:S

    sub-int/2addr v0, p1

    int-to-short v0, v0

    iput-short v0, p0, z:S

    .line 148
    iget-short v0, p0, w:S

    sub-int/2addr v0, p1

    int-to-short v0, v0

    iput-short v0, p0, w:S

    .line 149
    return-void
.end method
