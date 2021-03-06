.class public Landroid/renderscript/Program;
.super Landroid/renderscript/BaseObj;
.source "Program.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/renderscript/Program$BaseProgramBuilder;,
        Landroid/renderscript/Program$ProgramParam;,
        Landroid/renderscript/Program$TextureType;
    }
.end annotation


# static fields
.field static final MAX_CONSTANT:I = 0x8

.field static final MAX_INPUT:I = 0x8

.field static final MAX_OUTPUT:I = 0x8

.field static final MAX_TEXTURE:I = 0x8


# instance fields
.field mConstants:[Landroid/renderscript/Type;

.field mInputs:[Landroid/renderscript/Element;

.field mOutputs:[Landroid/renderscript/Element;

.field mShader:Ljava/lang/String;

.field mTextureCount:I

.field mTextureNames:[Ljava/lang/String;

.field mTextures:[Landroid/renderscript/Program$TextureType;


# direct methods
.method constructor <init>(JLandroid/renderscript/RenderScript;)V
    .registers 5
    .param p1, "id"    # J
    .param p3, "rs"    # Landroid/renderscript/RenderScript;

    .prologue
    .line 78
    invoke-direct {p0, p1, p2, p3}, Landroid/renderscript/BaseObj;-><init>(JLandroid/renderscript/RenderScript;)V

    .line 79
    return-void
.end method


# virtual methods
.method public bindConstants(Landroid/renderscript/Allocation;I)V
    .registers 9
    .param p1, "a"    # Landroid/renderscript/Allocation;
    .param p2, "slot"    # I

    .prologue
    .line 146
    if-ltz p2, :cond_7

    iget-object v0, p0, mConstants:[Landroid/renderscript/Type;

    array-length v0, v0

    if-lt p2, v0, :cond_f

    .line 147
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Slot ID out of range."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 149
    :cond_f
    if-eqz p1, :cond_31

    invoke-virtual {p1}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v0

    iget-object v1, p0, mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v0, v1}, Landroid/renderscript/Type;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v0

    iget-object v2, p0, mConstants:[Landroid/renderscript/Type;

    aget-object v2, v2, p2

    iget-object v3, p0, mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v2, v3}, Landroid/renderscript/Type;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-eqz v0, :cond_31

    .line 151
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Allocation type does not match slot type."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 153
    :cond_31
    if-eqz p1, :cond_46

    iget-object v0, p0, mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {p1, v0}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v4

    .line 154
    .local v4, "id":J
    :goto_39
    iget-object v0, p0, mRS:Landroid/renderscript/RenderScript;

    iget-object v1, p0, mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {p0, v1}, getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v1

    move v3, p2

    invoke-virtual/range {v0 .. v5}, Landroid/renderscript/RenderScript;->nProgramBindConstants(JIJ)V

    .line 155
    return-void

    .line 153
    .end local v4    # "id":J
    :cond_46
    const-wide/16 v4, 0x0

    goto :goto_39
.end method

.method public bindSampler(Landroid/renderscript/Sampler;I)V
    .registers 9
    .param p1, "vs"    # Landroid/renderscript/Sampler;
    .param p2, "slot"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 190
    iget-object v0, p0, mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v0}, Landroid/renderscript/RenderScript;->validate()V

    .line 191
    if-ltz p2, :cond_b

    iget v0, p0, mTextureCount:I

    if-lt p2, v0, :cond_13

    .line 192
    :cond_b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Slot ID out of range."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 195
    :cond_13
    if-eqz p1, :cond_28

    iget-object v0, p0, mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {p1, v0}, Landroid/renderscript/Sampler;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v4

    .line 196
    .local v4, "id":J
    :goto_1b
    iget-object v0, p0, mRS:Landroid/renderscript/RenderScript;

    iget-object v1, p0, mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {p0, v1}, getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v1

    move v3, p2

    invoke-virtual/range {v0 .. v5}, Landroid/renderscript/RenderScript;->nProgramBindSampler(JIJ)V

    .line 197
    return-void

    .line 195
    .end local v4    # "id":J
    :cond_28
    const-wide/16 v4, 0x0

    goto :goto_1b
.end method

.method public bindTexture(Landroid/renderscript/Allocation;I)V
    .registers 9
    .param p1, "va"    # Landroid/renderscript/Allocation;
    .param p2, "slot"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 166
    iget-object v0, p0, mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v0}, Landroid/renderscript/RenderScript;->validate()V

    .line 167
    if-ltz p2, :cond_b

    iget v0, p0, mTextureCount:I

    if-lt p2, v0, :cond_13

    .line 168
    :cond_b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Slot ID out of range."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 170
    :cond_13
    if-eqz p1, :cond_2f

    invoke-virtual {p1}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v0

    invoke-virtual {v0}, Landroid/renderscript/Type;->hasFaces()Z

    move-result v0

    if-eqz v0, :cond_2f

    iget-object v0, p0, mTextures:[Landroid/renderscript/Program$TextureType;

    aget-object v0, v0, p2

    sget-object v1, Landroid/renderscript/Program$TextureType;->TEXTURE_CUBE:Landroid/renderscript/Program$TextureType;

    if-eq v0, v1, :cond_2f

    .line 172
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot bind cubemap to 2d texture slot"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 175
    :cond_2f
    if-eqz p1, :cond_44

    iget-object v0, p0, mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {p1, v0}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v4

    .line 176
    .local v4, "id":J
    :goto_37
    iget-object v0, p0, mRS:Landroid/renderscript/RenderScript;

    iget-object v1, p0, mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {p0, v1}, getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v1

    move v3, p2

    invoke-virtual/range {v0 .. v5}, Landroid/renderscript/RenderScript;->nProgramBindTexture(JIJ)V

    .line 177
    return-void

    .line 175
    .end local v4    # "id":J
    :cond_44
    const-wide/16 v4, 0x0

    goto :goto_37
.end method

.method public getConstant(I)Landroid/renderscript/Type;
    .registers 4
    .param p1, "slot"    # I

    .prologue
    .line 98
    if-ltz p1, :cond_7

    iget-object v0, p0, mConstants:[Landroid/renderscript/Type;

    array-length v0, v0

    if-lt p1, v0, :cond_f

    .line 99
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Slot ID out of range."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 101
    :cond_f
    iget-object v0, p0, mConstants:[Landroid/renderscript/Type;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getConstantCount()I
    .registers 2

    .prologue
    .line 87
    iget-object v0, p0, mConstants:[Landroid/renderscript/Type;

    if-eqz v0, :cond_8

    iget-object v0, p0, mConstants:[Landroid/renderscript/Type;

    array-length v0, v0

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public getTextureCount()I
    .registers 2

    .prologue
    .line 109
    iget v0, p0, mTextureCount:I

    return v0
.end method

.method public getTextureName(I)Ljava/lang/String;
    .registers 4
    .param p1, "slot"    # I

    .prologue
    .line 131
    if-ltz p1, :cond_6

    iget v0, p0, mTextureCount:I

    if-lt p1, v0, :cond_e

    .line 132
    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Slot ID out of range."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 134
    :cond_e
    iget-object v0, p0, mTextureNames:[Ljava/lang/String;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getTextureType(I)Landroid/renderscript/Program$TextureType;
    .registers 4
    .param p1, "slot"    # I

    .prologue
    .line 118
    if-ltz p1, :cond_6

    iget v0, p0, mTextureCount:I

    if-lt p1, v0, :cond_e

    .line 119
    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Slot ID out of range."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 121
    :cond_e
    iget-object v0, p0, mTextures:[Landroid/renderscript/Program$TextureType;

    aget-object v0, v0, p1

    return-object v0
.end method
