.class Lcom/android/systemui/keyguard/KeyguardViewMediator$ADBPolicyInSecured;
.super Ljava/lang/Object;
.source "KeyguardViewMediator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/keyguard/KeyguardViewMediator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ADBPolicyInSecured"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/keyguard/KeyguardViewMediator$ADBPolicyInSecured$ADBNonPolicyImpl;,
        Lcom/android/systemui/keyguard/KeyguardViewMediator$ADBPolicyInSecured$ADBBlockPolicyImpl;
    }
.end annotation


# instance fields
.field private mADBBlockPolicy:Lcom/android/systemui/keyguard/KeyguardViewMediator$ADBPolicyInSecured$ADBNonPolicyImpl;

.field final synthetic this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;


# direct methods
.method public constructor <init>(Lcom/android/systemui/keyguard/KeyguardViewMediator;)V
    .locals 2

    .prologue
    .line 2887
    iput-object p1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$ADBPolicyInSecured;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2888
    invoke-static {}, Lcom/android/keyguard/util/KeyguardProperties;->disableADBDuringSecureLock()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2889
    new-instance v0, Lcom/android/systemui/keyguard/KeyguardViewMediator$ADBPolicyInSecured$ADBBlockPolicyImpl;

    invoke-direct {v0, p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator$ADBPolicyInSecured$ADBBlockPolicyImpl;-><init>(Lcom/android/systemui/keyguard/KeyguardViewMediator$ADBPolicyInSecured;)V

    iput-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$ADBPolicyInSecured;->mADBBlockPolicy:Lcom/android/systemui/keyguard/KeyguardViewMediator$ADBPolicyInSecured$ADBNonPolicyImpl;

    .line 2893
    :goto_0
    return-void

    .line 2891
    :cond_0
    new-instance v0, Lcom/android/systemui/keyguard/KeyguardViewMediator$ADBPolicyInSecured$ADBNonPolicyImpl;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/keyguard/KeyguardViewMediator$ADBPolicyInSecured$ADBNonPolicyImpl;-><init>(Lcom/android/systemui/keyguard/KeyguardViewMediator$ADBPolicyInSecured;Lcom/android/systemui/keyguard/KeyguardViewMediator$1;)V

    iput-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$ADBPolicyInSecured;->mADBBlockPolicy:Lcom/android/systemui/keyguard/KeyguardViewMediator$ADBPolicyInSecured$ADBNonPolicyImpl;

    goto :goto_0
.end method


# virtual methods
.method handleDismiss()V
    .locals 1

    .prologue
    .line 2896
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$ADBPolicyInSecured;->mADBBlockPolicy:Lcom/android/systemui/keyguard/KeyguardViewMediator$ADBPolicyInSecured$ADBNonPolicyImpl;

    invoke-virtual {v0}, Lcom/android/systemui/keyguard/KeyguardViewMediator$ADBPolicyInSecured$ADBNonPolicyImpl;->handleDismiss()V

    .line 2897
    return-void
.end method

.method handleKeyguardDone()V
    .locals 1

    .prologue
    .line 2900
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$ADBPolicyInSecured;->mADBBlockPolicy:Lcom/android/systemui/keyguard/KeyguardViewMediator$ADBPolicyInSecured$ADBNonPolicyImpl;

    invoke-virtual {v0}, Lcom/android/systemui/keyguard/KeyguardViewMediator$ADBPolicyInSecured$ADBNonPolicyImpl;->handleKeyguardDone()V

    .line 2901
    return-void
.end method
