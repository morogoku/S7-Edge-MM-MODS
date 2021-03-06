.class public Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;
.super Ljava/lang/Object;
.source "WifiApSwitchEnabler.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;
.implements Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler$SwitchHandler;,
        Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler$IMobileAPHelpController;
    }
.end annotation


# static fields
.field private static final DBG:Z


# instance fields
.field private final MHS_REQUEST:I

.field private bDisableMifi:Z

.field private customView:Landroid/view/View;

.field private intentReceiver:Landroid/content/Intent;

.field private isSetChecked:Z

.field private isWifiWarningDoNotShowAgain:Z

.field private mActivity:Ljava/lang/Object;

.field private mAttentionDialog:Landroid/app/AlertDialog;

.field private mCb:Landroid/widget/CheckBox;

.field private mChangeState:Z

.field mCm:Landroid/net/ConnectivityManager;

.field public mConfigureDialogListener:Landroid/content/DialogInterface$OnClickListener;

.field private final mContext:Landroid/content/Context;

.field private mDialogConfigure:Lcom/android/settings/wifi/WifiApDialog;

.field private mHandler:Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler$SwitchHandler;

.field private mHelpCtrl:Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler$IMobileAPHelpController;

.field private mIntentFilter:Landroid/content/IntentFilter;

.field private mIsAirplaneMode:Z

.field private mIsLightTheme:Z

.field private mIsTablet:Z

.field private mNoSimDialog:Landroid/app/AlertDialog;

.field private mOriginalSummary:Ljava/lang/CharSequence;

