.class public Lcom/sun/org/apache/xml/internal/security/algorithms/implementations/SignatureBaseRSA$SignatureRSASHA256;
.super Lcom/sun/org/apache/xml/internal/security/algorithms/implementations/SignatureBaseRSA;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/org/apache/xml/internal/security/algorithms/implementations/SignatureBaseRSA;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SignatureRSASHA256"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/sun/org/apache/xml/internal/security/algorithms/implementations/SignatureBaseRSA;-><init>()V

    return-void
.end method


# virtual methods
.method public engineGetURI()Ljava/lang/String;
    .registers 2

    const-string/jumbo v0, "http://www.w3.org/2001/04/xmldsig-more#rsa-sha256"

    return-object v0
.end method
