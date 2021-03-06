.class public Landroid/text/style/ImageSpan;
.super Landroid/text/style/DynamicDrawableSpan;
.source "ImageSpan.java"


# instance fields
.field private mContentUri:Landroid/net/Uri;

.field private mContext:Landroid/content/Context;

.field private mDrawable:Landroid/graphics/drawable/Drawable;

.field private mResourceId:I

.field private mSource:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "resourceId"    # I

    .prologue
    .line 115
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, <init>(Landroid/content/Context;II)V

    .line 116
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;II)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "resourceId"    # I
    .param p3, "verticalAlignment"    # I

    .prologue
    .line 123
    invoke-direct {p0, p3}, Landroid/text/style/DynamicDrawableSpan;-><init>(I)V

    .line 124
    iput-object p1, p0, mContext:Landroid/content/Context;

    .line 125
    iput p2, p0, mResourceId:I

    .line 126
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/graphics/Bitmap;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "b"    # Landroid/graphics/Bitmap;

    .prologue
    .line 54
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, <init>(Landroid/content/Context;Landroid/graphics/Bitmap;I)V

    .line 55
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/graphics/Bitmap;I)V
    .registers 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "b"    # Landroid/graphics/Bitmap;
    .param p3, "verticalAlignment"    # I

    .prologue
    const/4 v3, 0x0

    .line 62
    invoke-direct {p0, p3}, Landroid/text/style/DynamicDrawableSpan;-><init>(I)V

    .line 63
    iput-object p1, p0, mContext:Landroid/content/Context;

    .line 64
    if-eqz p1, :cond_29

    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-direct {v2, v4, p2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    :goto_11
    iput-object v2, p0, mDrawable:Landroid/graphics/drawable/Drawable;

    .line 67
    iget-object v2, p0, mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    .line 68
    .local v1, "width":I
    iget-object v2, p0, mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    .line 69
    .local v0, "height":I
    iget-object v2, p0, mDrawable:Landroid/graphics/drawable/Drawable;

    if-lez v1, :cond_2f

    .end local v1    # "width":I
    :goto_23
    if-lez v0, :cond_31

    .end local v0    # "height":I
    :goto_25
    invoke-virtual {v2, v3, v3, v1, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 70
    return-void

    .line 64
    :cond_29
    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v2, p2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    goto :goto_11

    .restart local v0    # "height":I
    .restart local v1    # "width":I
    :cond_2f
    move v1, v3

    .line 69
    goto :goto_23

    .end local v1    # "width":I
    :cond_31
    move v0, v3

    goto :goto_25
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/net/Uri;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    .line 100
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, <init>(Landroid/content/Context;Landroid/net/Uri;I)V

    .line 101
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/net/Uri;I)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "verticalAlignment"    # I

    .prologue
    .line 108
    invoke-direct {p0, p3}, Landroid/text/style/DynamicDrawableSpan;-><init>(I)V

    .line 109
    iput-object p1, p0, mContext:Landroid/content/Context;

    .line 110
    iput-object p2, p0, mContentUri:Landroid/net/Uri;

    .line 111
    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, mSource:Ljava/lang/String;

    .line 112
    return-void
.end method

.method public constructor <init>(Landroid/graphics/Bitmap;)V
    .registers 4
    .param p1, "b"    # Landroid/graphics/Bitmap;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 42
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1}, <init>(Landroid/content/Context;Landroid/graphics/Bitmap;I)V

    .line 43
    return-void
.end method

.method public constructor <init>(Landroid/graphics/Bitmap;I)V
    .registers 4
    .param p1, "b"    # Landroid/graphics/Bitmap;
    .param p2, "verticalAlignment"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 50
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2}, <init>(Landroid/content/Context;Landroid/graphics/Bitmap;I)V

    .line 51
    return-void
.end method

.method public constructor <init>(Landroid/graphics/drawable/Drawable;)V
    .registers 3
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 73
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, <init>(Landroid/graphics/drawable/Drawable;I)V

    .line 74
    return-void
.end method

.method public constructor <init>(Landroid/graphics/drawable/Drawable;I)V
    .registers 3
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;
    .param p2, "verticalAlignment"    # I

    .prologue
    .line 81
    invoke-direct {p0, p2}, Landroid/text/style/DynamicDrawableSpan;-><init>(I)V

    .line 82
    iput-object p1, p0, mDrawable:Landroid/graphics/drawable/Drawable;

    .line 83
    return-void