.field private mProvisionApp:[Ljava/lang/String;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mSharedPref:Landroid/content/SharedPreferences;

.field private mSwitch:Landroid/widget/Switch;

.field private mSwitchBar:Lcom/android/settings/widget/SwitchBar;

.field private mSwitchPref:Landroid/preference/SwitchPreference;

.field private mTetherHandler:Landroid/os/Handler;

.field private mTetherRunnable:Ljava/lang/Runnable;

.field private mWarnRoam:Landroid/app/AlertDialog;

.field mWarnRoamBulder:Landroid/app/AlertDialog$Builder;

.field private mWarningDialog:Landroid/app/AlertDialog;

.field private mWifiConfig:Landroid/net/wifi/WifiConfiguration;

.field private mWifiDisableWarnDoNotShowAgain:Landroid/widget/CheckBox;

.field private mWifiDisableWarnDoNotShowAgainLayout:Landroid/widget/LinearLayout;

.field private mWifiManager:Landroid/net/wifi/WifiManager;

.field private mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

.field private mWifiRegexs:[Ljava/lang/String;

.field private nevershowagain:Z

.field private warnWifiDisableDialog:Landroid/app/AlertDialog;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 122
    sget-boolean v0, Lcom/android/settings/Utils;->MHSDBG:Z

    sput-boolean v0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->DBG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/widget/SwitchBar;Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler$IMobileAPHelpController;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "switchBar"    # Lcom/android/settings/widget/SwitchBar;
    .param p3, "helpCtrl"    # Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler$IMobileAPHelpController;

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 324
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 127
    iput-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mSwitchPref:Landroid/preference/SwitchPreference;

    .line 130
    iput-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mSwitch:Landroid/widget/Switch;

    .line 131
    iput-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mHelpCtrl:Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler$IMobileAPHelpController;

    .line 133
    iput-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    .line 135
    iput-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->intentReceiver:Landroid/content/Intent;

    .line 143
    iput v1, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->MHS_REQUEST:I

    .line 146
    iput-boolean v1, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->isSetChecked:Z

    .line 147
    iput-boolean v1, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mIsTablet:Z

    .line 148
    iput-boolean v1, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mIsLightTheme:Z

    .line 154
    iput-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    .line 187
    iput-boolean v1, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->isWifiWarningDoNotShowAgain:Z

    .line 191
    iput-boolean v1, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->nevershowagain:Z

    .line 197
    iput-boolean v1, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->bDisableMifi:Z

    .line 199
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mTetherHandler:Landroid/os/Handler;

    .line 201
    iput-boolean v1, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mChangeState:Z

    .line 202
    iput-boolean v1, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mIsAirplaneMode:Z

    .line 219
    new-instance v0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler$1;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler$1;-><init>(Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;)V

    iput-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 1741
    new-instance v0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler$38;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler$38;-><init>(Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;)V

    iput-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mConfigureDialogListener:Landroid/content/DialogInterface$OnClickListener;

    .line 325
    iput-object p1, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mContext:Landroid/content/Context;

    .line 326
    iput-object p2, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    .line 327
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0}, Lcom/android/settings/widget/SwitchBar;->getSwitch()Lcom/android/settings/widget/ToggleSwitch;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mSwitch:Landroid/widget/Switch;

    .line 328
    iput-object p3, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mHelpCtrl:Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler$IMobileAPHelpController;

    .line 329
    invoke-direct {p0}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->initSwitchEnabler()V

    .line 330
    invoke-virtual {p0}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->initSwitchbar()V

    .line 331
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;
    .param p1, "x1"    # I

    .prologue
    .line 120
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->handleWifiApStateChanged(I)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;[Ljava/lang/Object;[Ljava/lang/Object;[Ljava/lang/Object;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;
    .param p1, "x1"    # [Ljava/lang/Object;
    .param p2, "x2"    # [Ljava/lang/Object;
    .param p3, "x3"    # [Ljava/lang/Object;

    .prologue
    .line 120
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->updateTetherState([Ljava/lang/Object;[Ljava/lang/Object;[Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;
    .param p1, "x1"    # I

    .prologue
    .line 120
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->startProvisioningIfNecessary(I)V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;)Landroid/app/AlertDialog;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;

    .prologue
    .line 120
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mAttentionDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;

    .prologue
    .line 120
    invoke-direct {p0}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->afterAttentionDialog()V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;

    .prologue
    .line 120
    invoke-direct {p0}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->afterSsidDialog()V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;)Lcom/android/settings/wifi/WifiApDialog;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;

    .prologue
    .line 120
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mDialogConfigure:Lcom/android/settings/wifi/WifiApDialog;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;
    .param p1, "x1"    # Z

    .prologue
    .line 120
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->showProgress(Z)V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;Ljava/lang/CharSequence;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;
    .param p1, "x1"    # Ljava/lang/CharSequence;

    .prologue
    .line 120
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->setSummary(Ljava/lang/CharSequence;)V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;)Landroid/net/wifi/WifiConfiguration;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;

    .prologue
    .line 120
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    return-object v0
.end method

.method static synthetic access$1702(Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;Landroid/net/wifi/WifiConfiguration;)Landroid/net/wifi/WifiConfiguration;
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;
    .param p1, "x1"    # Landroid/net/wifi/WifiConfiguration;

    .prologue
    .line 120
    iput-object p1, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    return-object p1
.end method

.method static synthetic access$1800(Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;

    .prologue
    .line 120
    invoke-direct {p0}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->disableWifiDialog()V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;)Landroid/widget/CheckBox;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;

    .prologue
    .line 120
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mCb:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;

    .prologue
    .line 120
    invoke-direct {p0}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->enableWifiCheckBox()V

    return-void
.end method

.method static synthetic access$2000(Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;

    .prologue
    .line 120
    iget-boolean v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->nevershowagain:Z

    return v0
.end method

.method static synthetic access$2002(Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;
    .param p1, "x1"    # Z

    .prologue
    .line 120
    iput-boolean p1, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->nevershowagain:Z

    return p1
.end method

.method static synthetic access$2100(Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;
    .param p1, "x1"    # Landroid/content/Context;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Z

    .prologue
    .line 120
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->putBooleanSharedPreference(Landroid/content/Context;Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;

    .prologue
    .line 120
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mTetherRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;
    .param p1, "x1"    # Ljava/lang/Runnable;

    .prologue
    .line 120
    iput-object p1, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mTetherRunnable:Ljava/lang/Runnable;

    return-object p1
.end method

.method static synthetic access$400(Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;

    .prologue
    .line 120
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mTetherHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;

    .prologue
    .line 120
    invoke-direct {p0}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->preProvisioning()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;)Landroid/widget/CheckBox;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;

    .prologue
    .line 120
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mWifiDisableWarnDoNotShowAgain:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;)Landroid/content/SharedPreferences;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;

    .prologue
    .line 120
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mSharedPref:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method static synthetic access$702(Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;Landroid/content/SharedPreferences;)Landroid/content/SharedPreferences;
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;
    .param p1, "x1"    # Landroid/content/SharedPreferences;

    .prologue
    .line 120
    iput-object p1, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mSharedPref:Landroid/content/SharedPreferences;

    return-object p1
.end method

.method static synthetic access$800(Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;

    .prologue
    .line 120
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;)Landroid/net/wifi/WifiManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;

    .prologue
    .line 120
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    return-object v0
.end method

.method private afterAttentionDialog()V
    .locals 2

    .prologue
    .line 1668
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Wifi_EnableWarningPopup4DataBatteryUsage"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1670
    const/4 v0, 0x7

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->showDialog(I)V

    .line 1674
    :goto_0
    return-void

    .line 1672
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->afterSsidDialog()V

    goto :goto_0
.end method

.method private afterSsidDialog()V
    .locals 3

    .prologue
    .line 1773
    const/4 v0, 0x1

    .line 1774
    .local v0, "setSoftapEnableFlag":Z
    const-string v1, "TMO"

    sget-object v2, Lcom/android/settings/Utils;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "NEWCO"

    sget-object v2, Lcom/android/settings/Utils;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1775
    :cond_0
    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v1, v1, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v1, v1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    if-eqz v1, :cond_1

    .line 1776
    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v1, v1, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    const-string v2, "\tUSER#DEFINED#PWD#\n"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v1, v1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1777
    const/4 v0, 0x0

    .line 1778
    const-string v1, "WifiApSwitchEnabler"

    const-string v2, "Dialog create during first time Mobile HotSpot at TMO"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1779
    const/16 v1, 0x9

    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->showDialog(I)V

    .line 1783
    :cond_1
    if-eqz v0, :cond_2

    iget-boolean v1, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mIsAirplaneMode:Z

    if-nez v1, :cond_2

    .line 1784
    invoke-direct {p0}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->disableWifiDialog()V

    .line 1786
    :cond_2
    return-void
.end method

.method private disableWifiDialog()V
    .locals 10

    .prologue
    const/16 v9, 0xa

    const/4 v8, 0x3

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 1605
    const-string v4, "TMO"

    sget-object v7, Lcom/android/settings/Utils;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "NEWCO"

    sget-object v7, Lcom/android/settings/Utils;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1607
    :cond_0
    iget-object v4, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mCm:Landroid/net/ConnectivityManager;

    invoke-virtual {v4, v5}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v2

    .line 1608
    .local v2, "netInfo":Landroid/net/NetworkInfo;
    sget-object v4, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/net/NetworkInfo$DetailedState;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-direct {p0}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->isWifiSharingEnabled()Z

    move-result v4

    if-nez v4, :cond_2

    .line 1611
    invoke-virtual {p0, v8}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->showDialog(I)V

    .line 1665
    .end local v2    # "netInfo":Landroid/net/NetworkInfo;
    :cond_1
    :goto_0
    return-void

    .line 1612
    .restart local v2    # "netInfo":Landroid/net/NetworkInfo;
    :cond_2
    invoke-direct {p0}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->isP2pConnected()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1613
    const-string v4, "WifiApSwitchEnabler"

    const-string v5, "WiFi p2p is connected. Create dailog"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1614
    invoke-virtual {p0, v9}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->showDialog(I)V

    goto :goto_0

    .line 1616
    :cond_3
    invoke-direct {p0, v6}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->startProvisioningIfNecessary(I)V

    goto :goto_0

    .line 1619
    .end local v2    # "netInfo":Landroid/net/NetworkInfo;
    :cond_4
    iget-object v4, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v4}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v3

    .line 1620
    .local v3, "wifiState":I
    if-eq v3, v5, :cond_8

    if-eqz v3, :cond_8

    const/4 v4, 0x4

    if-eq v3, v4, :cond_8

    invoke-direct {p0}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->isWifiSharingEnabled()Z

    move-result v4

    if-nez v4, :cond_8

    .line 1624
    const-string v4, "VZW"

    sget-object v7, Lcom/android/settings/Utils;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 1625
    iget-object v4, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mContext:Landroid/content/Context;

    const-string v7, "SAMSUNG_HOTSPOT"

    invoke-virtual {v4, v7, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mSharedPref:Landroid/content/SharedPreferences;

    .line 1626
    iget-object v4, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mSharedPref:Landroid/content/SharedPreferences;

    const-string v7, "WIFI_WARNING_DO_NOTSHOW_AGAIN"

    invoke-interface {v4, v7, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v5, :cond_5

    move v4, v5

    :goto_1
    iput-boolean v4, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->isWifiWarningDoNotShowAgain:Z

    .line 1627
    iget-boolean v4, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->isWifiWarningDoNotShowAgain:Z

    if-eqz v4, :cond_6

    .line 1629
    iget-object v4, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1630
    .local v0, "cr":Landroid/content/ContentResolver;
    const-string v4, "wifi_saved_state"

    invoke-static {v0, v4, v5}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1631
    iget-object v4, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v4, v6}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 1632
    invoke-direct {p0, v5}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->showProgress(Z)V

    .line 1634
    const-wide/16 v4, 0x258

    :try_start_0
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1638
    :goto_2
    invoke-direct {p0, v6}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->startProvisioningIfNecessary(I)V

    goto :goto_0

    .end local v0    # "cr":Landroid/content/ContentResolver;
    :cond_5
    move v4, v6

    .line 1626
    goto :goto_1

    .line 1635
    .restart local v0    # "cr":Landroid/content/ContentResolver;
    :catch_0
    move-exception v1

    .line 1636
    .local v1, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_2

    .line 1639
    .end local v0    # "cr":Landroid/content/ContentResolver;
    .end local v1    # "e":Ljava/lang/InterruptedException;
    :cond_6
    iget-boolean v4, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->isWifiWarningDoNotShowAgain:Z

    if-nez v4, :cond_1

    .line 1640
    invoke-virtual {p0, v8}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->showDialog(I)V

    goto :goto_0

    .line 1643
    :cond_7
    invoke-virtual {p0, v8}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->showDialog(I)V

    goto :goto_0

    .line 1645
    :cond_8
    iget-object v4, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v4}, Landroid/net/wifi/WifiManager;->getWifiIBSSState()I

    move-result v4

    const/4 v5, 0x2

    if-eq v4, v5, :cond_9

    iget-object v4, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v4}, Landroid/net/wifi/WifiManager;->getWifiIBSSState()I

    move-result v4

    if-ne v4, v8, :cond_a

    .line 1647
    :cond_9
    const-string v4, "WifiApSwitchEnabler"

    const-string v5, "WifiApswitch ibss is connected. Create dailog"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1648
    const/16 v4, 0xd

    invoke-virtual {p0, v4}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->showDialog(I)V

    goto/16 :goto_0

    .line 1649
    :cond_a
    invoke-direct {p0}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->isP2pEnabled()Z

    move-result v4

    if-eqz v4, :cond_d

    .line 1650
    const-string v4, "WifiApSwitchEnabler"

    const-string v5, "WiFi p2p on. Create dailog"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1651
    invoke-direct {p0}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->isWifiSharingEnabled()Z

    move-result v4

    if-eqz v4, :cond_c

    .line 1653
    invoke-direct {p0}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->isP2pConnected()Z

    move-result v4

    if-eqz v4, :cond_b

    .line 1654
    invoke-virtual {p0, v9}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->showDialog(I)V

    goto/16 :goto_0

    .line 1656
    :cond_b
    invoke-direct {p0, v6}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->startProvisioningIfNecessary(I)V

    goto/16 :goto_0

    .line 1659
    :cond_c
    invoke-virtual {p0, v9}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->showDialog(I)V

    goto/16 :goto_0

    .line 1662
    :cond_d
    invoke-direct {p0, v6}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->startProvisioningIfNecessary(I)V

    goto/16 :goto_0
.end method

.method private enableWifiCheckBox()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 412
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "airplane_mode_on"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mIsAirplaneMode:Z

    .line 415
    const-string v0, "MTR"

    sget-object v3, Lcom/android/settings/Utils;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 416
    iget-boolean v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mIsAirplaneMode:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->bDisableMifi:Z

    if-nez v0, :cond_0

    .line 417
    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->setEnabled(Z)V

    .line 437
    :cond_0
    :goto_1
    return-void

    :cond_1
    move v0, v2

    .line 412
    goto :goto_0

    .line 421
    :cond_2
    iget-boolean v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mIsAirplaneMode:Z

    if-nez v0, :cond_4

    .line 422
    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->setEnabled(Z)V

    .line 423
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v0

    const/16 v3, 0xd

    if-ne v0, v3, :cond_3

    .line 424
    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->setChecked(Z)V

    goto :goto_1

    .line 426
    :cond_3
    invoke-virtual {p0, v2}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->setChecked(Z)V

    goto :goto_1

    .line 429
    :cond_4
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mOriginalSummary:Ljava/lang/CharSequence;

    invoke-direct {p0, v0}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->setSummary(Ljava/lang/CharSequence;)V

    .line 430
    invoke-virtual {p0, v2}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->setEnabled(Z)V

    .line 431
    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->dismissDialog(I)V

    goto :goto_1
.end method

.method private getBooleanFromSharedPreference(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "strKey"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 2023
    const-string v2, "MHSNoProvisionPreferences"

    invoke-virtual {p1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 2024
    .local v1, "mSharedPreferences":Landroid/content/SharedPreferences;
    invoke-interface {v1, p2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 2025
    .local v0, "bValue":Z
    const-string v2, "WifiApSwitchEnabler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getBooleanFromSharedPreference - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2026
    return v0
.end method

.method private getMobileApBand(Landroid/net/wifi/WifiConfiguration;)I
    .locals 3
    .param p1, "wifiConfig"    # Landroid/net/wifi/WifiConfiguration;

    .prologue
    .line 1887
    const/4 v0, 0x2

    .line 1888
    .local v0, "band":I
    iget v1, p1, Landroid/net/wifi/WifiConfiguration;->channel:I

    const/16 v2, 0xe

    if-gt v1, v2, :cond_0

    .line 1889
    const/4 v0, 0x2

    .line 1893
    :goto_0
    return v0

    .line 1891
    :cond_0
    const/4 v0, 0x5

    goto :goto_0
.end method

.method private getRvfMode()I
    .locals 3

    .prologue
    .line 1708
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 1709
    .local v1, "msg":Landroid/os/Message;
    const/16 v2, 0x1c

    iput v2, v1, Landroid/os/Message;->what:I

    .line 1710
    iget-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2, v1}, Landroid/net/wifi/WifiManager;->callSECApi(Landroid/os/Message;)I

    move-result v0

    .line 1712
    .local v0, "mRvfMode":I
    return v0
.end method

.method private getWifiChannel(I)I
    .locals 5
    .param p1, "frequency"    # I

    .prologue
    const/16 v4, 0xf

    .line 1897
    const/4 v1, -0x1

    .line 1898
    .local v1, "channel":I
    const/16 v0, 0x96c

    .line 1899
    .local v0, "baseFrequency":I
    sub-int v2, p1, v0

    .line 1900
    .local v2, "freqDiff":I
    if-nez v2, :cond_1

    .line 1901
    const/4 v1, 0x1

    .line 1911
    :cond_0
    :goto_0
    return v1

    .line 1903
    :cond_1
    div-int/lit8 v3, v2, 0x5

    add-int/lit8 v1, v3, 0x1

    .line 1904
    const/16 v3, 0xd

    if-le v1, v3, :cond_2

    if-gt v1, v4, :cond_2

    .line 1905
    const/16 v1, 0xe

    .line 1907
    :cond_2
    if-le v1, v4, :cond_0

    .line 1908
    const/16 v1, 0x95

    goto :goto_0
.end method

.method private getWifiConnectedBand(I)I
    .locals 1
    .param p1, "WifiFrequency"    # I

    .prologue
    .line 1879
    const/16 v0, 0x96c

    if-lt p1, v0, :cond_0

    const/16 v0, 0x9b4

    if-gt p1, v0, :cond_0

    .line 1880
    const/4 v0, 0x2

    .line 1882
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x5

    goto :goto_0
.end method

.method private getWifiConnectedFrequency()I
    .locals 4

    .prologue
    const/4 v1, -0x1

    .line 1870
    iget-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    .line 1871
    .local v0, "wifi":Landroid/net/wifi/WifiInfo;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v2

    if-eq v2, v1, :cond_0

    .line 1872
    const-string v1, "WifiApSwitchEnabler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Wifi Frequency is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getFrequency()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1873
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getFrequency()I

    move-result v1

    .line 1875
    :cond_0
    return v1
.end method

.method private handleWifiApStateChanged(I)V
    .locals 6
    .param p1, "state"    # I

    .prologue
    const-wide/16 v4, 0x1b58

    const v0, 0x7f0e0389

    const/4 v1, 0x5

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1073
    packed-switch p1, :pswitch_data_0

    .line 1142
    invoke-virtual {p0, v2}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->setChecked(Z)V

    .line 1143
    invoke-direct {p0, v0}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->setSummary(I)V

    .line 1144
    invoke-direct {p0}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->enableWifiCheckBox()V

    .line 1146
    :goto_0
    return-void

    .line 1075
    :pswitch_0
    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->dismissDialog(I)V

    .line 1076
    invoke-direct {p0, v3}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->showProgress(Z)V

    .line 1078
    const v0, 0x7f0e0506

    invoke-direct {p0, v0}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->setSummary(I)V

    .line 1079
    iput-boolean v3, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mChangeState:Z

    goto :goto_0

    .line 1082
    :pswitch_1
    invoke-static {}, Lcom/android/settings/Utils;->isJapanKDIModel()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->isLTEMode()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mChangeState:Z

    if-eqz v0, :cond_0

    .line 1083
    new-instance v0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler$36;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler$36;-><init>(Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;)V

    iput-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mTetherRunnable:Ljava/lang/Runnable;

    .line 1095
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mTetherHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mTetherRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1104
    :goto_1
    invoke-direct {p0, v3}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->procHelpCtrl(Z)V

    .line 1105
    iput-boolean v2, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mChangeState:Z

    goto :goto_0

    .line 1097
    :cond_0
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->dismissDialog(I)V

    .line 1099
    invoke-direct {p0, v2}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->showProgress(Z)V

    .line 1100
    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->dismissDialog(I)V

    .line 1101
    invoke-virtual {p0, v3}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->setChecked(Z)V

    .line 1102
    invoke-virtual {p0, v3}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->setEnabled(Z)V

    goto :goto_1

    .line 1108
    :pswitch_2
    invoke-direct {p0, v3}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->showProgress(Z)V

    .line 1109
    const v0, 0x7f0e0507

    invoke-direct {p0, v0}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->setSummary(I)V

    .line 1110
    iput-boolean v3, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mChangeState:Z

    goto :goto_0

    .line 1113
    :pswitch_3
    invoke-static {}, Lcom/android/settings/Utils;->isJapanKDIModel()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->isLTEMode()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mChangeState:Z

    if-eqz v0, :cond_1

    .line 1114
    new-instance v0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler$37;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler$37;-><init>(Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;)V

    iput-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mTetherRunnable:Ljava/lang/Runnable;

    .line 1123
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mTetherHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mTetherRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1129
    :goto_2
    invoke-direct {p0, v2}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->procHelpCtrl(Z)V

    .line 1130
    iput-boolean v2, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mChangeState:Z

    .line 1131
    invoke-direct {p0, v2}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->showProgress(Z)V

    goto :goto_0

    .line 1125
    :cond_1
    invoke-virtual {p0, v2}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->setChecked(Z)V

    .line 1126
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->setSummary(Ljava/lang/CharSequence;)V

    .line 1127
    invoke-direct {p0}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->enableWifiCheckBox()V

    goto :goto_2

    .line 1135
    :pswitch_4
    invoke-direct {p0, v2}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->showProgress(Z)V

    .line 1136
    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->dismissDialog(I)V

    .line 1137
    invoke-virtual {p0, v2}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->setChecked(Z)V

    .line 1138
    invoke-direct {p0, v0}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->setSummary(I)V

    .line 1139
    invoke-direct {p0}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->enableWifiCheckBox()V

    goto/16 :goto_0

    .line 1073
    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_1
        :pswitch_4
    .end packed-switch
.end method

.method private initSwitchEnabler()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 255
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mIsTablet:Z

    .line 256
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/Utils;->isLightTheme(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mIsLightTheme:Z

    .line 257
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mContext:Landroid/content/Context;

    const-string v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 258
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mContext:Landroid/content/Context;

    const-string v1, "wifip2p"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/p2p/WifiP2pManager;

    iput-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    .line 259
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mContext:Landroid/content/Context;

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mCm:Landroid/net/ConnectivityManager;

    .line 261
    const-string v0, "MTR"

    sget-object v1, Lcom/android/settings/Utils;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->isLTEMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 262
    iput-boolean v2, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->bDisableMifi:Z

    .line 265
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mCm:Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getTetherableWifiRegexs()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mWifiRegexs:[Ljava/lang/String;

    .line 267
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    .line 268
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.conn.TETHER_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 269
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 270
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "com.samsung.android.net.wifi.SHOW_INFO_MESSAGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 272
    invoke-static {}, Lcom/android/settings/Utils;->isJapanKDIModel()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 273
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.ACTION_DATA_DISABLE_TETHERING_DELAY"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 276
    :cond_1
    new-instance v0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler$SwitchHandler;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler$SwitchHandler;-><init>(Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;)V

    iput-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mHandler:Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler$SwitchHandler;

    .line 277
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1070015

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mProvisionApp:[Ljava/lang/String;

    .line 280
    const-string v0, "SPRINT"

    sget-object v1, Lcom/android/settings/Utils;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 281
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mSwitchPref:Landroid/preference/SwitchPreference;

    if-eqz v0, :cond_2

    .line 282
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mSwitchPref:Landroid/preference/SwitchPreference;

    const v1, 0x7f0e0500

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setTitle(I)V

    .line 287
    :cond_2
    invoke-virtual {p0, v2}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->dismissDialog(I)V

    .line 290
    invoke-direct {p0}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->isWifiApBlocked()Z

    .line 292
    return-void
.end method

.method private isDualModeSlot()Z
    .locals 1

    .prologue
    .line 1400
    const/4 v0, 0x0

    .line 1409
    .local v0, "retVal":Z
    return v0
.end method

.method private isDualSlotAllOff()Z
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 1432
    const/4 v2, 0x0

    .line 1433
    .local v2, "retVal":Z
    invoke-direct {p0}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->isDualModeSlot()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1434
    const-string v5, "gsm.sim.state"

    const-string v6, "-1,-1"

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1435
    .local v3, "simStatus":Ljava/lang/String;
    const-string v5, ","

    invoke-virtual {v3, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 1437
    .local v4, "simStatusInt":[Ljava/lang/String;
    const-string v5, "CDMA"

    invoke-static {v5}, Lcom/android/settings/Utils;->isDuosModel(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1438
    const-string v5, "gsm.sim.currentcardstatus"

    const-string v6, "-1,-1"

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1439
    .local v0, "cdmaSimStatus":Ljava/lang/String;
    const-string v5, ","

    invoke-virtual {v0, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 1440
    .local v1, "cdmaSimStatusInt":[Ljava/lang/String;
    array-length v5, v1

    if-ne v5, v7, :cond_0

    const-string v5, "3"

    aget-object v6, v1, v8

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    :cond_0
    array-length v5, v1

    if-le v5, v7, :cond_2

    const-string v5, "3"

    aget-object v6, v1, v8

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    const-string v5, "3"

    aget-object v6, v1, v7

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 1442
    :cond_1
    const/4 v2, 0x1

    .line 1451
    .end local v0    # "cdmaSimStatus":Ljava/lang/String;
    .end local v1    # "cdmaSimStatusInt":[Ljava/lang/String;
    .end local v3    # "simStatus":Ljava/lang/String;
    .end local v4    # "simStatusInt":[Ljava/lang/String;
    :cond_2
    :goto_0
    return v2

    .line 1445
    .restart local v3    # "simStatus":Ljava/lang/String;
    .restart local v4    # "simStatusInt":[Ljava/lang/String;
    :cond_3
    array-length v5, v4

    if-ne v5, v7, :cond_4

    const-string v5, "READY"

    aget-object v6, v4, v8

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    :cond_4
    array-length v5, v4

    if-le v5, v7, :cond_2

    const-string v5, "READY"

    aget-object v6, v4, v8

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    const-string v5, "READY"

    aget-object v6, v4, v7

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 1447
    :cond_5
    const/4 v2, 0x1

    goto :goto_0
.end method

.method private isDualSlotAndSLot1Off()Z
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 1413
    const/4 v2, 0x0

    .line 1414
    .local v2, "retVal":Z
    invoke-direct {p0}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->isDualModeSlot()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1415
    const-string v5, "gsm.sim.state"

    const-string v6, "-1,-1"

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1416
    .local v3, "simStatus":Ljava/lang/String;
    const-string v5, ","

    invoke-virtual {v3, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 1418
    .local v4, "simStatusInt":[Ljava/lang/String;
    const-string v5, "CDMA"

    invoke-static {v5}, Lcom/android/settings/Utils;->isDuosModel(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1419
    const-string v5, "gsm.sim.currentcardstatus"

    const-string v6, "-1,-1"

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1420
    .local v0, "cdmaSimStatus":Ljava/lang/String;
    const-string v5, ","

    invoke-virtual {v0, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 1421
    .local v1, "cdmaSimStatusInt":[Ljava/lang/String;
    const-string v5, "3"

    aget-object v6, v1, v7

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 1422
    const/4 v2, 0x1

    .line 1428
    .end local v0    # "cdmaSimStatus":Ljava/lang/String;
    .end local v1    # "cdmaSimStatusInt":[Ljava/lang/String;
    .end local v3    # "simStatus":Ljava/lang/String;
    .end local v4    # "simStatusInt":[Ljava/lang/String;
    :cond_0
    :goto_0
    return v2

    .line 1424
    .restart local v3    # "simStatus":Ljava/lang/String;
    .restart local v4    # "simStatusInt":[Ljava/lang/String;
    :cond_1
    const-string v5, "READY"

    aget-object v6, v4, v7

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 1425
    const/4 v2, 0x1

    goto :goto_0
.end method

.method private isLTEMode()Z
    .locals 5

    .prologue
    .line 1735
    iget-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mCm:Landroid/net/ConnectivityManager;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v1

    .line 1736
    .local v1, "networkInfo":Landroid/net/NetworkInfo;
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getSubtypeName()Ljava/lang/String;

    move-result-object v0

    .line 1737
    .local v0, "currentNetworkRat":Ljava/lang/String;
    const-string v2, "WifiApSwitchEnabler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " isLTEMode() network="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1738
    const-string v2, "LTE"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    return v2
.end method

.method public static isMetroPCS()Z
    .locals 2

    .prologue
    .line 2045
    const-string v0, "NEWCO"

    sget-object v1, Lcom/android/settings/Utils;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2046
    const/4 v0, 0x1

    .line 2048
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isP2pConnected()Z
    .locals 1

    .prologue
    .line 1795
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    if-nez v0, :cond_0

    .line 1796
    const/4 v0, 0x0

    .line 1797
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    invoke-virtual {v0}, Landroid/net/wifi/p2p/WifiP2pManager;->isWifiP2pConnected()Z

    move-result v0

    goto :goto_0
.end method

.method private isP2pEnabled()Z
    .locals 1

    .prologue
    .line 1789
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    if-nez v0, :cond_0

    .line 1790
    const/4 v0, 0x0

    .line 1791
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    invoke-virtual {v0}, Landroid/net/wifi/p2p/WifiP2pManager;->isWifiP2pEnabled()Z

    move-result v0

    goto :goto_0
.end method

.method private isProvisioningCheck()Z
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v2, 0x0

    const/4 v8, 0x0

    .line 1359
    sget-boolean v0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "Provisioning.disable"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "1"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1360
    const-string v0, "WifiApSwitchEnabler"

    const-string v2, "Skip isProvisioningCheck"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v8

    .line 1396
    :goto_0
    return v0

    .line 1364
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mContext:Landroid/content/Context;

    const-string v3, "device_policy"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/admin/DevicePolicyManager;

    .line 1366
    .local v6, "dpm":Landroid/app/admin/DevicePolicyManager;
    if-eqz v6, :cond_2

    invoke-virtual {v6, v2}, Landroid/app/admin/DevicePolicyManager;->getAllowInternetSharing(Landroid/content/ComponentName;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1367
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mHandler:Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler$SwitchHandler;

    if-eqz v0, :cond_1

    .line 1368
    invoke-virtual {p0, v8}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->sendSetChecked(Z)V

    .line 1369
    :cond_1
    invoke-virtual {p0, v9}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->setEnabled(Z)V

    .line 1370
    const-string v0, "WifiApSwitchEnabler"

    const-string v2, "Skip isProvisioningCheck - DPM"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v8

    .line 1371
    goto :goto_0

    .line 1374
    :cond_2
    const-string v0, "content://com.sec.knox.provider2/WifiPolicy"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 1375
    .local v1, "uri":Landroid/net/Uri;
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "isOpenWifiApAllowed"

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 1377
    .local v7, "openapCr":Landroid/database/Cursor;
    if-eqz v7, :cond_5

    .line 1379
    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1380
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    if-nez v0, :cond_3

    .line 1381
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getWifiApConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    .line 1384
    :cond_3
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1385
    const-string v0, "isOpenWifiApAllowed"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "false"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1386
    const-string v0, "WifiApSwitchEnabler"

    const-string v2, "Skip isProvisioningCheck - Wifi Policy"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1391
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    move v0, v8

    goto :goto_0

    :cond_4
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_5
    move v0, v9

    .line 1396
    goto :goto_0

    .line 1391
    :catchall_0
    move-exception v0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method private isSimCheck()Z
    .locals 2

    .prologue
    .line 1353
    sget-boolean v0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "SimCheck.disable"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1354
    const/4 v0, 0x0

    .line 1355
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static isTMO()Z
    .locals 2

    .prologue
    .line 2038
    const-string v0, "TMO"

    sget-object v1, Lcom/android/settings/Utils;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2039
    const/4 v0, 0x1

    .line 2041
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isWifiApBlocked()Z
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v2, 0x0

    const/4 v8, 0x0

    .line 1817
    const/4 v7, 0x0

    .line 1822
    .local v7, "wifiApBlocked":Z
    if-nez v7, :cond_1

    .line 1823
    const-string v0, "content://com.sec.knox.provider/RestrictionPolicy4"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 1824
    .local v1, "uri":Landroid/net/Uri;
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "isWifiTetheringEnabled"

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1826
    .local v6, "cr":Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 1828
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1829
    const-string v0, "isWifiTetheringEnabled"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "false"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    .line 1830
    const/4 v7, 0x1

    .line 1833
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1838
    .end local v1    # "uri":Landroid/net/Uri;
    .end local v6    # "cr":Landroid/database/Cursor;
    :cond_1
    if-nez v7, :cond_4

    .line 1839
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mSwitch:Landroid/widget/Switch;

    if-eqz v0, :cond_2

    .line 1840
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v9}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 1841
    :cond_2
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    if-eqz v0, :cond_3

    .line 1842
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0, v9}, Lcom/android/settings/widget/SwitchBar;->setEnabled(Z)V

    .line 1854
    :cond_3
    :goto_0
    return v7

    .line 1833
    .restart local v1    # "uri":Landroid/net/Uri;
    .restart local v6    # "cr":Landroid/database/Cursor;
    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0

    .line 1845
    .end local v1    # "uri":Landroid/net/Uri;
    .end local v6    # "cr":Landroid/database/Cursor;
    :cond_4
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mSwitch:Landroid/widget/Switch;

    if-eqz v0, :cond_5

    .line 1846
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v8}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 1847
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v8}, Landroid/widget/Switch;->setChecked(Z)V

    .line 1849
    :cond_5
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    if-eqz v0, :cond_3

    .line 1850
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0, v8}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    .line 1851
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0, v8}, Lcom/android/settings/widget/SwitchBar;->setEnabled(Z)V

    goto :goto_0
.end method

.method private isWifiConnected()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 1859
    iget-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-nez v2, :cond_1

    .line 1866
    :cond_0
    :goto_0
    return v1

    .line 1861
    :cond_1
    iget-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    .line 1862
    .local v0, "wifi":Landroid/net/wifi/WifiInfo;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    .line 1863
    const-string v1, "WifiApSwitchEnabler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "wifi is connected to AP and wifiInfo is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1864
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private isWifiSharingEnabled()Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1916
    :try_start_0
    iget-object v3, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "wifi_ap_wifi_sharing"

    invoke-static {v3, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v3

    if-ne v3, v1, :cond_0

    .line 1917
    const-string v3, "WifiApSwitchEnabler"

    const-string v4, "Returning true"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1927
    :goto_0
    return v1

    .line 1919
    :cond_0
    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v3, "wifi_ap_wifi_sharing"

    invoke-static {v1, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_1

    .line 1920
    const-string v1, "WifiApSwitchEnabler"

    const-string v3, "Returning false"

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move v1, v2

    .line 1921
    goto :goto_0

    .line 1923
    :catch_0
    move-exception v0

    .line 1924
    .local v0, "e1":Landroid/provider/Settings$SettingNotFoundException;
    const-string v1, "WifiApSwitchEnabler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error in getting provider value"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .end local v0    # "e1":Landroid/provider/Settings$SettingNotFoundException;
    :cond_1
    move v1, v2

    .line 1927
    goto :goto_0
.end method

.method private preProvisioning()V
    .locals 9

    .prologue
    const/16 v8, 0xb

    const/4 v7, 0x5

    const/4 v6, 0x1

    .line 1455
    iget-object v3, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mContext:Landroid/content/Context;

    const-string v4, "phone"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    .line 1456
    .local v2, "tm":Landroid/telephony/TelephonyManager;
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v0

    .line 1457
    .local v0, "isRoaming":Z
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getNetworkCountryIso()Ljava/lang/String;

    move-result-object v1

    .line 1458
    .local v1, "iso":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->getWifiApConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    .line 1460
    const-string v3, "WifiApSwitchEnabler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isSimCheck() "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-direct {p0}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->isSimCheck()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1462
    const-string v3, "MTR"

    sget-object v4, Lcom/android/settings/Utils;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-direct {p0}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->isLTEMode()Z

    move-result v3

    if-nez v3, :cond_5

    .line 1464
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->setChecked(Z)V

    .line 1465
    invoke-direct {p0}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->isSimCheck()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-direct {p0}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->isDualSlotAndSLot1Off()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v3

    if-eq v3, v7, :cond_4

    :cond_0
    invoke-direct {p0}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->isDualSlotAndSLot1Off()Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "READY"

    const-string v4, "gsm.sim.state"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 1466
    :cond_1
    invoke-direct {p0}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->isDualModeSlot()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-direct {p0}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->isDualSlotAllOff()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1467
    :cond_2
    invoke-virtual {p0, v6}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->showDialog(I)V

    .line 1485
    :cond_3
    :goto_0
    return-void

    .line 1470
    :cond_4
    invoke-virtual {p0, v8}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->showDialog(I)V

    goto :goto_0

    .line 1472
    :cond_5
    invoke-direct {p0}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->isSimCheck()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-direct {p0}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->isDualSlotAndSLot1Off()Z

    move-result v3

    if-nez v3, :cond_6

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v3

    if-eq v3, v7, :cond_8

    .line 1473
    :cond_6
    invoke-direct {p0}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->isDualModeSlot()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-direct {p0}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->isDualSlotAllOff()Z

    move-result v3

    if-nez v3, :cond_7

    .line 1474
    invoke-virtual {p0, v6}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->secSetSoftapEnabled(Z)V

    goto :goto_0

    .line 1476
    :cond_7
    invoke-virtual {p0, v6}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->showDialog(I)V

    goto :goto_0

    .line 1478
    :cond_8
    const-string v3, "VZW"

    sget-object v4, Lcom/android/settings/Utils;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    iget-object v3, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v3

    if-ne v3, v8, :cond_9

    if-eqz v0, :cond_9

    const-string v3, "us"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9

    .line 1481
    invoke-virtual {p0, v7}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->showDialog(I)V

    goto :goto_0

    .line 1483
    :cond_9
    invoke-virtual {p0, v6}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->secSetSoftapEnabled(Z)V

    goto :goto_0
.end method

.method private procHelpCtrl(Z)V
    .locals 3
    .param p1, "bOn"    # Z

    .prologue
    .line 1801
    const-string v0, "WifiApSwitchEnabler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "procHelpCtrl("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1802
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mHelpCtrl:Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler$IMobileAPHelpController;

    if-nez v0, :cond_0

    .line 1806
    :goto_0
    return-void

    .line 1805
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mHelpCtrl:Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler$IMobileAPHelpController;

    invoke-interface {v0, p1}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler$IMobileAPHelpController;->show(Z)V

    goto :goto_0
.end method

.method private putBooleanSharedPreference(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "strKey"    # Ljava/lang/String;
    .param p3, "bValue"    # Z

    .prologue
    .line 2030
    const-string v2, "MHSNoProvisionPreferences"

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 2031
    .local v1, "mSharedPreferences":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 2032
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0, p2, p3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 2033
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 2034
    const-string v2, "WifiApSwitchEnabler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "putSharedPreference - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2035
    return-void
.end method

.method private setRvfMode(I)V
    .locals 3
    .param p1, "mode"    # I

    .prologue
    .line 1716
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 1717
    .local v1, "msg":Landroid/os/Message;
    const/16 v2, 0x1b

    iput v2, v1, Landroid/os/Message;->what:I

    .line 1718
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1719
    .local v0, "b":Landroid/os/Bundle;
    const-string v2, "mode"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1720
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1721
    iget-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2, v1}, Landroid/net/wifi/WifiManager;->callSECApi(Landroid/os/Message;)I

    .line 1722
    return-void
.end method

.method private setSummary(I)V
    .locals 1
    .param p1, "id"    # I

    .prologue
    .line 1225
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mSwitchPref:Landroid/preference/SwitchPreference;

    if-eqz v0, :cond_0

    .line 1226
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mSwitchPref:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, p1}, Landroid/preference/SwitchPreference;->setSummary(I)V

    .line 1229
    :cond_0
    return-void
.end method

.method private setSummary(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "summary"    # Ljava/lang/CharSequence;

    .prologue
    .line 1232
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mSwitchPref:Landroid/preference/SwitchPreference;

    if-eqz v0, :cond_0

    .line 1233
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mSwitchPref:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, p1}, Landroid/preference/SwitchPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1236
    :cond_0
    return-void
.end method

.method private showFirstTimePoup()V
    .locals 7

    .prologue
    .line 1948
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v4, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mContext:Landroid/content/Context;

    invoke-direct {v0, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1950
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    iget-object v4, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mContext:Landroid/content/Context;

    const v5, 0x7f040250

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 1951
    .local v1, "customView":Landroid/view/View;
    const v4, 0x7f0d05a0

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    .line 1952
    .local v3, "layout":Landroid/widget/LinearLayout;
    const v4, 0x7f0d0553

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/CheckBox;

    iput-object v4, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mCb:Landroid/widget/CheckBox;

    .line 1953
    new-instance v4, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler$39;

    invoke-direct {v4, p0}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler$39;-><init>(Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;)V

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1964
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 1966
    const v4, 0x7f0e0826

    new-instance v5, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler$40;

    invoke-direct {v5, p0}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler$40;-><init>(Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;)V

    invoke-virtual {v0, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 2000
    const v4, 0x7f0e0827

    new-instance v5, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler$41;

    invoke-direct {v5, p0}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler$41;-><init>(Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;)V

    invoke-virtual {v0, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 2008
    new-instance v4, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler$42;

    invoke-direct {v4, p0}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler$42;-><init>(Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;)V

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 2016
    const v4, 0x7f0e043b

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 2017
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    .line 2018
    .local v2, "dialog":Landroid/app/AlertDialog;
    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    .line 2020
    return-void
.end method

.method private showMetorPCSHelpPoup()Landroid/app/AlertDialog;
    .locals 26

    .prologue
    .line 2053
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mContext:Landroid/content/Context;

    move-object/from16 v23, v0

    const-string v24, "connectivity"

    invoke-virtual/range {v23 .. v24}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/ConnectivityManager;

    .line 2054
    .local v6, "cm":Landroid/net/ConnectivityManager;
    invoke-virtual {v6}, Landroid/net/ConnectivityManager;->getTetherableUsbRegexs()[Ljava/lang/String;

    move-result-object v16

    .line 2055
    .local v16, "mUsbRegexs":[Ljava/lang/String;
    invoke-virtual {v6}, Landroid/net/ConnectivityManager;->getTetherableWifiRegexs()[Ljava/lang/String;

    move-result-object v17

    .line 2057
    .local v17, "mWifiRegexs":[Ljava/lang/String;
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v15

    .line 2061
    .local v15, "locale":Ljava/util/Locale;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mContext:Landroid/content/Context;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v3

    .line 2062
    .local v3, "am":Landroid/content/res/AssetManager;
    const-string v23, "html/%y%z/tethering_help.html"

    const-string v24, "%y"

    invoke-virtual {v15}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v23 .. v25}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v20

    .line 2063
    .local v20, "path":Ljava/lang/String;
    const-string v23, "%z"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v25, 0x5f

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual {v15}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v20

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v20

    .line 2064
    const/16 v22, 0x1

    .line 2065
    .local v22, "useCountry":Z
    const/4 v14, 0x0

    .line 2067
    .local v14, "is":Ljava/io/InputStream;
    :try_start_0
    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v14

    .line 2071
    if-eqz v14, :cond_0

    .line 2073
    :try_start_1
    invoke-virtual {v14}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    .line 2078
    :cond_0
    :goto_0
    const-string v23, "html/%y%z/tethering_%xhelp.html"

    const-string v24, "%y"

    invoke-virtual {v15}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v23 .. v25}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v21

    .line 2079
    .local v21, "url":Ljava/lang/String;
    const-string v24, "%z"

    if-eqz v22, :cond_3

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v25, 0x5f

    move-object/from16 v0, v23

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual {v15}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    :goto_1
    move-object/from16 v0, v21

    move-object/from16 v1, v24

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v21

    .line 2080
    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v23, v0

    if-eqz v23, :cond_5

    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v23, v0

    if-nez v23, :cond_5

    .line 2081
    invoke-static {}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->isMetroPCS()Z

    move-result v23

    if-eqz v23, :cond_4

    .line 2082
    const-string v23, "%x"

    const-string v24, "usb_mtr_"

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v21

    .line 2097
    :goto_2
    const-string v23, "WifiApSwitchEnabler"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "Tethering Help url : "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2099
    const/4 v13, 0x0

    .line 2101
    .local v13, "inputStream":Ljava/io/InputStream;
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mContext:Landroid/content/Context;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v13

    .line 2102
    new-instance v19, Ljava/lang/StringBuffer;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuffer;-><init>()V

    .line 2103
    .local v19, "out":Ljava/lang/StringBuffer;
    const/16 v23, 0x1000

    move/from16 v0, v23

    new-array v4, v0, [B

    .line 2104
    .local v4, "b":[B
    :goto_3
    invoke-virtual {v13, v4}, Ljava/io/InputStream;->read([B)I

    move-result v18

    .local v18, "n":I
    const/16 v23, -0x1

    move/from16 v0, v18

    move/from16 v1, v23

    if-eq v0, v1, :cond_9

    .line 2105
    new-instance v23, Ljava/lang/String;

    const/16 v24, 0x0

    move-object/from16 v0, v23

    move/from16 v1, v24

    move/from16 v2, v18

    invoke-direct {v0, v4, v1, v2}, Ljava/lang/String;-><init>([BII)V

    move-object/from16 v0, v19

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_3

    .line 2108
    .end local v4    # "b":[B
    .end local v18    # "n":I
    .end local v19    # "out":Ljava/lang/StringBuffer;
    :catch_0
    move-exception v9

    .line 2110
    .local v9, "e":Ljava/io/IOException;
    :try_start_3
    invoke-virtual {v9}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 2111
    const/16 v23, 0x0

    .line 2113
    if-eqz v13, :cond_1

    .line 2115
    :try_start_4
    invoke-virtual {v13}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_6

    .line 2131
    .end local v9    # "e":Ljava/io/IOException;
    :cond_1
    :goto_4
    return-object v23

    .line 2068
    .end local v13    # "inputStream":Ljava/io/InputStream;
    .end local v21    # "url":Ljava/lang/String;
    :catch_1
    move-exception v11

    .line 2069
    .local v11, "ignored":Ljava/lang/Exception;
    const/16 v22, 0x0

    .line 2071
    if-eqz v14, :cond_0

    .line 2073
    :try_start_5
    invoke-virtual {v14}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    goto/16 :goto_0

    .line 2074
    :catch_2
    move-exception v23

    goto/16 :goto_0

    .line 2071
    .end local v11    # "ignored":Ljava/lang/Exception;
    :catchall_0
    move-exception v23

    if-eqz v14, :cond_2

    .line 2073
    :try_start_6
    invoke-virtual {v14}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4

    .line 2075
    :cond_2
    :goto_5
    throw v23

    .line 2079
    .restart local v21    # "url":Ljava/lang/String;
    :cond_3
    const-string v23, ""

    goto/16 :goto_1

    .line 2084
    :cond_4
    const-string v23, "%x"

    const-string v24, "usb_tmo_"

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v21

    goto/16 :goto_2

    .line 2086
    :cond_5
    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v23, v0

    if-eqz v23, :cond_6

    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v23, v0

    if-nez v23, :cond_6

    .line 2087
    const-string v23, "%x"

    const-string v24, "wifi_"

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v21

    goto/16 :goto_2

    .line 2088
    :cond_6
    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v23, v0

    if-eqz v23, :cond_8

    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v23, v0

    if-eqz v23, :cond_8

    .line 2089
    invoke-static {}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->isMetroPCS()Z

    move-result v23

    if-eqz v23, :cond_7

    .line 2090
    const-string v23, "%x"

    const-string v24, "usb_wifi_mtr_"

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v21

    goto/16 :goto_2

    .line 2092
    :cond_7
    const-string v23, "%x"

    const-string v24, "usb_wifi_tmo_"

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v21

    goto/16 :goto_2

    .line 2095
    :cond_8
    const-string v23, "%x"

    const-string v24, ""

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v21

    goto/16 :goto_2

    .line 2107
    .restart local v4    # "b":[B
    .restart local v13    # "inputStream":Ljava/io/InputStream;
    .restart local v18    # "n":I
    .restart local v19    # "out":Ljava/lang/StringBuffer;
    :cond_9
    :try_start_7
    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    move-result-object v10

    .line 2113
    .local v10, "html":Ljava/lang/String;
    if-eqz v13, :cond_a

    .line 2115
    :try_start_8
    invoke-virtual {v13}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_5

    .line 2121
    :cond_a
    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mContext:Landroid/content/Context;

    move-object/from16 v23, v0

    const-string v24, "layout_inflater"

    invoke-virtual/range {v23 .. v24}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/view/LayoutInflater;

    .line 2123
    .local v12, "inflater":Landroid/view/LayoutInflater;
    const v23, 0x7f0400b4

    const/16 v24, 0x0

    move/from16 v0, v23

    move-object/from16 v1, v24

    invoke-virtual {v12, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    .line 2124
    .local v7, "customView":Landroid/view/View;
    const v23, 0x7f0d01ee

    move/from16 v0, v23

    invoke-virtual {v7, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/CheckBox;

    .line 2125
    .local v8, "dnsCheckBox":Landroid/widget/CheckBox;
    const/16 v23, 0x8

    move/from16 v0, v23

    invoke-virtual {v8, v0}, Landroid/view/View;->setVisibility(I)V

    .line 2127
    const v23, 0x7f0d00e2

    move/from16 v0, v23

    invoke-virtual {v7, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 2128
    .local v5, "body":Landroid/widget/TextView;
    invoke-static {v10}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2129
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 2131
    new-instance v23, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mContext:Landroid/content/Context;

    move-object/from16 v24, v0

    invoke-direct/range {v23 .. v24}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v24, 0x7f0e0d63

    invoke-virtual/range {v23 .. v24}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v7}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v23

    const v24, 0x104000a

    new-instance v25, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler$43;

    invoke-direct/range {v25 .. v26}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler$43;-><init>(Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;)V

    invoke-virtual/range {v23 .. v25}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v23

    goto/16 :goto_4

    .line 2113
    .end local v4    # "b":[B
    .end local v5    # "body":Landroid/widget/TextView;
    .end local v7    # "customView":Landroid/view/View;
    .end local v8    # "dnsCheckBox":Landroid/widget/CheckBox;
    .end local v10    # "html":Ljava/lang/String;
    .end local v12    # "inflater":Landroid/view/LayoutInflater;
    .end local v18    # "n":I
    .end local v19    # "out":Ljava/lang/StringBuffer;
    :catchall_1
    move-exception v23

    if-eqz v13, :cond_b

    .line 2115
    :try_start_9
    invoke-virtual {v13}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_7

    .line 2117
    :cond_b
    :goto_7
    throw v23

    .line 2074
    .end local v13    # "inputStream":Ljava/io/InputStream;
    .end local v21    # "url":Ljava/lang/String;
    :catch_3
    move-exception v23

    goto/16 :goto_0

    :catch_4
    move-exception v24

    goto/16 :goto_5

    .line 2116
    .restart local v4    # "b":[B
    .restart local v10    # "html":Ljava/lang/String;
    .restart local v13    # "inputStream":Ljava/io/InputStream;
    .restart local v18    # "n":I
    .restart local v19    # "out":Ljava/lang/StringBuffer;
    .restart local v21    # "url":Ljava/lang/String;
    :catch_5
    move-exception v23

    goto/16 :goto_6

    .end local v4    # "b":[B
    .end local v10    # "html":Ljava/lang/String;
    .end local v18    # "n":I
    .end local v19    # "out":Ljava/lang/StringBuffer;
    .restart local v9    # "e":Ljava/io/IOException;
    :catch_6
    move-exception v24

    goto/16 :goto_4

    .end local v9    # "e":Ljava/io/IOException;
    :catch_7
    move-exception v24

    goto :goto_7
.end method

.method private showProgress(Z)V
    .locals 3
    .param p1, "enable"    # Z

    .prologue
    .line 1809
    const-string v0, "WifiApSwitchEnabler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "showProgress is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1810
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    if-eqz v0, :cond_0

    .line 1811
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0, p1}, Lcom/android/settings/widget/SwitchBar;->setProgressBarVisible(Z)V

    .line 1813
    :cond_0
    return-void
.end method

.method private startProvisioningIfNecessary(I)V
    .locals 5
    .param p1, "choice"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1488
    invoke-virtual {p0}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->isProvisioningNeeded()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1489
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1490
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mProvisionApp:[Ljava/lang/String;

    aget-object v1, v1, v3

    iget-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mProvisionApp:[Ljava/lang/String;

    aget-object v2, v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1491
    const-string v1, "TETHER_TYPE"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1492
    const/high16 v1, 0x800000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1493
    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mActivity:Ljava/lang/Object;

    instance-of v1, v1, Landroid/preference/PreferenceActivity;

    if-eqz v1, :cond_1

    .line 1494
    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mActivity:Ljava/lang/Object;

    check-cast v1, Landroid/preference/PreferenceActivity;

    invoke-virtual {v1, v0, v3}, Landroid/preference/PreferenceActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1503
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    :goto_0
    return-void

    .line 1495
    .restart local v0    # "intent":Landroid/content/Intent;
    :cond_1
    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mActivity:Ljava/lang/Object;

    instance-of v1, v1, Lcom/android/settings/SettingsPreferenceFragment;

    if-eqz v1, :cond_0

    .line 1496
    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mActivity:Ljava/lang/Object;

    check-cast v1, Lcom/android/settings/SettingsPreferenceFragment;

    invoke-virtual {v1, v0, v3}, Lcom/android/settings/SettingsPreferenceFragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 1497
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_2
    invoke-static {}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->isTMO()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-static {}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->isMetroPCS()Z

    move-result v1

    if-eqz v1, :cond_5

    :cond_3
    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mProvisionApp:[Ljava/lang/String;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mProvisionApp:[Ljava/lang/String;

    array-length v1, v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_5

    .line 1498
    :cond_4
    const/16 v1, 0xf

    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->showDialog(I)V

    goto :goto_0

    .line 1501
    :cond_5
    invoke-virtual {p0, v4}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->setSoftapEnabled(Z)Z

    goto :goto_0
.end method

.method private updateTetherState([Ljava/lang/Object;[Ljava/lang/Object;[Ljava/lang/Object;)V
    .locals 13
    .param p1, "available"    # [Ljava/lang/Object;
    .param p2, "tethered"    # [Ljava/lang/Object;
    .param p3, "errored"    # [Ljava/lang/Object;

    .prologue
    .line 592
    const/4 v11, 0x0

    .line 593
    .local v11, "wifiTethered":Z
    const/4 v10, 0x0

    .line 595
    .local v10, "wifiErrored":Z
    move-object v0, p2

    .local v0, "arr$":[Ljava/lang/Object;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    move v3, v2

    .end local v0    # "arr$":[Ljava/lang/Object;
    .end local v2    # "i$":I
    .end local v4    # "len$":I
    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_2

    aget-object v6, v0, v3

    .local v6, "o":Ljava/lang/Object;
    move-object v8, v6

    .line 596
    check-cast v8, Ljava/lang/String;

    .line 597
    .local v8, "s":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mWifiRegexs:[Ljava/lang/String;

    .local v1, "arr$":[Ljava/lang/String;
    array-length v5, v1

    .local v5, "len$":I
    const/4 v2, 0x0

    .end local v3    # "i$":I
    .restart local v2    # "i$":I
    :goto_1
    if-ge v2, v5, :cond_1

    aget-object v7, v1, v2

    .line 598
    .local v7, "regex":Ljava/lang/String;
    invoke-virtual {v8, v7}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_0

    const/4 v11, 0x1

    .line 597
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 595
    .end local v7    # "regex":Ljava/lang/String;
    :cond_1
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    .end local v2    # "i$":I
    .restart local v3    # "i$":I
    goto :goto_0

    .line 601
    .end local v1    # "arr$":[Ljava/lang/String;
    .end local v5    # "len$":I
    .end local v6    # "o":Ljava/lang/Object;
    .end local v8    # "s":Ljava/lang/String;
    :cond_2
    move-object/from16 v0, p3

    .restart local v0    # "arr$":[Ljava/lang/Object;
    array-length v4, v0

    .restart local v4    # "len$":I
    const/4 v2, 0x0

    .end local v3    # "i$":I
    .restart local v2    # "i$":I
    move v3, v2

    .end local v0    # "arr$":[Ljava/lang/Object;
    .end local v2    # "i$":I
    .end local v4    # "len$":I
    .restart local v3    # "i$":I
    :goto_2
    if-ge v3, v4, :cond_5

    aget-object v6, v0, v3

    .restart local v6    # "o":Ljava/lang/Object;
    move-object v8, v6

    .line 602
    check-cast v8, Ljava/lang/String;

    .line 603
    .restart local v8    # "s":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mWifiRegexs:[Ljava/lang/String;

    .restart local v1    # "arr$":[Ljava/lang/String;
    array-length v5, v1

    .restart local v5    # "len$":I
    const/4 v2, 0x0

    .end local v3    # "i$":I
    .restart local v2    # "i$":I
    :goto_3
    if-ge v2, v5, :cond_4

    aget-object v7, v1, v2

    .line 604
    .restart local v7    # "regex":Ljava/lang/String;
    invoke-virtual {v8, v7}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_3

    const/4 v10, 0x1

    .line 603
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 601
    .end local v7    # "regex":Ljava/lang/String;
    :cond_4
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    .end local v2    # "i$":I
    .restart local v3    # "i$":I
    goto :goto_2

    .line 608
    .end local v1    # "arr$":[Ljava/lang/String;
    .end local v5    # "len$":I
    .end local v6    # "o":Ljava/lang/Object;
    .end local v8    # "s":Ljava/lang/String;
    :cond_5
    if-eqz v11, :cond_7

    iget-object v12, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mSwitchPref:Landroid/preference/SwitchPreference;

    if-eqz v12, :cond_7

    .line 609
    iget-object v12, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v12}, Landroid/net/wifi/WifiManager;->getWifiApConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v9

    .line 610
    .local v9, "wifiConfig":Landroid/net/wifi/WifiConfiguration;
    invoke-virtual {p0, v9}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->updateConfigSummary(Landroid/net/wifi/WifiConfiguration;)V

    .line 614
    .end local v9    # "wifiConfig":Landroid/net/wifi/WifiConfiguration;
    :cond_6
    :goto_4
    return-void

    .line 611
    :cond_7
    if-eqz v10, :cond_6

    .line 612
    const v12, 0x7f0e0389

    invoke-direct {p0, v12}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->setSummary(I)V

    goto :goto_4
.end method


# virtual methods
.method public dismissDialog(I)V
    .locals 4
    .param p1, "id"    # I

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 1543
    packed-switch p1, :pswitch_data_0

    .line 1580
    :cond_0
    :goto_0
    :pswitch_0
    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-eqz v1, :cond_1

    .line 1581
    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v0

    .line 1582
    .local v0, "wifiApState":I
    const/16 v1, 0xd

    if-eq v0, v1, :cond_1

    const/16 v1, 0xc

    if-eq v0, v1, :cond_1

    .line 1583
    const/4 v1, 0x3

    if-eq p1, v1, :cond_1

    .line 1584
    invoke-virtual {p0, v3}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->setChecked(Z)V

    .line 1587
    .end local v0    # "wifiApState":I
    :cond_1
    return-void

    .line 1549
    :pswitch_1
    invoke-direct {p0, v3}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->showProgress(Z)V

    goto :goto_0

    .line 1552
    :pswitch_2
    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mWarnRoam:Landroid/app/AlertDialog;

    if-eqz v1, :cond_2

    .line 1553
    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mWarnRoam:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->dismiss()V

    .line 1554
    iput-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mWarnRoam:Landroid/app/AlertDialog;

    .line 1556
    :cond_2
    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mWarnRoamBulder:Landroid/app/AlertDialog$Builder;

    if-eqz v1, :cond_0

    .line 1557
    iput-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mWarnRoamBulder:Landroid/app/AlertDialog$Builder;

    goto :goto_0

    .line 1561
    :pswitch_3
    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mNoSimDialog:Landroid/app/AlertDialog;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mNoSimDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1562
    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mNoSimDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->dismiss()V

    .line 1563
    iput-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mNoSimDialog:Landroid/app/AlertDialog;

    goto :goto_0

    .line 1567
    :pswitch_4
    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->warnWifiDisableDialog:Landroid/app/AlertDialog;

    if-eqz v1, :cond_0

    .line 1568
    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->warnWifiDisableDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->dismiss()V

    .line 1569
    iput-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->warnWifiDisableDialog:Landroid/app/AlertDialog;

    goto :goto_0

    .line 1573
    :pswitch_5
    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mWarningDialog:Landroid/app/AlertDialog;

    if-eqz v1, :cond_0

    .line 1574
    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mWarningDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->dismiss()V

    .line 1575
    iput-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mWarningDialog:Landroid/app/AlertDialog;

    goto :goto_0

    .line 1543
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_1
        :pswitch_4
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_5
    .end packed-switch
.end method

.method public getStaNum()I
    .locals 5

    .prologue
    .line 1691
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 1692
    .local v0, "msg":Landroid/os/Message;
    const/4 v2, 0x3

    iput v2, v0, Landroid/os/Message;->what:I

    .line 1693
    iget-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2, v0}, Landroid/net/wifi/WifiManager;->callSECApi(Landroid/os/Message;)I

    move-result v1

    .line 1694
    .local v1, "num":I
    const-string v2, "WifiApSwitchEnabler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "STANUM: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1695
    return v1
.end method

.method public initSwitchbar()V
    .locals 1

    .prologue
    .line 334
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0, p0}, Lcom/android/settings/widget/SwitchBar;->addOnSwitchChangeListener(Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;)V

    .line 335
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0}, Lcom/android/settings/widget/SwitchBar;->show()V

    .line 336
    return-void
.end method

.method isProvisioningNeeded()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 1506
    invoke-direct {p0}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->isProvisioningCheck()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1514
    :cond_0
    :goto_0
    return v0

    .line 1507
    :cond_1
    invoke-direct {p0}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->isWifiSharingEnabled()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1508
    invoke-direct {p0}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->isWifiConnected()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1509
    const-string v1, "WifiApSwitchEnabler"

    const-string v2, "Wifi is connected so skip provisioning for Wifi Sharing"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1512
    :cond_2
    const-string v1, "WifiApSwitchEnabler"

    const-string v2, "Wifi is not connected so dont skip provisioning for Wifi Sharing"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1514
    :cond_3
    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mProvisionApp:[Ljava/lang/String;

    array-length v1, v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 3
    .param p1, "arg0"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    const/4 v1, 0x0

    .line 1244
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    if-eqz v0, :cond_0

    .line 1245
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0, p2}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    .line 1246
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/SwitchBar;->setEnabled(Z)V

    .line 1248
    :cond_0
    iget-boolean v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->isSetChecked:Z

    if-eqz v0, :cond_2

    .line 1279
    :cond_1
    :goto_0
    return-void

    .line 1251
    :cond_2
    invoke-direct {p0}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->isWifiApBlocked()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1255
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 1256
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, p2}, Landroid/widget/Switch;->setChecked(Z)V

    .line 1258
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "airplane_mode_on"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    :goto_1
    iput-boolean v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mIsAirplaneMode:Z

    .line 1260
    if-eqz p2, :cond_4

    .line 1261
    iget-boolean v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mIsAirplaneMode:Z

    if-eqz v0, :cond_4

    .line 1262
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mContext:Landroid/content/Context;

    const v2, 0x7f0e1485

    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1263
    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->setEnabled(Z)V

    .line 1264
    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->setChecked(Z)V

    goto :goto_0

    :cond_3
    move v0, v1

    .line 1258
    goto :goto_1

    .line 1269
    :cond_4
    if-eqz p2, :cond_6

    .line 1270
    const-string v0, "USC"

    sget-object v1, Lcom/android/settings/Utils;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1271
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->showDialog(I)V

    goto :goto_0

    .line 1275
    :cond_5
    invoke-direct {p0}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->preProvisioning()V

    goto :goto_0

    .line 1277
    :cond_6
    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->setSoftapEnabled(Z)Z

    goto :goto_0
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 4
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1283
    iget-object v3, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mSwitchPref:Landroid/preference/SwitchPreference;

    if-nez v3, :cond_0

    .line 1310
    .end local p2    # "newValue":Ljava/lang/Object;
    :goto_0
    return v1

    .line 1286
    .restart local p2    # "newValue":Ljava/lang/Object;
    :cond_0
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "newValue":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 1287
    .local v0, "enable":Z
    iget-object v3, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mSwitchPref:Landroid/preference/SwitchPreference;

    if-eqz v3, :cond_2

    .line 1288
    iget-object v3, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mSwitchPref:Landroid/preference/SwitchPreference;

    invoke-virtual {v3}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v3

    if-ne v3, v0, :cond_1

    move v1, v2

    goto :goto_0

    .line 1290
    :cond_1
    iget-object v3, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mSwitchPref:Landroid/preference/SwitchPreference;

    invoke-virtual {v3, v1}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 1291
    iget-object v3, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mSwitchPref:Landroid/preference/SwitchPreference;

    invoke-virtual {v3, v0}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 1299
    :cond_2
    if-eqz v0, :cond_4

    .line 1300
    const-string v1, "USC"

    sget-object v3, Lcom/android/settings/Utils;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1301
    const/16 v1, 0x8

    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->showDialog(I)V

    :goto_1
    move v1, v2

    .line 1310
    goto :goto_0

    .line 1305
    :cond_3
    invoke-direct {p0}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->preProvisioning()V

    goto :goto_1

    .line 1307
    :cond_4
    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->setSoftapEnabled(Z)Z

    goto :goto_1
.end method

.method public onSwitchChanged(Landroid/widget/Switch;Z)V
    .locals 1
    .param p1, "switchView"    # Landroid/widget/Switch;
    .param p2, "isChecked"    # Z

    .prologue
    .line 340
    invoke-direct {p0}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->isWifiApBlocked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 343
    :cond_0
    return-void
.end method

.method public pause()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 387
    invoke-direct {p0}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->isWifiApBlocked()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 388
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mSwitch:Landroid/widget/Switch;

    if-eqz v0, :cond_0

    .line 389
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v2}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 409
    :cond_0
    :goto_0
    return-void

    .line 392
    :cond_1
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->intentReceiver:Landroid/content/Intent;

    if-eqz v0, :cond_2

    .line 393
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 394
    iput-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->intentReceiver:Landroid/content/Intent;

    .line 396
    :cond_2
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mSwitch:Landroid/widget/Switch;

    if-eqz v0, :cond_3

    .line 397
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v2}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 398
    :cond_3
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mSwitchPref:Landroid/preference/SwitchPreference;

    if-eqz v0, :cond_4

    .line 399
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mSwitchPref:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v2}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 403
    :cond_4
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->showProgress(Z)V

    .line 404
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->dismissDialog(I)V

    .line 406
    invoke-static {}, Lcom/android/settings/Utils;->isJapanKDIModel()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mTetherRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 407
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mTetherHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mTetherRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public resume()V
    .locals 3

    .prologue
    .line 353
    invoke-direct {p0}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->isWifiApBlocked()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 354
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mSwitch:Landroid/widget/Switch;

    if-eqz v0, :cond_0

    .line 355
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, p0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 384
    :cond_0
    :goto_0
    return-void

    .line 358
    :cond_1
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->intentReceiver:Landroid/content/Intent;

    if-nez v0, :cond_2

    .line 359
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->intentReceiver:Landroid/content/Intent;

    .line 360
    :cond_2
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mSwitch:Landroid/widget/Switch;

    if-eqz v0, :cond_3

    .line 361
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, p0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 362
    :cond_3
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mSwitchPref:Landroid/preference/SwitchPreference;

    if-eqz v0, :cond_4

    .line 363
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mSwitchPref:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 378
    :cond_4
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->dismissDialog(I)V

    .line 379
    invoke-direct {p0}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->enableWifiCheckBox()V

    .line 381
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mDialogConfigure:Lcom/android/settings/wifi/WifiApDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mDialogConfigure:Lcom/android/settings/wifi/WifiApDialog;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiApDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 382
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mDialogConfigure:Lcom/android/settings/wifi/WifiApDialog;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiApDialog;->dismissSpinnerPopup()V

    goto :goto_0
.end method

.method public saveIsShowPassword()V
    .locals 3

    .prologue
    .line 1767
    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1768
    .local v0, "cr":Landroid/content/ContentResolver;
    const-string v2, "wifi_ap_show_passwd"

    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mDialogConfigure:Lcom/android/settings/wifi/WifiApDialog;

    invoke-virtual {v1}, Lcom/android/settings/wifi/WifiApDialog;->getCheckShowPassword()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1770
    return-void

    .line 1768
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public secSetSoftapEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 1678
    if-eqz p1, :cond_0

    .line 1680
    invoke-direct {p0}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->afterAttentionDialog()V

    .line 1688
    :goto_0
    return-void

    .line 1682
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->getStaNum()I

    move-result v0

    if-eqz v0, :cond_1

    .line 1683
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->showDialog(I)V

    goto :goto_0

    .line 1685
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->setSoftapEnabled(Z)Z

    goto :goto_0
.end method

.method public sendSetChecked(Z)V
    .locals 2
    .param p1, "checked"    # Z

    .prologue
    .line 1518
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mHandler:Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler$SwitchHandler;

    if-eqz v0, :cond_0

    .line 1520
    if-eqz p1, :cond_1

    .line 1521
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mHandler:Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler$SwitchHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler$SwitchHandler;->sendEmptyMessage(I)Z

    .line 1525
    :cond_0
    :goto_0
    return-void

    .line 1523
    :cond_1
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mHandler:Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler$SwitchHandler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler$SwitchHandler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method public setChecked(Z)V
    .locals 4
    .param p1, "checked"    # Z

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1149
    invoke-direct {p0}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->isWifiApBlocked()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1150
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mSwitch:Landroid/widget/Switch;

    if-eqz v0, :cond_0

    .line 1151
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mSwitch:Landroid/widget/Switch;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 1174
    :cond_0
    :goto_0
    return-void

    .line 1154
    :cond_1
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mSwitch:Landroid/widget/Switch;

    if-eqz v0, :cond_2

    .line 1155
    iput-boolean v3, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->isSetChecked:Z

    .line 1156
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, p1}, Landroid/widget/Switch;->setChecked(Z)V

    .line 1157
    iput-boolean v2, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->isSetChecked:Z

    .line 1159
    :cond_2
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mSwitchPref:Landroid/preference/SwitchPreference;

    if-eqz v0, :cond_3

    .line 1160
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mSwitchPref:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, p1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 1162
    :cond_3
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    if-eqz v0, :cond_0

    .line 1163
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0, p1}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    .line 1164
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v0

    const/16 v1, 0xc

    if-eq v0, v1, :cond_4

    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_5

    .line 1166
    :cond_4
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0, v2}, Lcom/android/settings/widget/SwitchBar;->setEnabled(Z)V

    goto :goto_0

    .line 1168
    :cond_5
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0, v3}, Lcom/android/settings/widget/SwitchBar;->setEnabled(Z)V

    goto :goto_0
.end method

.method public setEnabled(Z)V
    .locals 3
    .param p1, "enabled"    # Z

    .prologue
    const/4 v0, 0x0

    .line 1177
    invoke-direct {p0}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->isWifiApBlocked()Z

    move-result v1

    if-nez v1, :cond_3

    .line 1192
    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "airplane_mode_on"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput-boolean v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mIsAirplaneMode:Z

    .line 1195
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mSwitch:Landroid/widget/Switch;

    if-eqz v0, :cond_1

    .line 1196
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, p1}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 1198
    :cond_1
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mSwitchPref:Landroid/preference/SwitchPreference;

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mIsAirplaneMode:Z

    if-nez v0, :cond_2

    .line 1199
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mSwitchPref:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, p1}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 1201
    :cond_2
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    if-eqz v0, :cond_3

    .line 1202
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0, p1}, Lcom/android/settings/widget/SwitchBar;->setEnabled(Z)V

    .line 1206
    :cond_3
    return-void
.end method

.method public setInformation(Lcom/android/settings/SettingsPreferenceFragment;)V
    .locals 2
    .param p1, "pref"    # Lcom/android/settings/SettingsPreferenceFragment;

    .prologue
    .line 1730
    const-string v0, "WifiApSwitchEnabler"

    const-string v1, "setInformation: SettingsPreferenceFragment"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1731
    iput-object p1, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mActivity:Ljava/lang/Object;

    .line 1732
    return-void
.end method

.method public setSoftapEnabled(Z)Z
    .locals 12
    .param p1, "enable"    # Z

    .prologue
    .line 440
    if-eqz p1, :cond_0

    iget-boolean v9, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mIsAirplaneMode:Z

    if-eqz v9, :cond_0

    .line 441
    const/4 v9, 0x0

    invoke-virtual {p0, v9}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->setEnabled(Z)V

    .line 442
    const/4 v9, 0x0

    invoke-virtual {p0, v9}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->setChecked(Z)V

    .line 443
    const/4 v9, 0x0

    .line 580
    :goto_0
    return v9

    .line 452
    :cond_0
    iget-object v9, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v9}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v8

    .line 453
    .local v8, "wifiState":I
    iget-object v9, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 454
    .local v1, "cr":Landroid/content/ContentResolver;
    invoke-direct {p0}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->isWifiSharingEnabled()Z

    move-result v9

    if-nez v9, :cond_4

    .line 456
    if-eqz p1, :cond_4

    const/4 v9, 0x2

    if-eq v8, v9, :cond_1

    const/4 v9, 0x3

    if-eq v8, v9, :cond_1

    iget-object v9, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v9}, Landroid/net/wifi/WifiManager;->isScanAlwaysAvailable()Z

    move-result v9

    if-eqz v9, :cond_4

    .line 459
    :cond_1
    const/4 v9, 0x2

    if-eq v8, v9, :cond_2

    const/4 v9, 0x3

    if-ne v8, v9, :cond_3

    .line 461
    :cond_2
    const-string v9, "wifi_saved_state"

    const/4 v10, 0x1

    invoke-static {v1, v9, v10}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 463
    :cond_3
    iget-object v9, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 465
    const-wide/16 v10, 0x258

    :try_start_0
    invoke-static {v10, v11}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 472
    :cond_4
    :goto_1
    if-eqz p1, :cond_5

    invoke-direct {p0}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->getRvfMode()I

    move-result v9

    if-lez v9, :cond_5

    .line 473
    const/4 v9, 0x0

    invoke-direct {p0, v9}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->setRvfMode(I)V

    .line 474
    const-string v9, "WifiApSwitchEnabler"

    const-string v10, "setRvfMode(0) for Hotspot configuration"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 475
    iget-object v9, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v9}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v9

    const/16 v10, 0xd

    if-ne v9, v10, :cond_5

    .line 476
    iget-object v9, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Landroid/net/wifi/WifiManager;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    .line 478
    const-wide/16 v10, 0x258

    :try_start_1
    invoke-static {v10, v11}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    .line 485
    :cond_5
    :goto_2
    const-string v9, "WifiApSwitchEnabler"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Check airplane mode once again: on ? "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-boolean v11, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mIsAirplaneMode:Z

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 486
    if-eqz p1, :cond_6

    iget-boolean v9, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mIsAirplaneMode:Z

    if-eqz v9, :cond_6

    .line 487
    const/4 v9, 0x0

    invoke-virtual {p0, v9}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->setEnabled(Z)V

    .line 488
    const/4 v9, 0x0

    invoke-virtual {p0, v9}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->setChecked(Z)V

    .line 489
    const/4 v9, 0x0

    goto/16 :goto_0

    .line 466
    :catch_0
    move-exception v3

    .line 467
    .local v3, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v3}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_1

    .line 479
    .end local v3    # "e":Ljava/lang/InterruptedException;
    :catch_1
    move-exception v3

    .line 480
    .restart local v3    # "e":Ljava/lang/InterruptedException;
    invoke-virtual {v3}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_2

    .line 493
    .end local v3    # "e":Ljava/lang/InterruptedException;
    :cond_6
    const-string v9, "WifiApSwitchEnabler"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "setSoftapEnabled: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 494
    if-eqz p1, :cond_7

    invoke-virtual {p0}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->isProvisioningNeeded()Z

    move-result v9

    if-eqz v9, :cond_7

    .line 495
    const/4 v9, 0x1

    sput-boolean v9, Lcom/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->mIsProvisioningResultOk:Z

    .line 496
    const-string v9, "WifiApSwitchEnabler"

    const-string v10, "Provisioning succeeded."

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 508
    :cond_7
    if-eqz p1, :cond_8

    invoke-direct {p0}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->isWifiConnected()Z

    move-result v9

    if-eqz v9, :cond_8

    invoke-direct {p0}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->isWifiSharingEnabled()Z

    move-result v9

    if-eqz v9, :cond_8

    .line 510
    invoke-direct {p0}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->getWifiConnectedFrequency()I

    move-result v6

    .line 511
    .local v6, "wifiFrequecy":I
    const/4 v5, -0x1

    .line 513
    .local v5, "operatingWifiChannel":I
    iget-object v9, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-direct {p0, v9}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->getMobileApBand(Landroid/net/wifi/WifiConfiguration;)I

    move-result v9

    invoke-direct {p0, v6}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->getWifiConnectedBand(I)I

    move-result v10

    if-ne v9, v10, :cond_8

    .line 514
    const-string v9, "WifiApSwitchEnabler"

    const-string v10, "WifiOpearting band and MHS operating band in config are same"

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 515
    invoke-direct {p0, v6}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->getWifiChannel(I)I

    move-result v5

    .line 516
    const/4 v9, -0x1

    if-eq v5, v9, :cond_8

    iget-object v9, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget v9, v9, Landroid/net/wifi/WifiConfiguration;->channel:I

    if-eq v9, v5, :cond_8

    .line 517
    const-string v9, "WifiApSwitchEnabler"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Setting MHS Channel to wifi channel "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 518
    iget-object v9, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iput v5, v9, Landroid/net/wifi/WifiConfiguration;->channel:I

    .line 519
    iget-object v9, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v10, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v9, v10}, Landroid/net/wifi/WifiManager;->setWifiApConfiguration(Landroid/net/wifi/WifiConfiguration;)Z

    .line 524
    .end local v5    # "operatingWifiChannel":I
    .end local v6    # "wifiFrequecy":I
    :cond_8
    iget-object v9, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    const/4 v10, 0x0

    invoke-virtual {v9, v10, p1}, Landroid/net/wifi/WifiManager;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    move-result v9

    if-eqz v9, :cond_d

    .line 526
    const/4 v9, 0x0

    invoke-virtual {p0, v9}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->setEnabled(Z)V

    .line 528
    if-eqz p1, :cond_9

    .line 529
    new-instance v4, Landroid/os/Message;

    invoke-direct {v4}, Landroid/os/Message;-><init>()V

    .line 530
    .local v4, "msg":Landroid/os/Message;
    const/16 v9, 0x4d

    iput v9, v4, Landroid/os/Message;->what:I

    .line 531
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 532
    .local v0, "args":Landroid/os/Bundle;
    const-string v9, "feature"

    const-string v10, "HOTS"

    invoke-virtual {v0, v9, v10}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 533
    invoke-direct {p0}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->isWifiSharingEnabled()Z

    move-result v9

    if-eqz v9, :cond_c

    .line 535
    invoke-direct {p0}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->isWifiConnected()Z

    move-result v9

    if-eqz v9, :cond_b

    .line 536
    const-string v9, "extra"

    const-string v10, "Hotspot_con_wifi"

    invoke-virtual {v0, v9, v10}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 541
    :goto_3
    iput-object v0, v4, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 542
    iget-object v9, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v9, v4}, Landroid/net/wifi/WifiManager;->callSECApi(Landroid/os/Message;)I

    .line 549
    .end local v0    # "args":Landroid/os/Bundle;
    .end local v4    # "msg":Landroid/os/Message;
    :cond_9
    :goto_4
    if-eqz p1, :cond_e

    .line 550
    iget-object v9, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mContext:Landroid/content/Context;

    const-string v10, "device_policy"

    invoke-virtual {v9, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/admin/DevicePolicyManager;

    .line 551
    .local v2, "dpm":Landroid/app/admin/DevicePolicyManager;
    const/4 v9, 0x0

    invoke-virtual {v2, v9}, Landroid/app/admin/DevicePolicyManager;->getAllowInternetSharing(Landroid/content/ComponentName;)Z

    move-result v9

    if-nez v9, :cond_e

    .line 552
    iget-object v9, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mHandler:Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler$SwitchHandler;

    if-eqz v9, :cond_a

    .line 553
    const/4 v9, 0x0

    invoke-virtual {p0, v9}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->sendSetChecked(Z)V

    .line 554
    :cond_a
    const/4 v9, 0x1

    invoke-virtual {p0, v9}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->setEnabled(Z)V

    .line 555
    const/4 v9, 0x0

    goto/16 :goto_0

    .line 537
    .end local v2    # "dpm":Landroid/app/admin/DevicePolicyManager;
    .restart local v0    # "args":Landroid/os/Bundle;
    .restart local v4    # "msg":Landroid/os/Message;
    :cond_b
    const-string v9, "extra"

    const-string v10, "Hotspot_con_mobile"

    invoke-virtual {v0, v9, v10}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 539
    :cond_c
    const-string v9, "extra"

    const-string v10, "Hotspot_mobile"

    invoke-virtual {v0, v9, v10}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 546
    .end local v0    # "args":Landroid/os/Bundle;
    .end local v4    # "msg":Landroid/os/Message;
    :cond_d
    const v9, 0x7f0e0389

    invoke-direct {p0, v9}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->setSummary(I)V

    goto :goto_4

    .line 565
    :cond_e
    invoke-direct {p0}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->isWifiSharingEnabled()Z

    move-result v9

    if-nez v9, :cond_f

    .line 567
    if-nez p1, :cond_f

    .line 568
    const/4 v7, 0x0

    .line 570
    .local v7, "wifiSavedState":I
    :try_start_2
    const-string v9, "wifi_saved_state"

    invoke-static {v1, v9}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_2
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    move-result v7

    .line 574
    :goto_5
    const/4 v9, 0x1

    if-ne v7, v9, :cond_f

    .line 575
    iget-object v9, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 576
    const-string v9, "wifi_saved_state"

    const/4 v10, 0x0

    invoke-static {v1, v9, v10}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 580
    .end local v7    # "wifiSavedState":I
    :cond_f
    const/4 v9, 0x1

    goto/16 :goto_0

    .line 571
    .restart local v7    # "wifiSavedState":I
    :catch_2
    move-exception v9

    goto :goto_5
.end method

.method public showDialog(I)V
    .locals 38
    .param p1, "id"    # I

    .prologue
    .line 617
    packed-switch p1, :pswitch_data_0

    .line 1070
    :goto_0
    return-void

    .line 619
    :pswitch_0
    new-instance v6, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mContext:Landroid/content/Context;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    invoke-direct {v6, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 620
    .local v6, "HotspotWarningDialog":Landroid/app/AlertDialog$Builder;
    new-instance v25, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mContext:Landroid/content/Context;

    move-object/from16 v32, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v32

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 624
    .local v25, "view":Landroid/widget/TextView;
    const v32, 0x7f0e0513

    move-object/from16 v0, v25

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 626
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mIsTablet:Z

    move/from16 v32, v0

    if-nez v32, :cond_0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mIsLightTheme:Z

    move/from16 v32, v0

    if-nez v32, :cond_0

    .line 627
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mContext:Landroid/content/Context;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v32

    const v33, 0x7f0a00e2

    invoke-virtual/range {v32 .. v33}, Landroid/content/res/Resources;->getColor(I)I

    move-result v32

    move-object/from16 v0, v25

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 631
    :goto_1
    const/high16 v32, 0x41800000    # 16.0f

    move-object/from16 v0, v25

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 632
    const/16 v32, 0x1

    const/high16 v33, 0x41a00000    # 20.0f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mContext:Landroid/content/Context;

    move-object/from16 v34, v0

    invoke-virtual/range {v34 .. v34}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v34

    invoke-static/range {v32 .. v34}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v32

    move/from16 v0, v32

    float-to-int v0, v0

    move/from16 v21, v0

    .line 633
    .local v21, "px":I
    const/16 v32, 0x1e

    const/16 v33, 0x1e

    move-object/from16 v0, v25

    move/from16 v1, v21

    move/from16 v2, v32

    move/from16 v3, v21

    move/from16 v4, v33

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 634
    const/high16 v32, 0x40000000    # 2.0f

    const/high16 v33, 0x3f800000    # 1.0f

    move-object/from16 v0, v25

    move/from16 v1, v32

    move/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setLineSpacing(FF)V

    .line 635
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v32

    move-object/from16 v0, v25

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 636
    move-object/from16 v0, v25

    invoke-virtual {v6, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 637
    const v32, 0x7f0e04ff

    new-instance v33, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler$2;

    move-object/from16 v0, v33

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler$2;-><init>(Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;)V

    move/from16 v0, v32

    move-object/from16 v1, v33

    invoke-virtual {v6, v0, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 643
    const v32, 0x7f0e0827

    new-instance v33, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler$3;

    move-object/from16 v0, v33

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler$3;-><init>(Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;)V

    move/from16 v0, v32

    move-object/from16 v1, v33

    invoke-virtual {v6, v0, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 650
    new-instance v32, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler$4;

    move-object/from16 v0, v32

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler$4;-><init>(Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;)V

    move-object/from16 v0, v32

    invoke-virtual {v6, v0}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 656
    invoke-virtual {v6}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v32

    move-object/from16 v0, v32

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mWarningDialog:Landroid/app/AlertDialog;

    .line 657
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mWarningDialog:Landroid/app/AlertDialog;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_0

    .line 629
    .end local v21    # "px":I
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mContext:Landroid/content/Context;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v32

    const v33, 0x7f0a00ff

    invoke-virtual/range {v32 .. v33}, Landroid/content/res/Resources;->getColor(I)I

    move-result v32

    move-object/from16 v0, v25

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_1

    .line 661
    .end local v6    # "HotspotWarningDialog":Landroid/app/AlertDialog$Builder;
    .end local v25    # "view":Landroid/widget/TextView;
    :pswitch_1
    new-instance v7, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mContext:Landroid/content/Context;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    invoke-direct {v7, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 662
    .local v7, "ad":Landroid/app/AlertDialog$Builder;
    invoke-static {}, Lcom/android/settings/Utils;->isChinaCTCModel()Z

    move-result v32

    if-eqz v32, :cond_1

    .line 663
    const v32, 0x7f0e04a5

    move/from16 v0, v32

    invoke-virtual {v7, v0}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 667
    :goto_2
    const v32, 0x7f0e0826

    new-instance v33, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler$5;

    move-object/from16 v0, v33

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler$5;-><init>(Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;)V

    move/from16 v0, v32

    move-object/from16 v1, v33

    invoke-virtual {v7, v0, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 673
    new-instance v32, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler$6;

    move-object/from16 v0, v32

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler$6;-><init>(Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;)V

    move-object/from16 v0, v32

    invoke-virtual {v7, v0}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 679
    const v32, 0x7f0e04a3

    move/from16 v0, v32

    invoke-virtual {v7, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 680
    invoke-virtual {v7}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v32

    move-object/from16 v0, v32

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mNoSimDialog:Landroid/app/AlertDialog;

    .line 681
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mNoSimDialog:Landroid/app/AlertDialog;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_0

    .line 665
    :cond_1
    const v32, 0x7f0e04a4

    move/from16 v0, v32

    invoke-virtual {v7, v0}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    goto :goto_2

    .line 685
    .end local v7    # "ad":Landroid/app/AlertDialog$Builder;
    :pswitch_2
    new-instance v5, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mContext:Landroid/content/Context;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    invoke-direct {v5, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 686
    .local v5, "HotspotNoLTEWarningDialog":Landroid/app/AlertDialog$Builder;
    const v32, 0x7f0e0508

    move/from16 v0, v32

    invoke-virtual {v5, v0}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 687
    const v32, 0x7f0e0826

    new-instance v33, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler$7;

    move-object/from16 v0, v33

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler$7;-><init>(Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;)V

    move/from16 v0, v32

    move-object/from16 v1, v33

    invoke-virtual {v5, v0, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 693
    new-instance v32, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler$8;

    move-object/from16 v0, v32

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler$8;-><init>(Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;)V

    move-object/from16 v0, v32

    invoke-virtual {v5, v0}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 699
    const v32, 0x7f0e04a6

    move/from16 v0, v32

    invoke-virtual {v5, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 700
    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    .line 701
    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto/16 :goto_0

    .line 705
    .end local v5    # "HotspotNoLTEWarningDialog":Landroid/app/AlertDialog$Builder;
    :pswitch_3
    const/16 v32, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->setChecked(Z)V

    .line 706
    new-instance v32, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mContext:Landroid/content/Context;

    move-object/from16 v33, v0

    invoke-direct/range {v32 .. v33}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v32

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mWarnRoamBulder:Landroid/app/AlertDialog$Builder;

    .line 707
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mWarnRoamBulder:Landroid/app/AlertDialog$Builder;

    move-object/from16 v32, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mContext:Landroid/content/Context;

    move-object/from16 v33, v0

    const v34, 0x7f0e04da

    const/16 v35, 0x1

    move/from16 v0, v35

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v35, v0

    const/16 v36, 0x0

    const-string v37, "$20.48"

    aput-object v37, v35, v36

    invoke-virtual/range {v33 .. v35}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v33

    invoke-virtual/range {v32 .. v33}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 708
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mWarnRoamBulder:Landroid/app/AlertDialog$Builder;

    move-object/from16 v32, v0

    const v33, 0x7f0e07d6

    new-instance v34, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler$9;

    move-object/from16 v0, v34

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler$9;-><init>(Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;)V

    invoke-virtual/range {v32 .. v34}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 713
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mWarnRoamBulder:Landroid/app/AlertDialog$Builder;

    move-object/from16 v32, v0

    const v33, 0x7f0e04d9

    invoke-virtual/range {v32 .. v33}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 714
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mWarnRoamBulder:Landroid/app/AlertDialog$Builder;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v32

    move-object/from16 v0, v32

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mWarnRoam:Landroid/app/AlertDialog;

    .line 715
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mWarnRoam:Landroid/app/AlertDialog;

    move-object/from16 v32, v0

    new-instance v33, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler$10;

    move-object/from16 v0, v33

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler$10;-><init>(Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;)V

    invoke-virtual/range {v32 .. v33}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 721
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mWarnRoam:Landroid/app/AlertDialog;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_0

    .line 725
    :pswitch_4
    const/16 v32, 0x5

    move-object/from16 v0, p0

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->dismissDialog(I)V

    .line 731
    const/16 v32, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v32

    invoke-direct {v0, v1}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->showProgress(Z)V

    goto/16 :goto_0

    .line 735
    :pswitch_5
    new-instance v28, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mContext:Landroid/content/Context;

    move-object/from16 v32, v0

    move-object/from16 v0, v28

    move-object/from16 v1, v32

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 736
    .local v28, "warnWifiDisable":Landroid/app/AlertDialog$Builder;
    const-string v32, "VZW"

    sget-object v33, Lcom/android/settings/Utils;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    invoke-virtual/range {v32 .. v33}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v32

    if-eqz v32, :cond_2

    .line 737
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mContext:Landroid/content/Context;

    move-object/from16 v32, v0

    const v33, 0x7f040252

    const/16 v34, 0x0

    invoke-static/range {v32 .. v34}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v32

    move-object/from16 v0, v32

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->customView:Landroid/view/View;

    .line 738
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->customView:Landroid/view/View;

    move-object/from16 v32, v0

    const v33, 0x7f0d05ac

    invoke-virtual/range {v32 .. v33}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v32

    check-cast v32, Landroid/widget/LinearLayout;

    move-object/from16 v0, v32

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mWifiDisableWarnDoNotShowAgainLayout:Landroid/widget/LinearLayout;

    .line 739
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->customView:Landroid/view/View;

    move-object/from16 v32, v0

    const v33, 0x7f0d05ad

    invoke-virtual/range {v32 .. v33}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v32

    check-cast v32, Landroid/widget/CheckBox;

    move-object/from16 v0, v32

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mWifiDisableWarnDoNotShowAgain:Landroid/widget/CheckBox;

    .line 746
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->customView:Landroid/view/View;

    move-object/from16 v32, v0

    move-object/from16 v0, v28

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 750
    :goto_3
    const v32, 0x7f0e0826

    new-instance v33, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler$11;

    move-object/from16 v0, v33

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler$11;-><init>(Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;)V

    move-object/from16 v0, v28

    move/from16 v1, v32

    move-object/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 779
    const v32, 0x7f0e0827

    new-instance v33, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler$12;

    move-object/from16 v0, v33

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler$12;-><init>(Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;)V

    move-object/from16 v0, v28

    move/from16 v1, v32

    move-object/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 785
    new-instance v32, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler$13;

    move-object/from16 v0, v32

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler$13;-><init>(Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;)V

    move-object/from16 v0, v28

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 792
    invoke-virtual/range {v28 .. v28}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v32

    move-object/from16 v0, v32

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->warnWifiDisableDialog:Landroid/app/AlertDialog;

    .line 793
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->warnWifiDisableDialog:Landroid/app/AlertDialog;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_0

    .line 748
    :cond_2
    const v32, 0x7f0e046c

    move-object/from16 v0, v28

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    goto :goto_3

    .line 797
    .end local v28    # "warnWifiDisable":Landroid/app/AlertDialog$Builder;
    :pswitch_6
    new-instance v26, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mContext:Landroid/content/Context;

    move-object/from16 v32, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v32

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 798
    .local v26, "warnClientDisconnect":Landroid/app/AlertDialog$Builder;
    const v32, 0x7f0e048a

    move-object/from16 v0, v26

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v32

    const v33, 0x7f0e0826

    new-instance v34, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler$15;

    move-object/from16 v0, v34

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler$15;-><init>(Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;)V

    invoke-virtual/range {v32 .. v34}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v32

    const v33, 0x7f0e0827

    new-instance v34, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler$14;

    move-object/from16 v0, v34

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler$14;-><init>(Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;)V

    invoke-virtual/range {v32 .. v34}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v32

    const v33, 0x7f0e04fa

    invoke-virtual/range {v32 .. v33}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v32

    const/16 v33, 0x0

    invoke-virtual/range {v32 .. v33}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_0

    .line 816
    .end local v26    # "warnClientDisconnect":Landroid/app/AlertDialog$Builder;
    :pswitch_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mContext:Landroid/content/Context;

    move-object/from16 v32, v0

    const v33, 0x7f04027c

    const/16 v34, 0x0

    invoke-static/range {v32 .. v34}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v20

    .line 818
    .local v20, "mobileDataAlertView":Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mContext:Landroid/content/Context;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v22

    .line 819
    .local v22, "res":Landroid/content/res/Resources;
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v17

    .line 820
    .local v17, "locale":Ljava/util/Locale;
    invoke-virtual/range {v17 .. v17}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v32

    const-string v33, "ja"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v32

    if-eqz v32, :cond_3

    const-string v14, "ja"

    .line 821
    .local v14, "language":Ljava/lang/String;
    :goto_4
    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "<a href=\"http://tether.docomo-de.net/dcmtrg/tether_"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string v33, ".html\">"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    const v33, 0x7f0e04fc

    move-object/from16 v0, v22

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v33

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string v33, "</a>"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .line 826
    .local v16, "linkText":Ljava/lang/String;
    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "http://tether.docomo-de.net/dcmtrg/tether_"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string v33, ".html"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 829
    .local v15, "link":Ljava/lang/String;
    const v32, 0x7f0d0631

    move-object/from16 v0, v20

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    .line 830
    .local v9, "attentionLink":Landroid/widget/TextView;
    invoke-static/range {v16 .. v16}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v32

    move-object/from16 v0, v32

    invoke-virtual {v9, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 831
    new-instance v32, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler$16;

    move-object/from16 v0, v32

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v15}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler$16;-><init>(Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;Ljava/lang/String;)V

    move-object/from16 v0, v32

    invoke-virtual {v9, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 842
    new-instance v8, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mContext:Landroid/content/Context;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    invoke-direct {v8, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 843
    .local v8, "attentionDialog":Landroid/app/AlertDialog$Builder;
    move-object/from16 v0, v20

    invoke-virtual {v8, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v32

    const v33, 0x7f0e0826

    new-instance v34, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler$19;

    move-object/from16 v0, v34

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler$19;-><init>(Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;)V

    invoke-virtual/range {v32 .. v34}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v32

    const v33, 0x7f0e0827

    new-instance v34, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler$18;

    move-object/from16 v0, v34

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler$18;-><init>(Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;)V

    invoke-virtual/range {v32 .. v34}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v32

    new-instance v33, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler$17;

    move-object/from16 v0, v33

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler$17;-><init>(Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;)V

    invoke-virtual/range {v32 .. v33}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v32

    const v33, 0x1040014

    invoke-virtual/range {v32 .. v33}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 863
    invoke-virtual {v8}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v32

    move-object/from16 v0, v32

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mAttentionDialog:Landroid/app/AlertDialog;

    .line 864
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mAttentionDialog:Landroid/app/AlertDialog;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_0

    .line 820
    .end local v8    # "attentionDialog":Landroid/app/AlertDialog$Builder;
    .end local v9    # "attentionLink":Landroid/widget/TextView;
    .end local v14    # "language":Ljava/lang/String;
    .end local v15    # "link":Ljava/lang/String;
    .end local v16    # "linkText":Ljava/lang/String;
    :cond_3
    const-string v14, "en"

    goto/16 :goto_4

    .line 868
    .end local v17    # "locale":Ljava/util/Locale;
    .end local v20    # "mobileDataAlertView":Landroid/view/View;
    .end local v22    # "res":Landroid/content/res/Resources;
    :pswitch_8
    new-instance v10, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mContext:Landroid/content/Context;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    invoke-direct {v10, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 869
    .local v10, "batteryDialog":Landroid/app/AlertDialog$Builder;
    const v32, 0x7f0e04fd

    move/from16 v0, v32

    invoke-virtual {v10, v0}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v32

    const v33, 0x7f0e0826

    new-instance v34, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler$22;

    move-object/from16 v0, v34

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler$22;-><init>(Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;)V

    invoke-virtual/range {v32 .. v34}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v32

    const v33, 0x7f0e0827

    new-instance v34, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler$21;

    move-object/from16 v0, v34

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler$21;-><init>(Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;)V

    invoke-virtual/range {v32 .. v34}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v32

    new-instance v33, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler$20;

    move-object/from16 v0, v33

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler$20;-><init>(Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;)V

    invoke-virtual/range {v32 .. v33}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v32

    const v33, 0x7f0e04a6

    invoke-virtual/range {v32 .. v33}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_0

    .line 893
    .end local v10    # "batteryDialog":Landroid/app/AlertDialog$Builder;
    :pswitch_9
    new-instance v24, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mContext:Landroid/content/Context;

    move-object/from16 v32, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v32

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 894
    .local v24, "ssidDialog":Landroid/app/AlertDialog$Builder;
    const v32, 0x7f0e04fe

    move-object/from16 v0, v24

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v32

    const v33, 0x7f0e0826

    new-instance v34, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler$25;

    move-object/from16 v0, v34

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler$25;-><init>(Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;)V

    invoke-virtual/range {v32 .. v34}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v32

    const v33, 0x7f0e0827

    new-instance v34, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler$24;

    move-object/from16 v0, v34

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler$24;-><init>(Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;)V

    invoke-virtual/range {v32 .. v34}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v32

    new-instance v33, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler$23;

    move-object/from16 v0, v33

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler$23;-><init>(Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;)V

    invoke-virtual/range {v32 .. v33}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v32

    const v33, 0x7f0e0749

    invoke-virtual/range {v32 .. v33}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_0

    .line 918
    .end local v24    # "ssidDialog":Landroid/app/AlertDialog$Builder;
    :pswitch_a
    const-string v32, "WifiApSwitchEnabler"

    const-string v33, "DIALOG_FIRST_TIME_CONFIGURE create"

    invoke-static/range {v32 .. v33}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 919
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Landroid/net/wifi/WifiManager;->getWifiApConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v32

    move-object/from16 v0, v32

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    .line 920
    new-instance v32, Lcom/android/settings/wifi/WifiApDialog;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mContext:Landroid/content/Context;

    move-object/from16 v33, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mConfigureDialogListener:Landroid/content/DialogInterface$OnClickListener;

    move-object/from16 v34, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    move-object/from16 v35, v0

    invoke-direct/range {v32 .. v35}, Lcom/android/settings/wifi/WifiApDialog;-><init>(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;Landroid/net/wifi/WifiConfiguration;)V

    move-object/from16 v0, v32

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mDialogConfigure:Lcom/android/settings/wifi/WifiApDialog;

    .line 922
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mDialogConfigure:Lcom/android/settings/wifi/WifiApDialog;

    move-object/from16 v32, v0

    new-instance v33, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler$26;

    move-object/from16 v0, v33

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler$26;-><init>(Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;)V

    invoke-virtual/range {v32 .. v33}, Lcom/android/settings/wifi/WifiApDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 933
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mDialogConfigure:Lcom/android/settings/wifi/WifiApDialog;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Lcom/android/settings/wifi/WifiApDialog;->show()V

    goto/16 :goto_0

    .line 940
    :pswitch_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mContext:Landroid/content/Context;

    move-object/from16 v32, v0

    const-string v33, "dontshowmemhsfirsttime"

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    move-object/from16 v2, v33

    invoke-direct {v0, v1, v2}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->getBooleanFromSharedPreference(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v32

    if-nez v32, :cond_4

    .line 941
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->showFirstTimePoup()V

    goto/16 :goto_0

    .line 944
    :cond_4
    const/16 v32, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->setSoftapEnabled(Z)Z

    goto/16 :goto_0

    .line 949
    :pswitch_c
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->showMetorPCSHelpPoup()Landroid/app/AlertDialog;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_0

    .line 953
    :pswitch_d
    new-instance v29, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mContext:Landroid/content/Context;

    move-object/from16 v32, v0

    move-object/from16 v0, v29

    move-object/from16 v1, v32

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 954
    .local v29, "warnWifiP2PDisable":Landroid/app/AlertDialog$Builder;
    const v32, 0x7f0e0477

    move-object/from16 v0, v29

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v32

    const v33, 0x7f0e0826

    new-instance v34, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler$29;

    move-object/from16 v0, v34

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler$29;-><init>(Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;)V

    invoke-virtual/range {v32 .. v34}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v32

    const v33, 0x7f0e0827

    new-instance v34, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler$28;

    move-object/from16 v0, v34

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler$28;-><init>(Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;)V

    invoke-virtual/range {v32 .. v34}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v32

    new-instance v33, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler$27;

    move-object/from16 v0, v33

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler$27;-><init>(Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;)V

    invoke-virtual/range {v32 .. v33}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_0

    .line 977
    .end local v29    # "warnWifiP2PDisable":Landroid/app/AlertDialog$Builder;
    :pswitch_e
    new-instance v27, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mContext:Landroid/content/Context;

    move-object/from16 v32, v0

    move-object/from16 v0, v27

    move-object/from16 v1, v32

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 978
    .local v27, "warnIbssDisable":Landroid/app/AlertDialog$Builder;
    const v32, 0x7f0e043d

    move-object/from16 v0, v27

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v32

    const v33, 0x7f0e0826

    new-instance v34, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler$32;

    move-object/from16 v0, v34

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler$32;-><init>(Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;)V

    invoke-virtual/range {v32 .. v34}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v32

    const v33, 0x7f0e0827

    new-instance v34, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler$31;

    move-object/from16 v0, v34

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler$31;-><init>(Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;)V

    invoke-virtual/range {v32 .. v34}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v32

    new-instance v33, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler$30;

    move-object/from16 v0, v33

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler$30;-><init>(Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;)V

    invoke-virtual/range {v32 .. v33}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v32

    const v33, 0x7f0e04fa

    invoke-virtual/range {v32 .. v33}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_0

    .line 1011
    .end local v27    # "warnIbssDisable":Landroid/app/AlertDialog$Builder;
    :pswitch_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mContext:Landroid/content/Context;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    .line 1012
    .local v11, "cr":Landroid/content/ContentResolver;
    const/16 v23, 0x2

    .line 1014
    .local v23, "selectCheckbox":I
    :try_start_0
    const-string v32, "WifiApSwitchEnabler"

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string v34, "Wifi Sharing provider value"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string v34, "wifi_ap_wifi_sharing"

    const/16 v35, 0x1

    move-object/from16 v0, v34

    move/from16 v1, v35

    invoke-static {v11, v0, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v34

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v32 .. v33}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1015
    const-string v32, "wifi_ap_wifi_sharing"

    move-object/from16 v0, v32

    invoke-static {v11, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v32

    const/16 v33, 0x1

    move/from16 v0, v32

    move/from16 v1, v33

    if-ne v0, v1, :cond_5

    .line 1016
    const/16 v23, 0x1

    .line 1021
    :cond_5
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mContext:Landroid/content/Context;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v32

    const v33, 0x7f11001f

    invoke-virtual/range {v32 .. v33}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v30

    .line 1022
    .local v30, "wifi_sharing_items":[Ljava/lang/CharSequence;
    new-instance v13, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mContext:Landroid/content/Context;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    invoke-direct {v13, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1023
    .local v13, "firstTimeWifiSharing":Landroid/app/AlertDialog$Builder;
    const v32, 0x7f0e0439

    move/from16 v0, v32

    invoke-virtual {v13, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v32

    new-instance v33, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler$35;

    move-object/from16 v0, v33

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v11}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler$35;-><init>(Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;Landroid/content/ContentResolver;)V

    move-object/from16 v0, v32

    move-object/from16 v1, v30

    move/from16 v2, v23

    move-object/from16 v3, v33

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v32

    const v33, 0x7f0e01ba

    new-instance v34, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler$34;

    move-object/from16 v0, v34

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v11}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler$34;-><init>(Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;Landroid/content/ContentResolver;)V

    invoke-virtual/range {v32 .. v34}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v32

    new-instance v33, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler$33;

    move-object/from16 v0, v33

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v11}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler$33;-><init>(Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;Landroid/content/ContentResolver;)V

    invoke-virtual/range {v32 .. v33}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 1062
    invoke-virtual {v13}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v19

    .line 1063
    .local v19, "mWifiSharingDlg":Landroid/app/AlertDialog;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mContext:Landroid/content/Context;

    move-object/from16 v32, v0

    const v33, 0x7f040254

    const/16 v34, 0x0

    invoke-static/range {v32 .. v34}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v31

    .line 1064
    .local v31, "wifisharing_desc_view":Landroid/view/View;
    invoke-virtual/range {v19 .. v19}, Landroid/app/AlertDialog;->getListView()Landroid/widget/ListView;

    move-result-object v18

    .line 1065
    .local v18, "lv":Landroid/widget/ListView;
    const/16 v32, 0x0

    const/16 v33, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    move/from16 v3, v33

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 1066
    invoke-virtual/range {v19 .. v19}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_0

    .line 1018
    .end local v13    # "firstTimeWifiSharing":Landroid/app/AlertDialog$Builder;
    .end local v18    # "lv":Landroid/widget/ListView;
    .end local v19    # "mWifiSharingDlg":Landroid/app/AlertDialog;
    .end local v30    # "wifi_sharing_items":[Ljava/lang/CharSequence;
    .end local v31    # "wifisharing_desc_view":Landroid/view/View;
    :catch_0
    move-exception v12

    .line 1019
    .local v12, "e1":Landroid/provider/Settings$SettingNotFoundException;
    const-string v32, "WifiApSwitchEnabler"

    const-string v33, "Wifi Sharing Provider is not defined"

    invoke-static/range {v32 .. v33}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    .line 617
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_3
        :pswitch_7
        :pswitch_8
        :pswitch_0
        :pswitch_a
        :pswitch_d
        :pswitch_2
        :pswitch_9
        :pswitch_e
        :pswitch_f
        :pswitch_b
        :pswitch_c
    .end packed-switch
.end method

.method public updateConfigSummary(Landroid/net/wifi/WifiConfiguration;)V
    .locals 4
    .param p1, "wifiConfig"    # Landroid/net/wifi/WifiConfiguration;

    .prologue
    .line 584
    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mContext:Landroid/content/Context;

    const v2, 0x10403af

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 586
    .local v0, "s":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mContext:Landroid/content/Context;

    const v2, 0x7f0e058d

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    if-nez p1, :cond_0

    .end local v0    # "s":Ljava/lang/String;
    :goto_0
    aput-object v0, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->setSummary(Ljava/lang/CharSequence;)V

    .line 589
    return-void

    .line 586
    .restart local v0    # "s":Ljava/lang/String;
    :cond_0
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    goto :goto_0
.end method
