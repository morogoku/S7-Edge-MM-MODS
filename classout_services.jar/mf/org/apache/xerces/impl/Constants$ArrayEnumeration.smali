.class Lmf/org/apache/xerces/impl/Constants$ArrayEnumeration;
.super Ljava/lang/Object;
.source "Constants.java"

# interfaces
.implements Ljava/util/Enumeration;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmf/org/apache/xerces/impl/Constants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ArrayEnumeration"
.end annotation


# instance fields
.field private array:[Ljava/lang/Object;

.field private index:I


# direct methods
.method public constructor <init>([Ljava/lang/Object;)V
    .registers 2
    .param p1, "array"    # [Ljava/lang/Object;

    .prologue
    .line 628
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 629
    iput-object p1, p0, array:[Ljava/lang/Object;

    .line 630
    return-void
.end method


# virtual methods
.method public hasMoreElements()Z
    .registers 3

    .prologue
    .line 644
    iget v0, p0, index:I

    iget-object v1, p0, array:[Ljava/lang/Object;

    array-length v1, v1

    if-ge v0, v1, :cond_9

    const/4 v0, 0x1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public nextElement()Ljava/lang/Object;
    .registers 4

    .prologue
    .line 655
    iget v0, p0, index:I

    iget-object v1, p0, array:[Ljava/lang/Object;

    array-length v1, v1

    if-ge v0, v1, :cond_12

    .line 656
    iget-object v0, p0, array:[Ljava/lang/Object;

    iget v1, p0, index:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, index:I

    aget-object v0, v0, v1

    return-object v0

    .line 658
    :cond_12
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method
