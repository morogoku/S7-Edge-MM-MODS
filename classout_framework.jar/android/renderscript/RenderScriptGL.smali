.class public Landroid/renderscript/RenderScriptGL;
.super Landroid/renderscript/RenderScript;
.source "RenderScriptGL.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/renderscript/RenderScriptGL$SurfaceConfig;
    }
.end annotation


# instance fields
.field mHeight:I

.field mSurfaceConfig:Landroid/renderscript/RenderScriptGL$SurfaceConfig;

.field mWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/renderscript/RenderScriptGL$SurfaceConfig;)V
    .registers 23
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "sc"    # Landroid/renderscript/RenderScriptGL$SurfaceConfig;

    .prologue
    .line 173
    invoke-direct/range {p0 .. p1}, Landroid/renderscript/RenderScript;-><init>(Landroid/content/Context;)V

    .line 174
    new-instance v2, Landroid/renderscript/RenderScriptGL$SurfaceConfig;

    move-object/from16 v0, p2

    invoke-direct {v2, v0}, Landroid/renderscript/RenderScriptGL$SurfaceConfig;-><init>(Landroid/renderscript/RenderScriptGL$SurfaceConfig;)V

    move-object/from16 v0, p0

    iput-object v2, v0, mSurfaceConfig:Landroid/renderscript/RenderScriptGL$SurfaceConfig;

    .line 176
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget v7, v2, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 178
    .local v7, "sdkVersion":I
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, mWidth:I

    .line 179
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, mHeight:I

    .line 180
    invoke-virtual/range {p0 .. p0}, nDeviceCreate()J

    move-result-wide v2

    move-object/from16 v0, p0

    iput-wide v2, v0, mDev:J

    .line 181
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v0, v2, Landroid/util/DisplayMetrics;->densityDpi:I

    move/from16 v19, v0

    .line 182
    .local v19, "dpi":I
    move-object/from16 v0, p0

    iget-wide v4, v0, mDev:J

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v2, v0, mSurfaceConfig:Landroid/renderscript/RenderScriptGL$SurfaceConfig;

    iget v8, v2, Landroid/renderscript/RenderScriptGL$SurfaceConfig;->mColorMin:I

    move-object/from16 v0, p0

    iget-object v2, v0, mSurfaceConfig:Landroid/renderscript/RenderScriptGL$SurfaceConfig;

    iget v9, v2, Landroid/renderscript/RenderScriptGL$SurfaceConfig;->mColorPref:I

    move-object/from16 v0, p0

    iget-object v2, v0, mSurfaceConfig:Landroid/renderscript/RenderScriptGL$SurfaceConfig;

    iget v10, v2, Landroid/renderscript/RenderScriptGL$SurfaceConfig;->mAlphaMin:I

    move-object/from16 v0, p0

    iget-object v2, v0, mSurfaceConfig:Landroid/renderscript/RenderScriptGL$SurfaceConfig;

    iget v11, v2, Landroid/renderscript/RenderScriptGL$SurfaceConfig;->mAlphaPref:I

    move-object/from16 v0, p0

    iget-object v2, v0, mSurfaceConfig:Landroid/renderscript/RenderScriptGL$SurfaceConfig;

    iget v12, v2, Landroid/renderscript/RenderScriptGL$SurfaceConfig;->mDepthMin:I

    move-object/from16 v0, p0

    iget-object v2, v0, mSurfaceConfig:Landroid/renderscript/RenderScriptGL$SurfaceConfig;

    iget v13, v2, Landroid/renderscript/RenderScriptGL$SurfaceConfig;->mDepthPref:I

    move-object/from16 v0, p0

    iget-object v2, v0, mSurfaceConfig:Landroid/renderscript/RenderScriptGL$SurfaceConfig;

    iget v14, v2, Landroid/renderscript/RenderScriptGL$SurfaceConfig;->mStencilMin:I

    move-object/from16 v0, p0

    iget-object v2, v0, mSurfaceConfig:Landroid/renderscript/RenderScriptGL$SurfaceConfig;

    iget v15, v2, Landroid/renderscript/RenderScriptGL$SurfaceConfig;->mStencilPref:I

    move-object/from16 v0, p0

    iget-object v2, v0, mSurfaceConfig:Landroid/renderscript/RenderScriptGL$SurfaceConfig;

    iget v0, v2, Landroid/renderscript/RenderScriptGL$SurfaceConfig;->mSamplesMin:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v2, v0, mSurfaceConfig:Landroid/renderscript/RenderScriptGL$SurfaceConfig;

    iget v0, v2, Landroid/renderscript/RenderScriptGL$SurfaceConfig;->mSamplesPref:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v2, v0, mSurfaceConfig:Landroid/renderscript/RenderScriptGL$SurfaceConfig;

    iget v0, v2, Landroid/renderscript/RenderScriptGL$SurfaceConfig;->mSamplesQ:F

    move/from16 v18, v0

    move-object/from16 v3, p0

    invoke-virtual/range {v3 .. v19}, nContextCreateGL(JIIIIIIIIIIIIFI)J

    move-result-wide v2

    move-object/from16 v0, p0

    iput-wide v2, v0, mContext:J

    .line 189
    move-object/from16 v0, p0

    iget-wide v2, v0, mContext:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_9b

    .line 190
    new-instance v2, Landroid/renderscript/RSDriverException;

    const-string v3, "Failed to create RS context."

    invoke-direct {v2, v3}, Landroid/renderscript/RSDriverException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 192
    :cond_9b
    new-instance v2, Landroid/renderscript/RenderScript$MessageThread;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Landroid/renderscript/RenderScript$MessageThread;-><init>(Landroid/renderscript/RenderScript;)V

    move-object/from16 v0, p0

    iput-object v2, v0, mMessageThread:Landroid/renderscript/RenderScript$MessageThread;

    .line 193
    move-object/from16 v0, p0

    iget-object v2, v0, mMessageThread:Landroid/renderscript/RenderScript$MessageThread;

    invoke-virtual {v2}, Landroid/renderscript/RenderScript$MessageThread;->start()V

    .line 194
    return-void