.end method

.method public constructor <init>(Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V
    .registers 4
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;
    .param p2, "source"    # Ljava/lang/String;

    .prologue
    .line 86
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, <init>(Landroid/graphics/drawable/Drawable;Ljava/lang/String;I)V

    .line 87
    return-void
.end method

.method public constructor <init>(Landroid/graphics/drawable/Drawable;Ljava/lang/String;I)V
    .registers 4
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;
    .param p2, "source"    # Ljava/lang/String;
    .param p3, "verticalAlignment"    # I

    .prologue
    .line 94
    invoke-direct {p0, p3}, Landroid/text/style/DynamicDrawableSpan;-><init>(I)V

    .line 95
    iput-object p1, p0, mDrawable:Landroid/graphics/drawable/Drawable;

    .line 96
    iput-object p2, p0, mSource:Ljava/lang/String;

    .line 97
    return-void
.end method


# virtual methods
.method public getDrawable()Landroid/graphics/drawable/Drawable;
    .registers 10

    .prologue
    .line 130
    const/4 v1, 0x0

    .line 132
    .local v1, "drawable":Landroid/graphics/drawable/Drawable;
    iget-object v5, p0, mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v5, :cond_8

    .line 133
    iget-object v1, p0, mDrawable:Landroid/graphics/drawable/Drawable;

    .line 157
    :goto_7
    return-object v1

    .line 134
    :cond_8
    iget-object v5, p0, mContentUri:Landroid/net/Uri;

    if-eqz v5, :cond_57

    .line 135
    const/4 v0, 0x0

    .line 137
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    :try_start_d
    iget-object v5, p0, mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    iget-object v6, p0, mContentUri:Landroid/net/Uri;

    invoke-virtual {v5, v6}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v4

    .line 139
    .local v4, "is":Ljava/io/InputStream;
    invoke-static {v4}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 140
    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v5, p0, mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-direct {v2, v5, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_28} :catch_3a

    .line 141
    .end local v1    # "drawable":Landroid/graphics/drawable/Drawable;
    .local v2, "drawable":Landroid/graphics/drawable/Drawable;
    const/4 v5, 0x0

    const/4 v6, 0x0

    :try_start_2a
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v7

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v8

    invoke-virtual {v2, v5, v6, v7, v8}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 143
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_38
    .catch Ljava/lang/Exception; {:try_start_2a .. :try_end_38} :catch_8b

    move-object v1, v2

    .line 146
    .end local v2    # "drawable":Landroid/graphics/drawable/Drawable;
    .restart local v1    # "drawable":Landroid/graphics/drawable/Drawable;
    goto :goto_7

    .line 144
    .end local v4    # "is":Ljava/io/InputStream;
    :catch_3a
    move-exception v3

    .line 145
    .local v3, "e":Ljava/lang/Exception;
    :goto_3b
    const-string/jumbo v5, "sms"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to loaded content "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, mContentUri:Landroid/net/Uri;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_7

    .line 149
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_57
    :try_start_57
    iget-object v5, p0, mContext:Landroid/content/Context;

    iget v6, p0, mResourceId:I

    invoke-virtual {v5, v6}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 150
    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v7

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v8

    invoke-virtual {v1, v5, v6, v7, v8}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V
    :try_end_6c
    .catch Ljava/lang/Exception; {:try_start_57 .. :try_end_6c} :catch_6d

    goto :goto_7

    .line 152
    :catch_6d
    move-exception v3

    .line 153
    .restart local v3    # "e":Ljava/lang/Exception;
    const-string/jumbo v5, "sms"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unable to find resource: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, mResourceId:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_7

    .line 144
    .end local v1    # "drawable":Landroid/graphics/drawable/Drawable;
    .end local v3    # "e":Ljava/lang/Exception;
    .restart local v0    # "bitmap":Landroid/graphics/Bitmap;
    .restart local v2    # "drawable":Landroid/graphics/drawable/Drawable;
    .restart local v4    # "is":Ljava/io/InputStream;
    :catch_8b
    move-exception v3

    move-object v1, v2

    .end local v2    # "drawable":Landroid/graphics/drawable/Drawable;
    .restart local v1    # "drawable":Landroid/graphics/drawable/Drawable;
    goto :goto_3b
.end method

.method public getSource()Ljava/lang/String;
    .registers 2

    .prologue
    .line 164
    iget-object v0, p0, mSource:Ljava/lang/String;

    return-object v0
.end method
