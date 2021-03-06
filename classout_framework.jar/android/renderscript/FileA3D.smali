.class public Landroid/renderscript/FileA3D;
.super Landroid/renderscript/BaseObj;
.source "FileA3D.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/renderscript/FileA3D$1;,
        Landroid/renderscript/FileA3D$IndexEntry;,
        Landroid/renderscript/FileA3D$EntryType;
    }
.end annotation


# instance fields
.field mFileEntries:[Landroid/renderscript/FileA3D$IndexEntry;

.field mInputStream:Ljava/io/InputStream;


# direct methods
.method constructor <init>(JLandroid/renderscript/RenderScript;Ljava/io/InputStream;)V
    .registers 6
    .param p1, "id"    # J
    .param p3, "rs"    # Landroid/renderscript/RenderScript;
    .param p4, "stream"    # Ljava/io/InputStream;

    .prologue
    .line 171
    invoke-direct {p0, p1, p2, p3}, Landroid/renderscript/BaseObj;-><init>(JLandroid/renderscript/RenderScript;)V

    .line 172
    iput-object p4, p0, mInputStream:Ljava/io/InputStream;

    .line 173
    return-void
.end method

.method public static createFromAsset(Landroid/renderscript/RenderScript;Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/renderscript/FileA3D;
    .registers 9
    .param p0, "rs"    # Landroid/renderscript/RenderScript;
    .param p1, "mgr"    # Landroid/content/res/AssetManager;
    .param p2, "path"    # Ljava/lang/String;

    .prologue
    .line 232
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 233
    invoke-virtual {p0, p1, p2}, Landroid/renderscript/RenderScript;->nFileA3DCreateFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)J

    move-result-wide v2

    .line 235
    .local v2, "fileId":J
    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-nez v1, :cond_26

    .line 236
    new-instance v1, Landroid/renderscript/RSRuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to create a3d file from asset "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 238
    :cond_26
    new-instance v0, Landroid/renderscript/FileA3D;

    const/4 v1, 0x0

    invoke-direct {v0, v2, v3, p0, v1}, <init>(JLandroid/renderscript/RenderScript;Ljava/io/InputStream;)V

    .line 239
    .local v0, "fa3d":Landroid/renderscript/FileA3D;
    invoke-direct {v0}, initEntries()V

    .line 240
    return-object v0
.end method

.method public static createFromFile(Landroid/renderscript/RenderScript;Ljava/io/File;)Landroid/renderscript/FileA3D;
    .registers 3
    .param p0, "rs"    # Landroid/renderscript/RenderScript;
    .param p1, "path"    # Ljava/io/File;

    .prologue
    .line 273
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, createFromFile(Landroid/renderscript/RenderScript;Ljava/lang/String;)Landroid/renderscript/FileA3D;

    move-result-object v0

    return-object v0
.end method

.method public static createFromFile(Landroid/renderscript/RenderScript;Ljava/lang/String;)Landroid/renderscript/FileA3D;
    .registers 8
    .param p0, "rs"    # Landroid/renderscript/RenderScript;
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 253
    invoke-virtual {p0, p1}, Landroid/renderscript/RenderScript;->nFileA3DCreateFromFile(Ljava/lang/String;)J

    move-result-wide v2

    .line 255
    .local v2, "fileId":J
    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-nez v1, :cond_23

    .line 256
    new-instance v1, Landroid/renderscript/RSRuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to create a3d file from "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 258
    :cond_23
    new-instance v0, Landroid/renderscript/FileA3D;

    const/4 v1, 0x0

    invoke-direct {v0, v2, v3, p0, v1}, <init>(JLandroid/renderscript/RenderScript;Ljava/io/InputStream;)V

    .line 259
    .local v0, "fa3d":Landroid/renderscript/FileA3D;
    invoke-direct {v0}, initEntries()V

    .line 260
    return-object v0
.end method

.method public static createFromResource(Landroid/renderscript/RenderScript;Landroid/content/res/Resources;I)Landroid/renderscript/FileA3D;
    .registers 13
    .param p0, "rs"    # Landroid/renderscript/RenderScript;
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "id"    # I

    .prologue
    .line 288
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 289
    const/4 v6, 0x0

    .line 291
    .local v6, "is":Ljava/io/InputStream;
    :try_start_4
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_7} :catch_38

    move-result-object v6

    .line 296
    const-wide/16 v4, 0x0

    .line 297
    .local v4, "fileId":J
    instance-of v7, v6, Landroid/content/res/AssetManager$AssetInputStream;

    if-eqz v7, :cond_52

    move-object v7, v6

    .line 298
    check-cast v7, Landroid/content/res/AssetManager$AssetInputStream;

    invoke-virtual {v7}, Landroid/content/res/AssetManager$AssetInputStream;->getNativeAsset()J

    move-result-wide v0

    .line 299
    .local v0, "asset":J
    invoke-virtual {p0, v0, v1}, Landroid/renderscript/RenderScript;->nFileA3DCreateFromAssetStream(J)J

    move-result-wide v4

    .line 304
    const-wide/16 v8, 0x0

    cmp-long v7, v4, v8

    if-nez v7, :cond_5a

    .line 305
    new-instance v7, Landroid/renderscript/RSRuntimeException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unable to create a3d file from resource "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 292
    .end local v0    # "asset":J
    .end local v4    # "fileId":J
    :catch_38
    move-exception v2

    .line 293
    .local v2, "e":Ljava/lang/Exception;
    new-instance v7, Landroid/renderscript/RSRuntimeException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unable to open resource "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 301
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v4    # "fileId":J
    :cond_52
    new-instance v7, Landroid/renderscript/RSRuntimeException;

    const-string v8, "Unsupported asset stream"

    invoke-direct {v7, v8}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 307
    .restart local v0    # "asset":J
    :cond_5a
    new-instance v3, Landroid/renderscript/FileA3D;

    invoke-direct {v3, v4, v5, p0, v6}, <init>(JLandroid/renderscript/RenderScript;Ljava/io/InputStream;)V

    .line 308
    .local v3, "fa3d":Landroid/renderscript/FileA3D;
    invoke-direct {v3}, initEntries()V

    .line 309
    return-object v3