.end method


# virtual methods
.method public bindProgramFragment(Landroid/renderscript/ProgramFragment;)V
    .registers 4
    .param p1, "p"    # Landroid/renderscript/ProgramFragment;

    .prologue
    .line 309
    invoke-virtual {p0}, validate()V

    .line 310
    invoke-virtual {p0, p1}, safeID(Landroid/renderscript/BaseObj;)J

    move-result-wide v0

    long-to-int v0, v0

    int-to-long v0, v0

    invoke-virtual {p0, v0, v1}, nContextBindProgramFragment(J)V

    .line 311
    return-void
.end method

.method public bindProgramRaster(Landroid/renderscript/ProgramRaster;)V
    .registers 4
    .param p1, "p"    # Landroid/renderscript/ProgramRaster;

    .prologue
    .line 321
    invoke-virtual {p0}, validate()V

    .line 322
    invoke-virtual {p0, p1}, safeID(Landroid/renderscript/BaseObj;)J

    move-result-wide v0

    long-to-int v0, v0

    int-to-long v0, v0

    invoke-virtual {p0, v0, v1}, nContextBindProgramRaster(J)V

    .line 323
    return-void
.end method

.method public bindProgramStore(Landroid/renderscript/ProgramStore;)V
    .registers 4
    .param p1, "p"    # Landroid/renderscript/ProgramStore;

    .prologue
    .line 297
    invoke-virtual {p0}, validate()V

    .line 298
    invoke-virtual {p0, p1}, safeID(Landroid/renderscript/BaseObj;)J

    move-result-wide v0

    long-to-int v0, v0

    int-to-long v0, v0

    invoke-virtual {p0, v0, v1}, nContextBindProgramStore(J)V

    .line 299
    return-void
.end method

.method public bindProgramVertex(Landroid/renderscript/ProgramVertex;)V
    .registers 4
    .param p1, "p"    # Landroid/renderscript/ProgramVertex;

    .prologue
    .line 333
    invoke-virtual {p0}, validate()V

    .line 334
    invoke-virtual {p0, p1}, safeID(Landroid/renderscript/BaseObj;)J

    move-result-wide v0

    long-to-int v0, v0

    int-to-long v0, v0

    invoke-virtual {p0, v0, v1}, nContextBindProgramVertex(J)V

    .line 335
    return-void
.end method

.method public bindRootScript(Landroid/renderscript/Script;)V
    .registers 4
    .param p1, "s"    # Landroid/renderscript/Script;

    .prologue
    .line 285
    invoke-virtual {p0}, validate()V

    .line 286
    invoke-virtual {p0, p1}, safeID(Landroid/renderscript/BaseObj;)J

    move-result-wide v0

    long-to-int v0, v0

    int-to-long v0, v0

    invoke-virtual {p0, v0, v1}, nContextBindRootScript(J)V

    .line 287
    return-void
.end method

.method public getHeight()I
    .registers 2

    .prologue
    .line 244
    iget v0, p0, mHeight:I

    return v0
.end method

.method public getWidth()I
    .registers 2

    .prologue
    .line 254
    iget v0, p0, mWidth:I

    return v0
.end method

.method public pause()V
    .registers 1

    .prologue
    .line 263
    invoke-virtual {p0}, validate()V

    .line 264
    invoke-virtual {p0}, nContextPause()V

    .line 265
    return-void
.end method

.method public resume()V
    .registers 1

    .prologue
    .line 273
    invoke-virtual {p0}, validate()V

    .line 274
    invoke-virtual {p0}, nContextResume()V

    .line 275
    return-void
.end method

.method public setSurface(Landroid/view/SurfaceHolder;II)V
    .registers 5
    .param p1, "sur"    # Landroid/view/SurfaceHolder;
    .param p2, "w"    # I
    .param p3, "h"    # I

    .prologue
    .line 206
    invoke-virtual {p0}, validate()V

    .line 207
    const/4 v0, 0x0

    .line 208
    .local v0, "s":Landroid/view/Surface;
    if-eqz p1, :cond_a

    .line 209
    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v0

    .line 211
    :cond_a
    iput p2, p0, mWidth:I

    .line 212
    iput p3, p0, mHeight:I

    .line 213
    invoke-virtual {p0, p2, p3, v0}, nContextSetSurface(IILandroid/view/Surface;)V

    .line 214
    return-void
.end method

.method public setSurfaceTexture(Landroid/graphics/SurfaceTexture;II)V
    .registers 5
    .param p1, "sur"    # Landroid/graphics/SurfaceTexture;
    .param p2, "w"    # I
    .param p3, "h"    # I

    .prologue
    .line 225
    invoke-virtual {p0}, validate()V

    .line 228
    const/4 v0, 0x0

    .line 229
    .local v0, "s":Landroid/view/Surface;
    if-eqz p1, :cond_b

    .line 230
    new-instance v0, Landroid/view/Surface;

    .end local v0    # "s":Landroid/view/Surface;
    invoke-direct {v0, p1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    .line 232
    .restart local v0    # "s":Landroid/view/Surface;
    :cond_b
    iput p2, p0, mWidth:I

    .line 233
    iput p3, p0, mHeight:I

    .line 234
    invoke-virtual {p0, p2, p3, v0}, nContextSetSurface(IILandroid/view/Surface;)V

    .line 235
    return-void
.end method
