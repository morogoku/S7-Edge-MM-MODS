.class public Landroid/renderscript/Matrix2f;
.super Ljava/lang/Object;
.source "Matrix2f.java"


# instance fields
.field final mMat:[F


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    const/4 v0, 0x4

    new-array v0, v0, [F

    iput-object v0, p0, mMat:[F

    .line 31
    invoke-virtual {p0}, loadIdentity()V

    .line 32
    return-void
.end method

.method public constructor <init>([F)V
    .registers 5
    .param p1, "dataArray"    # [F

    .prologue
    const/4 v2, 0x0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    const/4 v0, 0x4

    new-array v0, v0, [F

    iput-object v0, p0, mMat:[F

    .line 43
    iget-object v0, p0, mMat:[F

    iget-object v1, p0, mMat:[F

    array-length v1, v1

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy([FI[FII)V

    .line 44
    return-void
.end method


# virtual methods
.method public get(II)F
    .registers 5
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 65
    iget-object v0, p0, mMat:[F

    mul-int/lit8 v1, p1, 0x2

    add-int/2addr v1, p2

    aget v0, v0, v1

    return v0
.end method

.method public getArray()[F
    .registers 2

    .prologue
    .line 53
    iget-object v0, p0, mMat:[F

    return-object v0
.end method

.method public load(Landroid/renderscript/Matrix2f;)V
    .registers 6
    .param p1, "src"    # Landroid/renderscript/Matrix2f;

    .prologue
    const/4 v3, 0x0

    .line 95
    invoke-virtual {p1}, getArray()[F

    move-result-object v0

    iget-object v1, p0, mMat:[F

    iget-object v2, p0, mMat:[F

    array-length v2, v2

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy([FI[FII)V

    .line 96
    return-void
.end method

.method public loadIdentity()V
    .registers 5

    .prologue
    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    .line 82
    iget-object v0, p0, mMat:[F

    const/4 v1, 0x0

    aput v3, v0, v1

    .line 83
    iget-object v0, p0, mMat:[F

    const/4 v1, 0x1

    aput v2, v0, v1

    .line 85
    iget-object v0, p0, mMat:[F

    const/4 v1, 0x2

    aput v2, v0, v1

    .line 86
    iget-object v0, p0, mMat:[F

    const/4 v1, 0x3

    aput v3, v0, v1

    .line 87
    return-void
.end method

.method public loadMultiply(Landroid/renderscript/Matrix2f;Landroid/renderscript/Matrix2f;)V
    .registers 12
    .param p1, "lhs"    # Landroid/renderscript/Matrix2f;
    .param p2, "rhs"    # Landroid/renderscript/Matrix2f;

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 134
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_4
    if-ge v0, v8, :cond_27

    .line 135
    const/4 v3, 0x0

    .line 136
    .local v3, "ri0":F
    const/4 v4, 0x0

    .line 137
    .local v4, "ri1":F
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_9
    if-ge v1, v8, :cond_1e

    .line 138
    invoke-virtual {p2, v0, v1}, get(II)F

    move-result v2

    .line 139
    .local v2, "rhs_ij":F
    invoke-virtual {p1, v1, v6}, get(II)F

    move-result v5

    mul-float/2addr v5, v2

    add-float/2addr v3, v5

    .line 140
    invoke-virtual {p1, v1, v7}, get(II)F

    move-result v5

    mul-float/2addr v5, v2

    add-float/2addr v4, v5

    .line 137
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 142
    .end local v2    # "rhs_ij":F
    :cond_1e
    invoke-virtual {p0, v0, v6, v3}, set(IIF)V

    .line 143
    invoke-virtual {p0, v0, v7, v4}, set(IIF)V

    .line 134
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 145
    .end local v1    # "j":I
    .end local v3    # "ri0":F
    .end local v4    # "ri1":F
    :cond_27
    return-void
.end method

.method public loadRotate(F)V
    .registers 7
    .param p1, "rot"    # F

    .prologue
    .line 105
    const v2, 0x3c8efa35

    mul-float/2addr p1, v2

    .line 106
    float-to-double v2, p1

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    double-to-float v0, v2

    .line 107
    .local v0, "c":F
    float-to-double v2, p1

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    double-to-float v1, v2

    .line 108
    .local v1, "s":F
    iget-object v2, p0, mMat:[F

    const/4 v3, 0x0

    aput v0, v2, v3

    .line 109
    iget-object v2, p0, mMat:[F

    const/4 v3, 0x1

    neg-float v4, v1

    aput v4, v2, v3

    .line 110
    iget-object v2, p0, mMat:[F

    const/4 v3, 0x2

    aput v1, v2, v3

    .line 111
    iget-object v2, p0, mMat:[F

    const/4 v3, 0x3

    aput v0, v2, v3

    .line 112
    return-void
.end method

.method public loadScale(FF)V
    .registers 5
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 121
    invoke-virtual {p0}, loadIdentity()V

    .line 122
    iget-object v0, p0, mMat:[F

    const/4 v1, 0x0

    aput p1, v0, v1

    .line 123
    iget-object v0, p0, mMat:[F

    const/4 v1, 0x3

    aput p2, v0, v1

    .line 124
    return-void
.end method

.method public multiply(Landroid/renderscript/Matrix2f;)V
    .registers 3
    .param p1, "rhs"    # Landroid/renderscript/Matrix2f;

    .prologue
    .line 153
    new-instance v0, Landroid/renderscript/Matrix2f;

    invoke-direct {v0}, <init>()V

    .line 154
    .local v0, "tmp":Landroid/renderscript/Matrix2f;
    invoke-virtual {v0, p0, p1}, loadMultiply(Landroid/renderscript/Matrix2f;Landroid/renderscript/Matrix2f;)V

    .line 155
    invoke-virtual {p0, v0}, load(Landroid/renderscript/Matrix2f;)V

    .line 156
    return-void
.end method

.method public rotate(F)V
    .registers 3
    .param p1, "rot"    # F

    .prologue
    .line 164
    new-instance v0, Landroid/renderscript/Matrix2f;

    invoke-direct {v0}, <init>()V

    .line 165
    .local v0, "tmp":Landroid/renderscript/Matrix2f;
    invoke-virtual {v0, p1}, loadRotate(F)V

    .line 166
    invoke-virtual {p0, v0}, multiply(Landroid/renderscript/Matrix2f;)V

    .line 167
    return-void
.end method

.method public scale(FF)V
    .registers 4
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 176
    new-instance v0, Landroid/renderscript/Matrix2f;

    invoke-direct {v0}, <init>()V

    .line 177
    .local v0, "tmp":Landroid/renderscript/Matrix2f;
    invoke-virtual {v0, p1, p2}, loadScale(FF)V

    .line 178
    invoke-virtual {p0, v0}, multiply(Landroid/renderscript/Matrix2f;)V

    .line 179
    return-void
.end method

.method public set(IIF)V
    .registers 6
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "v"    # F

    .prologue
    .line 75
    iget-object v0, p0, mMat:[F

    mul-int/lit8 v1, p1, 0x2

    add-int/2addr v1, p2

    aput p3, v0, v1

    .line 76
    return-void
.end method

.method public transpose()V
    .registers 6

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 184
    iget-object v1, p0, mMat:[F

    aget v0, v1, v3

    .line 185
    .local v0, "temp":F
    iget-object v1, p0, mMat:[F

    iget-object v2, p0, mMat:[F

    aget v2, v2, v4

    aput v2, v1, v3

    .line 186
    iget-object v1, p0, mMat:[F

    aput v0, v1, v4

    .line 187
    return-void
.end method