.end method

.method private initEntries()V
    .registers 15

    .prologue
    .line 176
    iget-object v0, p0, mRS:Landroid/renderscript/RenderScript;

    iget-object v1, p0, mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {p0, v1}, getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Landroid/renderscript/RenderScript;->nFileA3DGetNumIndexEntries(J)I

    move-result v4

    .line 177
    .local v4, "numFileEntries":I
    if-gtz v4, :cond_f

    .line 190
    :cond_e
    return-void

    .line 181
    :cond_f
    new-array v0, v4, [Landroid/renderscript/FileA3D$IndexEntry;

    iput-object v0, p0, mFileEntries:[Landroid/renderscript/FileA3D$IndexEntry;

    .line 182
    new-array v5, v4, [I

    .line 183
    .local v5, "ids":[I
    new-array v6, v4, [Ljava/lang/String;

    .line 185
    .local v6, "names":[Ljava/lang/String;
    iget-object v1, p0, mRS:Landroid/renderscript/RenderScript;

    iget-object v0, p0, mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {p0, v0}, getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v2

    invoke-virtual/range {v1 .. v6}, Landroid/renderscript/RenderScript;->nFileA3DGetIndexEntries(JI[I[Ljava/lang/String;)V

    .line 187
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_23
    if-ge v9, v4, :cond_e

    .line 188
    iget-object v0, p0, mFileEntries:[Landroid/renderscript/FileA3D$IndexEntry;

    new-instance v7, Landroid/renderscript/FileA3D$IndexEntry;

    iget-object v8, p0, mRS:Landroid/renderscript/RenderScript;

    iget-object v1, p0, mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {p0, v1}, getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v10

    aget-object v12, v6, v9

    aget v1, v5, v9

    invoke-static {v1}, Landroid/renderscript/FileA3D$EntryType;->toEntryType(I)Landroid/renderscript/FileA3D$EntryType;

    move-result-object v13

    invoke-direct/range {v7 .. v13}, Landroid/renderscript/FileA3D$IndexEntry;-><init>(Landroid/renderscript/RenderScript;IJLjava/lang/String;Landroid/renderscript/FileA3D$EntryType;)V

    aput-object v7, v0, v9

    .line 187
    add-int/lit8 v9, v9, 0x1

    goto :goto_23
.end method


# virtual methods
.method public getIndexEntry(I)Landroid/renderscript/FileA3D$IndexEntry;
    .registers 3
    .param p1, "index"    # I

    .prologue
    .line 215
    invoke-virtual {p0}, getIndexEntryCount()I

    move-result v0

    if-eqz v0, :cond_d

    if-ltz p1, :cond_d

    iget-object v0, p0, mFileEntries:[Landroid/renderscript/FileA3D$IndexEntry;

    array-length v0, v0

    if-lt p1, v0, :cond_f

    .line 216
    :cond_d
    const/4 v0, 0x0

    .line 218
    :goto_e
    return-object v0

    :cond_f
    iget-object v0, p0, mFileEntries:[Landroid/renderscript/FileA3D$IndexEntry;

    aget-object v0, v0, p1

    goto :goto_e
.end method

.method public getIndexEntryCount()I
    .registers 2

    .prologue
    .line 199
    iget-object v0, p0, mFileEntries:[Landroid/renderscript/FileA3D$IndexEntry;

    if-nez v0, :cond_6

    .line 200
    const/4 v0, 0x0

    .line 202
    :goto_5
    return v0

    :cond_6
    iget-object v0, p0, mFileEntries:[Landroid/renderscript/FileA3D$IndexEntry;

    array-length v0, v0

    goto :goto_5
.end method
