.class Lmf/javax/xml/parsers/SecuritySupport$3;
.super Ljava/lang/Object;
.source "SecuritySupport.java"

# interfaces
.implements Ljava/security/PrivilegedExceptionAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmf/javax/xml/parsers/SecuritySupport;->getFileInputStream(Ljava/io/File;)Ljava/io/FileInputStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmf/javax/xml/parsers/SecuritySupport;

.field private final synthetic val$file:Ljava/io/File;


# direct methods
.method constructor <init>(Lmf/javax/xml/parsers/SecuritySupport;Ljava/io/File;)V
    .registers 3

    .prologue
    .line 1
    iput-object p1, p0, this$0:Lmf/javax/xml/parsers/SecuritySupport;

    iput-object p2, p0, val$file:Ljava/io/File;

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 95
    new-instance v0, Ljava/io/FileInputStream;

    iget-object v1, p0, val$file:Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    return-object v0
.end method
