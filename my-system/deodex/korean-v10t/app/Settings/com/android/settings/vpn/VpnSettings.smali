.class public Lcom/android/settings/vpn/VpnSettings;
.super Landroid/preference/PreferenceActivity;
.source "VpnSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/vpn/VpnSettings$18;,
        Lcom/android/settings/vpn/VpnSettings$StatusChecker;,
        Lcom/android/settings/vpn/VpnSettings$ConnectivityReceiver;,
        Lcom/android/settings/vpn/VpnSettings$VpnPreference;
    }
.end annotation


# static fields
#the value of this static final field might be set in the static constructor
.field static final synthetic $assertionsDisabled:Z = false

.field private static final CONNECT_BUTTON:I = -0x1

.field private static final CONTEXT_MENU_CONNECT_ID:I = 0x1

.field private static final CONTEXT_MENU_DELETE_ID:I = 0x4

.field private static final CONTEXT_MENU_DISCONNECT_ID:I = 0x2

.field private static final CONTEXT_MENU_EDIT_ID:I = 0x3

.field private static final DIALOG_AUTH_ERROR:I = 0x3

.field private static final DIALOG_CHALLENGE_ERROR:I = 0x6

.field private static final DIALOG_CONNECT:I = 0x1

.field private static final DIALOG_CONNECTION_LOST:I = 0x8

.field private static final DIALOG_RECONNECT:I = 0x2

.field private static final DIALOG_REMOTE_HUNG_UP_ERROR:I = 0x7

.field private static final DIALOG_SECRET_NOT_SET:I = 0x5

.field private static final DIALOG_UNKNOWN_SERVER:I = 0x4

.field private static final KEY_PREFIX_IPSEC_PSK:Ljava/lang/String; = "ipsk000"

.field private static final KEY_PREFIX_L2TP_SECRET:Ljava/lang/String; = "lscrt000"

.field static final KEY_VPN_PROFILE:Ljava/lang/String; = "vpn_profile"

.field static final KEY_VPN_TYPE:Ljava/lang/String; = "vpn_type"

.field private static final NAMESPACE_VPN:Ljava/lang/String; = "vpn"

.field private static final NO_ERROR:I = 0x0

.field private static final OK_BUTTON:I = -0x1

.field private static final PREF_ADD_VPN:Ljava/lang/String; = "add_new_vpn"

.field private static final PREF_VPN_LIST:Ljava/lang/String; = "vpn_list"

.field private static final PROFILES_ROOT:Ljava/lang/String; = "/data/misc/vpn/profiles/"

.field private static final PROFILE_OBJ_FILE:Ljava/lang/String; = ".pobj"

.field private static final REQUEST_ADD_OR_EDIT_PROFILE:I = 0x1

.field private static final REQUEST_SELECT_VPN_TYPE:I = 0x2

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mActiveProfile:Landroid/net/vpn/VpnProfile;

.field private mAddVpn:Landroid/preference/PreferenceScreen;

.field private mConnectingActor:Lcom/android/settings/vpn/VpnProfileActor;

.field private mConnectingErrorCode:I

.field private mConnectivityReceiver:Lcom/android/settings/vpn/VpnSettings$ConnectivityReceiver;

.field private mShowingDialog:Landroid/app/Dialog;

.field private mStatusChecker:Lcom/android/settings/vpn/VpnSettings$StatusChecker;

.field private mUnlockAction:Ljava/lang/Runnable;

.field private mVpnListContainer:Landroid/preference/PreferenceCategory;

.field private mVpnManager:Landroid/net/vpn/VpnManager;

.field private mVpnPreferenceMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/settings/vpn/VpnSettings$VpnPreference;",
            ">;"
        }
    .end annotation
.end field

.field private mVpnProfileList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/net/vpn/VpnProfile;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const-class v1, Lcom/android/settings/vpn/VpnSettings;

    .line 80
    const-class v0, Lcom/android/settings/vpn/VpnSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_16

    const/4 v0, 0x1

    :goto_b
    sput-boolean v0, Lcom/android/settings/vpn/VpnSettings;->$assertionsDisabled:Z

    .line 88
    const-class v0, Lcom/android/settings/vpn/VpnSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/vpn/VpnSettings;->TAG:Ljava/lang/String;

    return-void

    .line 80
    :cond_16
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 80
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 138
    new-instance v0, Landroid/net/vpn/VpnManager;

    invoke-direct {v0, p0}, Landroid/net/vpn/VpnManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/vpn/VpnSettings;->mVpnManager:Landroid/net/vpn/VpnManager;

    .line 140
    new-instance v0, Lcom/android/settings/vpn/VpnSettings$ConnectivityReceiver;

    invoke-direct {v0, p0, v1}, Lcom/android/settings/vpn/VpnSettings$ConnectivityReceiver;-><init>(Lcom/android/settings/vpn/VpnSettings;Lcom/android/settings/vpn/VpnSettings$1;)V

    iput-object v0, p0, Lcom/android/settings/vpn/VpnSettings;->mConnectivityReceiver:Lcom/android/settings/vpn/VpnSettings$ConnectivityReceiver;

    .line 143
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/vpn/VpnSettings;->mConnectingErrorCode:I

    .line 147
    new-instance v0, Lcom/android/settings/vpn/VpnSettings$StatusChecker;

    invoke-direct {v0, p0, v1}, Lcom/android/settings/vpn/VpnSettings$StatusChecker;-><init>(Lcom/android/settings/vpn/VpnSettings;Lcom/android/settings/vpn/VpnSettings$1;)V

    iput-object v0, p0, Lcom/android/settings/vpn/VpnSettings;->mStatusChecker:Lcom/android/settings/vpn/VpnSettings$StatusChecker;

    .line 1069
    return-void
.end method

.method static synthetic access$1000(Lcom/android/settings/vpn/VpnSettings;Landroid/net/vpn/VpnProfile;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 80
    invoke-direct {p0, p1}, Lcom/android/settings/vpn/VpnSettings;->removeProfileFromStorage(Landroid/net/vpn/VpnProfile;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/settings/vpn/VpnSettings;Landroid/net/vpn/VpnProfile;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 80
    invoke-direct {p0, p1}, Lcom/android/settings/vpn/VpnSettings;->connect(Landroid/net/vpn/VpnProfile;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/settings/vpn/VpnSettings;)Lcom/android/settings/vpn/VpnSettings$StatusChecker;
    .registers 2
    .parameter "x0"

    .prologue
    .line 80
    iget-object v0, p0, Lcom/android/settings/vpn/VpnSettings;->mStatusChecker:Lcom/android/settings/vpn/VpnSettings$StatusChecker;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/settings/vpn/VpnSettings;Landroid/net/vpn/VpnProfile;)Ljava/lang/String;
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 80
    invoke-direct {p0, p1}, Lcom/android/settings/vpn/VpnSettings;->getProfileSummaryString(Landroid/net/vpn/VpnProfile;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1400()Ljava/lang/String;
    .registers 1

    .prologue
    .line 80
    sget-object v0, Lcom/android/settings/vpn/VpnSettings;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/settings/vpn/VpnSettings;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 80
    iget v0, p0, Lcom/android/settings/vpn/VpnSettings;->mConnectingErrorCode:I

    return v0
.end method

.method static synthetic access$1502(Lcom/android/settings/vpn/VpnSettings;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 80
    iput p1, p0, Lcom/android/settings/vpn/VpnSettings;->mConnectingErrorCode:I

    return p1
.end method

.method static synthetic access$1600(Lcom/android/settings/vpn/VpnSettings;Landroid/net/vpn/VpnProfile;Landroid/net/vpn/VpnState;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 80
    invoke-direct {p0, p1, p2}, Lcom/android/settings/vpn/VpnSettings;->changeState(Landroid/net/vpn/VpnProfile;Landroid/net/vpn/VpnState;)V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/settings/vpn/VpnSettings;)Landroid/net/vpn/VpnManager;
    .registers 2
    .parameter "x0"

    .prologue
    .line 80
    iget-object v0, p0, Lcom/android/settings/vpn/VpnSettings;->mVpnManager:Landroid/net/vpn/VpnManager;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/vpn/VpnSettings;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 80
    invoke-direct {p0}, Lcom/android/settings/vpn/VpnSettings;->startVpnTypeSelection()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/settings/vpn/VpnSettings;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 80
    invoke-direct {p0}, Lcom/android/settings/vpn/VpnSettings;->onIdle()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/settings/vpn/VpnSettings;)Landroid/net/vpn/VpnProfile;
    .registers 2
    .parameter "x0"

    .prologue
    .line 80
    iget-object v0, p0, Lcom/android/settings/vpn/VpnSettings;->mActiveProfile:Landroid/net/vpn/VpnProfile;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/settings/vpn/VpnSettings;Landroid/net/vpn/VpnProfile;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 80
    invoke-direct {p0, p1}, Lcom/android/settings/vpn/VpnSettings;->startVpnEditor(Landroid/net/vpn/VpnProfile;)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/settings/vpn/VpnSettings;Landroid/net/vpn/VpnProfile;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 80
    invoke-direct {p0, p1}, Lcom/android/settings/vpn/VpnSettings;->connectOrDisconnect(Landroid/net/vpn/VpnProfile;)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/settings/vpn/VpnSettings;)Ljava/util/List;
    .registers 2
    .parameter "x0"

    .prologue
    .line 80
    iget-object v0, p0, Lcom/android/settings/vpn/VpnSettings;->mVpnProfileList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/settings/vpn/VpnSettings;)Ljava/util/Map;
    .registers 2
    .parameter "x0"

    .prologue
    .line 80
    iget-object v0, p0, Lcom/android/settings/vpn/VpnSettings;->mVpnPreferenceMap:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/settings/vpn/VpnSettings;)Landroid/preference/PreferenceCategory;
    .registers 2
    .parameter "x0"

    .prologue
    .line 80
    iget-object v0, p0, Lcom/android/settings/vpn/VpnSettings;->mVpnListContainer:Landroid/preference/PreferenceCategory;

    return-object v0
.end method

.method private addPreferenceFor(Landroid/net/vpn/VpnProfile;)Lcom/android/settings/vpn/VpnSettings$VpnPreference;
    .registers 3
    .parameter "p"

    .prologue
    .line 572
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/android/settings/vpn/VpnSettings;->addPreferenceFor(Landroid/net/vpn/VpnProfile;Z)Lcom/android/settings/vpn/VpnSettings$VpnPreference;

    move-result-object v0

    return-object v0
.end method

.method private addPreferenceFor(Landroid/net/vpn/VpnProfile;Z)Lcom/android/settings/vpn/VpnSettings$VpnPreference;
    .registers 6
    .parameter "p"
    .parameter "addToContainer"

    .prologue
    .line 578
    new-instance v0, Lcom/android/settings/vpn/VpnSettings$VpnPreference;

    invoke-direct {v0, p0, p0, p1}, Lcom/android/settings/vpn/VpnSettings$VpnPreference;-><init>(Lcom/android/settings/vpn/VpnSettings;Landroid/content/Context;Landroid/net/vpn/VpnProfile;)V

    .line 579
    .local v0, pref:Lcom/android/settings/vpn/VpnSettings$VpnPreference;
    iget-object v1, p0, Lcom/android/settings/vpn/VpnSettings;->mVpnPreferenceMap:Ljava/util/Map;

    invoke-virtual {p1}, Landroid/net/vpn/VpnProfile;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 580
    if-eqz p2, :cond_15

    iget-object v1, p0, Lcom/android/settings/vpn/VpnSettings;->mVpnListContainer:Landroid/preference/PreferenceCategory;

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 582
    :cond_15
    new-instance v1, Lcom/android/settings/vpn/VpnSettings$13;

    invoke-direct {v1, p0}, Lcom/android/settings/vpn/VpnSettings$13;-><init>(Lcom/android/settings/vpn/VpnSettings;)V

    invoke-virtual {v0, v1}, Lcom/android/settings/vpn/VpnSettings$VpnPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 589
    return-object v0
.end method

.method private addProfile(Landroid/net/vpn/VpnProfile;)V
    .registers 3
    .parameter "p"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 562
    invoke-direct {p0, p1}, Lcom/android/settings/vpn/VpnSettings;->setProfileId(Landroid/net/vpn/VpnProfile;)V

    .line 563
    invoke-direct {p0, p1}, Lcom/android/settings/vpn/VpnSettings;->processSecrets(Landroid/net/vpn/VpnProfile;)V

    .line 564
    invoke-static {p1}, Lcom/android/settings/vpn/VpnSettings;->saveProfileToStorage(Landroid/net/vpn/VpnProfile;)V

    .line 566
    iget-object v0, p0, Lcom/android/settings/vpn/VpnSettings;->mVpnProfileList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 567
    invoke-direct {p0, p1}, Lcom/android/settings/vpn/VpnSettings;->addPreferenceFor(Landroid/net/vpn/VpnProfile;)Lcom/android/settings/vpn/VpnSettings$VpnPreference;

    .line 568
    invoke-direct {p0}, Lcom/android/settings/vpn/VpnSettings;->disableProfilePreferencesIfOneActive()V

    .line 569
    return-void
.end method

.method private changeState(Landroid/net/vpn/VpnProfile;Landroid/net/vpn/VpnState;)V
    .registers 6
    .parameter "p"
    .parameter "state"

    .prologue
    .line 725
    invoke-virtual {p1}, Landroid/net/vpn/VpnProfile;->getState()Landroid/net/vpn/VpnState;

    move-result-object v0

    .line 726
    .local v0, oldState:Landroid/net/vpn/VpnState;
    if-ne v0, p2, :cond_7

    .line 783
    :goto_6
    return-void

    .line 728
    :cond_7
    invoke-virtual {p1, p2}, Landroid/net/vpn/VpnProfile;->setState(Landroid/net/vpn/VpnState;)V

    .line 729
    iget-object v1, p0, Lcom/android/settings/vpn/VpnSettings;->mVpnPreferenceMap:Ljava/util/Map;

    invoke-virtual {p1}, Landroid/net/vpn/VpnProfile;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/vpn/VpnSettings$VpnPreference;

    invoke-direct {p0, p1}, Lcom/android/settings/vpn/VpnSettings;->getProfileSummaryString(Landroid/net/vpn/VpnProfile;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/settings/vpn/VpnSettings$VpnPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 732
    sget-object v1, Lcom/android/settings/vpn/VpnSettings$18;->$SwitchMap$android$net$vpn$VpnState:[I

    invoke-virtual {p2}, Landroid/net/vpn/VpnState;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_76

    goto :goto_6

    .line 749
    :pswitch_29
    sget-boolean v1, Lcom/android/settings/vpn/VpnSettings;->$assertionsDisabled:Z

    if-nez v1, :cond_4a

    iget-object v1, p0, Lcom/android/settings/vpn/VpnSettings;->mActiveProfile:Landroid/net/vpn/VpnProfile;

    if-eq v1, p1, :cond_4a

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 734
    :pswitch_37
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/settings/vpn/VpnSettings;->mConnectingActor:Lcom/android/settings/vpn/VpnProfileActor;

    .line 735
    iput-object p1, p0, Lcom/android/settings/vpn/VpnSettings;->mActiveProfile:Landroid/net/vpn/VpnProfile;

    .line 736
    invoke-direct {p0}, Lcom/android/settings/vpn/VpnSettings;->disableProfilePreferencesIfOneActive()V

    goto :goto_6

    .line 741
    :pswitch_40
    invoke-direct {p0}, Lcom/android/settings/vpn/VpnSettings;->disableProfilePreferencesIfOneActive()V

    goto :goto_6

    .line 745
    :pswitch_44
    sget-object v1, Landroid/net/vpn/VpnState;->IDLE:Landroid/net/vpn/VpnState;

    invoke-direct {p0, p1, v1}, Lcom/android/settings/vpn/VpnSettings;->changeState(Landroid/net/vpn/VpnProfile;Landroid/net/vpn/VpnState;)V

    goto :goto_6

    .line 751
    :cond_4a
    iget v1, p0, Lcom/android/settings/vpn/VpnSettings;->mConnectingErrorCode:I

    packed-switch v1, :pswitch_data_84

    .line 777
    :pswitch_4f
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lcom/android/settings/vpn/VpnSettings;->showDialog(I)V

    .line 780
    :goto_53
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/settings/vpn/VpnSettings;->mConnectingErrorCode:I

    goto :goto_6

    .line 753
    :pswitch_57
    invoke-direct {p0}, Lcom/android/settings/vpn/VpnSettings;->onIdle()V

    goto :goto_53

    .line 757
    :pswitch_5b
    const/4 v1, 0x3

    invoke-virtual {p0, v1}, Lcom/android/settings/vpn/VpnSettings;->showDialog(I)V

    goto :goto_53

    .line 761
    :pswitch_60
    const/4 v1, 0x7

    invoke-virtual {p0, v1}, Lcom/android/settings/vpn/VpnSettings;->showDialog(I)V

    goto :goto_53

    .line 765
    :pswitch_65
    const/4 v1, 0x6

    invoke-virtual {p0, v1}, Lcom/android/settings/vpn/VpnSettings;->showDialog(I)V

    goto :goto_53

    .line 769
    :pswitch_6a
    const/4 v1, 0x4

    invoke-virtual {p0, v1}, Lcom/android/settings/vpn/VpnSettings;->showDialog(I)V

    goto :goto_53

    .line 773
    :pswitch_6f
    const/16 v1, 0x8

    invoke-virtual {p0, v1}, Lcom/android/settings/vpn/VpnSettings;->showDialog(I)V

    goto :goto_53

    .line 732
    nop

    :pswitch_data_76
    .packed-switch 0x1
        :pswitch_29
        :pswitch_40
        :pswitch_37
        :pswitch_40
        :pswitch_44
    .end packed-switch

    .line 751
    :pswitch_data_84
    .packed-switch 0x0
        :pswitch_57
        :pswitch_5b
        :pswitch_4f
        :pswitch_6a
        :pswitch_65
        :pswitch_60
        :pswitch_6f
    .end packed-switch
.end method

.method private checkDuplicateName(Landroid/net/vpn/VpnProfile;I)Z
    .registers 7
    .parameter "p"
    .parameter "index"

    .prologue
    .line 497
    iget-object v0, p0, Lcom/android/settings/vpn/VpnSettings;->mVpnProfileList:Ljava/util/List;

    .line 498
    .local v0, list:Ljava/util/List;,"Ljava/util/List<Landroid/net/vpn/VpnProfile;>;"
    iget-object v2, p0, Lcom/android/settings/vpn/VpnSettings;->mVpnPreferenceMap:Ljava/util/Map;

    invoke-virtual {p1}, Landroid/net/vpn/VpnProfile;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/vpn/VpnSettings$VpnPreference;

    .line 499
    .local v1, pref:Lcom/android/settings/vpn/VpnSettings$VpnPreference;
    if-eqz v1, :cond_21

    if-ltz p2, :cond_21

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge p2, v2, :cond_21

    .line 501
    iget-object v2, v1, Lcom/android/settings/vpn/VpnSettings$VpnPreference;->mProfile:Landroid/net/vpn/VpnProfile;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-ne v2, v3, :cond_21

    const/4 v1, 0x0

    .line 503
    :cond_21
    if-eqz v1, :cond_25

    const/4 v2, 0x1

    :goto_24
    return v2

    :cond_25
    const/4 v2, 0x0

    goto :goto_24
.end method

.method private checkIdConsistency(Ljava/lang/String;Landroid/net/vpn/VpnProfile;)Z
    .registers 6
    .parameter "dirName"
    .parameter "p"

    .prologue
    .line 881
    invoke-virtual {p2}, Landroid/net/vpn/VpnProfile;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_32

    .line 882
    sget-object v0, Lcom/android/settings/vpn/VpnSettings;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ID inconsistent: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " vs "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Landroid/net/vpn/VpnProfile;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 883
    const/4 v0, 0x0

    .line 885
    :goto_31
    return v0

    :cond_32
    const/4 v0, 0x1

    goto :goto_31
.end method

.method private checkSecrets(Landroid/net/vpn/VpnProfile;)Z
    .registers 17
    .parameter "p"

    .prologue
    const/4 v14, 0x0

    .line 928
    invoke-static {}, Landroid/security/Keystore;->getInstance()Landroid/security/Keystore;

    move-result-object v5

    .line 929
    .local v5, ks:Landroid/security/Keystore;
    new-instance v11, Ljava/util/HashSet;

    invoke-direct {v11}, Ljava/util/HashSet;-><init>()V

    .line 930
    .local v11, secretSet:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    const/4 v10, 0x0

    .line 932
    .local v10, secretMissing:Z
    move-object/from16 v0, p1

    instance-of v0, v0, Landroid/net/vpn/L2tpIpsecProfile;

    move v12, v0

    if-eqz v12, :cond_54

    .line 933
    move-object/from16 v0, p1

    check-cast v0, Landroid/net/vpn/L2tpIpsecProfile;

    move-object v2, v0

    .line 934
    .local v2, certProfile:Landroid/net/vpn/L2tpIpsecProfile;
    invoke-static {}, Landroid/security/CertTool;->getInstance()Landroid/security/CertTool;

    move-result-object v3

    .line 935
    .local v3, certTool:Landroid/security/CertTool;
    invoke-virtual {v3}, Landroid/security/CertTool;->getAllCaCertificateKeys()[Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 936
    invoke-virtual {v2}, Landroid/net/vpn/L2tpIpsecProfile;->getCaCertificate()Ljava/lang/String;

    move-result-object v1

    .line 937
    .local v1, cert:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_32

    invoke-virtual {v11, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_36

    .line 938
    :cond_32
    invoke-virtual {v2, v14}, Landroid/net/vpn/L2tpIpsecProfile;->setCaCertificate(Ljava/lang/String;)V

    .line 939
    const/4 v10, 0x1

    .line 942
    :cond_36
    invoke-virtual {v11}, Ljava/util/HashSet;->clear()V

    .line 943
    invoke-virtual {v3}, Landroid/security/CertTool;->getAllUserCertificateKeys()[Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 944
    invoke-virtual {v2}, Landroid/net/vpn/L2tpIpsecProfile;->getUserCertificate()Ljava/lang/String;

    move-result-object v1

    .line 945
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_50

    invoke-virtual {v11, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_54

    .line 946
    :cond_50
    invoke-virtual {v2, v14}, Landroid/net/vpn/L2tpIpsecProfile;->setUserCertificate(Ljava/lang/String;)V

    .line 947
    const/4 v10, 0x1

    .line 951
    .end local v1           #cert:Ljava/lang/String;
    .end local v2           #certProfile:Landroid/net/vpn/L2tpIpsecProfile;
    .end local v3           #certTool:Landroid/security/CertTool;
    :cond_54
    invoke-virtual {v11}, Ljava/util/HashSet;->clear()V

    .line 952
    const-string v12, "vpn"

    invoke-virtual {v5, v12}, Landroid/security/Keystore;->listKeys(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 954
    move-object/from16 v0, p1

    instance-of v0, v0, Landroid/net/vpn/L2tpIpsecPskProfile;

    move v12, v0

    if-eqz v12, :cond_97

    .line 955
    move-object/from16 v0, p1

    check-cast v0, Landroid/net/vpn/L2tpIpsecPskProfile;

    move-object v8, v0

    .line 956
    .local v8, pskProfile:Landroid/net/vpn/L2tpIpsecPskProfile;
    invoke-virtual {v8}, Landroid/net/vpn/L2tpIpsecPskProfile;->getPresharedKey()Ljava/lang/String;

    move-result-object v7

    .line 957
    .local v7, presharedKey:Ljava/lang/String;
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "ipsk000"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual/range {p1 .. p1}, Landroid/net/vpn/VpnProfile;->getId()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 958
    .local v4, keyName:Ljava/lang/String;
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_93

    invoke-virtual {v11, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_97

    .line 960
    :cond_93
    invoke-virtual {v8, v14}, Landroid/net/vpn/L2tpIpsecPskProfile;->setPresharedKey(Ljava/lang/String;)V

    .line 961
    const/4 v10, 0x1

    .line 965
    .end local v4           #keyName:Ljava/lang/String;
    .end local v7           #presharedKey:Ljava/lang/String;
    .end local v8           #pskProfile:Landroid/net/vpn/L2tpIpsecPskProfile;
    :cond_97
    move-object/from16 v0, p1

    instance-of v0, v0, Landroid/net/vpn/L2tpProfile;

    move v12, v0

    if-eqz v12, :cond_d4

    .line 966
    move-object/from16 v0, p1

    check-cast v0, Landroid/net/vpn/L2tpProfile;

    move-object v6, v0

    .line 967
    .local v6, l2tpProfile:Landroid/net/vpn/L2tpProfile;
    invoke-virtual {v6}, Landroid/net/vpn/L2tpProfile;->isSecretEnabled()Z

    move-result v12

    if-eqz v12, :cond_d4

    .line 968
    invoke-virtual {v6}, Landroid/net/vpn/L2tpProfile;->getSecretString()Ljava/lang/String;

    move-result-object v9

    .line 969
    .local v9, secret:Ljava/lang/String;
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "lscrt000"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual/range {p1 .. p1}, Landroid/net/vpn/VpnProfile;->getId()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 970
    .restart local v4       #keyName:Ljava/lang/String;
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_d0

    invoke-virtual {v11, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_d4

    .line 972
    :cond_d0
    invoke-virtual {v6, v14}, Landroid/net/vpn/L2tpProfile;->setSecretString(Ljava/lang/String;)V

    .line 973
    const/4 v10, 0x1

    .line 978
    .end local v4           #keyName:Ljava/lang/String;
    .end local v6           #l2tpProfile:Landroid/net/vpn/L2tpProfile;
    .end local v9           #secret:Ljava/lang/String;
    :cond_d4
    if-eqz v10, :cond_dc

    .line 979
    const/4 v12, 0x5

    invoke-virtual {p0, v12}, Lcom/android/settings/vpn/VpnSettings;->showDialog(I)V

    .line 980
    const/4 v12, 0x0

    .line 982
    :goto_db
    return v12

    :cond_dc
    const/4 v12, 0x1

    goto :goto_db
.end method

.method private checkVpnConnectionStatusInBackground()V
    .registers 3

    .prologue
    .line 871
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/settings/vpn/VpnSettings$17;

    invoke-direct {v1, p0}, Lcom/android/settings/vpn/VpnSettings$17;-><init>(Lcom/android/settings/vpn/VpnSettings;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 876
    return-void
.end method

.method private declared-synchronized connect(Landroid/net/vpn/VpnProfile;)V
    .registers 5
    .parameter "p"

    .prologue
    .line 684
    monitor-enter p0

    :try_start_1
    invoke-direct {p0, p1}, Lcom/android/settings/vpn/VpnSettings;->needKeystoreToConnect(Landroid/net/vpn/VpnProfile;)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 685
    new-instance v0, Lcom/android/settings/vpn/VpnSettings$15;

    invoke-direct {v0, p0, p1}, Lcom/android/settings/vpn/VpnSettings$15;-><init>(Lcom/android/settings/vpn/VpnSettings;Landroid/net/vpn/VpnProfile;)V

    .line 690
    .local v0, action:Ljava/lang/Runnable;
    invoke-direct {p0, p1, v0}, Lcom/android/settings/vpn/VpnSettings;->unlockKeystore(Landroid/net/vpn/VpnProfile;Ljava/lang/Runnable;)Z
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_2f

    move-result v1

    if-nez v1, :cond_14

    .line 702
    .end local v0           #action:Ljava/lang/Runnable;
    :cond_12
    :goto_12
    monitor-exit p0

    return-void

    .line 693
    :cond_14
    :try_start_14
    invoke-direct {p0, p1}, Lcom/android/settings/vpn/VpnSettings;->getActor(Landroid/net/vpn/VpnProfile;)Lcom/android/settings/vpn/VpnProfileActor;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/vpn/VpnSettings;->mConnectingActor:Lcom/android/settings/vpn/VpnProfileActor;

    .line 694
    iput-object p1, p0, Lcom/android/settings/vpn/VpnSettings;->mActiveProfile:Landroid/net/vpn/VpnProfile;

    .line 695
    invoke-direct {p0, p1}, Lcom/android/settings/vpn/VpnSettings;->checkSecrets(Landroid/net/vpn/VpnProfile;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 696
    iget-object v1, p0, Lcom/android/settings/vpn/VpnSettings;->mConnectingActor:Lcom/android/settings/vpn/VpnProfileActor;

    invoke-interface {v1}, Lcom/android/settings/vpn/VpnProfileActor;->isConnectDialogNeeded()Z

    move-result v1

    if-eqz v1, :cond_32

    .line 697
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/settings/vpn/VpnSettings;->showDialog(I)V
    :try_end_2e
    .catchall {:try_start_14 .. :try_end_2e} :catchall_2f

    goto :goto_12

    .line 684
    :catchall_2f
    move-exception v1

    monitor-exit p0

    throw v1

    .line 699
    :cond_32
    :try_start_32
    sget-object v1, Landroid/net/vpn/VpnState;->CONNECTING:Landroid/net/vpn/VpnState;

    invoke-direct {p0, p1, v1}, Lcom/android/settings/vpn/VpnSettings;->changeState(Landroid/net/vpn/VpnProfile;Landroid/net/vpn/VpnState;)V

    .line 700
    iget-object v1, p0, Lcom/android/settings/vpn/VpnSettings;->mConnectingActor:Lcom/android/settings/vpn/VpnProfileActor;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/android/settings/vpn/VpnProfileActor;->connect(Landroid/app/Dialog;)V
    :try_end_3d
    .catchall {:try_start_32 .. :try_end_3d} :catchall_2f

    goto :goto_12
.end method

.method private declared-synchronized connectOrDisconnect(Landroid/net/vpn/VpnProfile;)V
    .registers 5
    .parameter "p"

    .prologue
    .line 706
    monitor-enter p0

    :try_start_1
    iget-object v1, p0, Lcom/android/settings/vpn/VpnSettings;->mVpnPreferenceMap:Ljava/util/Map;

    invoke-virtual {p1}, Landroid/net/vpn/VpnProfile;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/vpn/VpnSettings$VpnPreference;

    .line 707
    .local v0, pref:Lcom/android/settings/vpn/VpnSettings$VpnPreference;
    sget-object v1, Lcom/android/settings/vpn/VpnSettings$18;->$SwitchMap$android$net$vpn$VpnState:[I

    invoke-virtual {p1}, Landroid/net/vpn/VpnProfile;->getState()Landroid/net/vpn/VpnState;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/vpn/VpnState;->ordinal()I

    move-result v2

    aget v1, v1, v2
    :try_end_19
    .catchall {:try_start_1 .. :try_end_19} :catchall_22

    packed-switch v1, :pswitch_data_32

    .line 722
    :goto_1c
    :pswitch_1c
    monitor-exit p0

    return-void

    .line 709
    :pswitch_1e
    :try_start_1e
    invoke-direct {p0, p1}, Lcom/android/settings/vpn/VpnSettings;->connect(Landroid/net/vpn/VpnProfile;)V
    :try_end_21
    .catchall {:try_start_1e .. :try_end_21} :catchall_22

    goto :goto_1c

    .line 706
    .end local v0           #pref:Lcom/android/settings/vpn/VpnSettings$VpnPreference;
    :catchall_22
    move-exception v1

    monitor-exit p0

    throw v1

    .line 718
    .restart local v0       #pref:Lcom/android/settings/vpn/VpnSettings$VpnPreference;
    :pswitch_25
    :try_start_25
    sget-object v1, Landroid/net/vpn/VpnState;->DISCONNECTING:Landroid/net/vpn/VpnState;

    invoke-direct {p0, p1, v1}, Lcom/android/settings/vpn/VpnSettings;->changeState(Landroid/net/vpn/VpnProfile;Landroid/net/vpn/VpnState;)V

    .line 719
    invoke-direct {p0, p1}, Lcom/android/settings/vpn/VpnSettings;->getActor(Landroid/net/vpn/VpnProfile;)Lcom/android/settings/vpn/VpnProfileActor;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/settings/vpn/VpnProfileActor;->disconnect()V
    :try_end_31
    .catchall {:try_start_25 .. :try_end_31} :catchall_22

    goto :goto_1c

    .line 707
    :pswitch_data_32
    .packed-switch 0x1
        :pswitch_1e
        :pswitch_1c
        :pswitch_25
        :pswitch_25
    .end packed-switch
.end method

.method private createAuthErrorDialog()Landroid/app/Dialog;
    .registers 3

    .prologue
    .line 255
    invoke-direct {p0}, Lcom/android/settings/vpn/VpnSettings;->createCommonDialogBuilder()Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0803ec

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0
.end method

.method private createChallengeErrorDialog()Landroid/app/Dialog;
    .registers 3

    .prologue
    .line 267
    invoke-direct {p0}, Lcom/android/settings/vpn/VpnSettings;->createCommonEditDialogBuilder()Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0803ea

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0
.end method

.method private createCommonDialogBuilder()Landroid/app/AlertDialog$Builder;
    .registers 4

    .prologue
    .line 309
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x1040014

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1080027

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0803d6

    new-instance v2, Lcom/android/settings/vpn/VpnSettings$7;

    invoke-direct {v2, p0}, Lcom/android/settings/vpn/VpnSettings$7;-><init>(Lcom/android/settings/vpn/VpnSettings;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0803d7

    new-instance v2, Lcom/android/settings/vpn/VpnSettings$6;

    invoke-direct {v2, p0}, Lcom/android/settings/vpn/VpnSettings$6;-><init>(Lcom/android/settings/vpn/VpnSettings;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/settings/vpn/VpnSettings$5;

    invoke-direct {v1, p0}, Lcom/android/settings/vpn/VpnSettings$5;-><init>(Lcom/android/settings/vpn/VpnSettings;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    return-object v0
.end method

.method private createCommonEditDialogBuilder()Landroid/app/AlertDialog$Builder;
    .registers 4

    .prologue
    .line 291
    invoke-direct {p0}, Lcom/android/settings/vpn/VpnSettings;->createCommonDialogBuilder()Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0803d6

    new-instance v2, Lcom/android/settings/vpn/VpnSettings$4;

    invoke-direct {v2, p0}, Lcom/android/settings/vpn/VpnSettings$4;-><init>(Lcom/android/settings/vpn/VpnSettings;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    return-object v0
.end method

.method private createConnectDialog()Landroid/app/Dialog;
    .registers 6

    .prologue
    .line 231
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/android/settings/vpn/VpnSettings;->mConnectingActor:Lcom/android/settings/vpn/VpnProfileActor;

    invoke-interface {v1}, Lcom/android/settings/vpn/VpnProfileActor;->createConnectView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0803cf

    invoke-virtual {p0, v1}, Lcom/android/settings/vpn/VpnSettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/settings/vpn/VpnSettings;->mActiveProfile:Landroid/net/vpn/VpnProfile;

    invoke-virtual {v4}, Landroid/net/vpn/VpnProfile;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0803d5

    invoke-virtual {p0, v1}, Lcom/android/settings/vpn/VpnSettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/high16 v1, 0x104

    invoke-virtual {p0, v1}, Lcom/android/settings/vpn/VpnSettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/settings/vpn/VpnSettings$2;

    invoke-direct {v1, p0}, Lcom/android/settings/vpn/VpnSettings$2;-><init>(Lcom/android/settings/vpn/VpnSettings;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0
.end method

.method private createConnectionLostDialog()Landroid/app/Dialog;
    .registers 3

    .prologue
    .line 303
    invoke-direct {p0}, Lcom/android/settings/vpn/VpnSettings;->createCommonDialogBuilder()Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0803e8

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0
.end method

.method private createReconnectDialog()Landroid/app/Dialog;
    .registers 3

    .prologue
    .line 249
    invoke-direct {p0}, Lcom/android/settings/vpn/VpnSettings;->createCommonDialogBuilder()Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0803e7

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0
.end method

.method private createRemoteHungUpErrorDialog()Landroid/app/Dialog;
    .registers 3

    .prologue
    .line 261
    invoke-direct {p0}, Lcom/android/settings/vpn/VpnSettings;->createCommonDialogBuilder()Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0803ed

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0
.end method

.method private createSecretNotSetDialog()Landroid/app/Dialog;
    .registers 4

    .prologue
    .line 279
    invoke-direct {p0}, Lcom/android/settings/vpn/VpnSettings;->createCommonDialogBuilder()Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0803eb

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0803d6

    new-instance v2, Lcom/android/settings/vpn/VpnSettings$3;

    invoke-direct {v2, p0}, Lcom/android/settings/vpn/VpnSettings$3;-><init>(Lcom/android/settings/vpn/VpnSettings;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0
.end method

.method private createUnknownServerDialog()Landroid/app/Dialog;
    .registers 3

    .prologue
    .line 273
    invoke-direct {p0}, Lcom/android/settings/vpn/VpnSettings;->createCommonEditDialogBuilder()Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0803e9

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0
.end method

.method private createVpnProfile(Ljava/lang/String;)Landroid/net/vpn/VpnProfile;
    .registers 4
    .parameter "type"

    .prologue
    .line 920
    iget-object v0, p0, Lcom/android/settings/vpn/VpnSettings;->mVpnManager:Landroid/net/vpn/VpnManager;

    const-class v1, Landroid/net/vpn/VpnType;

    invoke-static {v1, p1}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/net/vpn/VpnType;

    invoke-virtual {v0, p0}, Landroid/net/vpn/VpnManager;->createVpnProfile(Landroid/net/vpn/VpnType;)Landroid/net/vpn/VpnProfile;

    move-result-object v0

    return-object v0
.end method

.method private deleteProfile(I)V
    .registers 5
    .parameter "position"

    .prologue
    .line 518
    if-ltz p1, :cond_a

    iget-object v1, p0, Lcom/android/settings/vpn/VpnSettings;->mVpnProfileList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt p1, v1, :cond_b

    .line 540
    :cond_a
    :goto_a
    return-void

    .line 519
    :cond_b
    new-instance v0, Lcom/android/settings/vpn/VpnSettings$12;

    invoke-direct {v0, p0, p1}, Lcom/android/settings/vpn/VpnSettings$12;-><init>(Lcom/android/settings/vpn/VpnSettings;I)V

    .line 532
    .local v0, onClickListener:Landroid/content/DialogInterface$OnClickListener;
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x1040014

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x1080027

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0803e4

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x104000a

    invoke-virtual {v1, v2, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0803d7

    invoke-virtual {v1, v2, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/vpn/VpnSettings;->mShowingDialog:Landroid/app/Dialog;

    .line 539
    iget-object v1, p0, Lcom/android/settings/vpn/VpnSettings;->mShowingDialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    goto :goto_a
.end method

.method private deserialize(Ljava/io/File;)Landroid/net/vpn/VpnProfile;
    .registers 7
    .parameter "profileObjectFile"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 891
    :try_start_0
    new-instance v1, Ljava/io/ObjectInputStream;

    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v3}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V

    .line 893
    .local v1, ois:Ljava/io/ObjectInputStream;
    invoke-virtual {v1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/vpn/VpnProfile;

    .line 894
    .local v2, p:Landroid/net/vpn/VpnProfile;
    invoke-virtual {v1}, Ljava/io/ObjectInputStream;->close()V
    :try_end_13
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_13} :catch_15

    move-object v3, v2

    .line 898
    .end local v1           #ois:Ljava/io/ObjectInputStream;
    .end local v2           #p:Landroid/net/vpn/VpnProfile;
    :goto_14
    return-object v3

    .line 896
    :catch_15
    move-exception v3

    move-object v0, v3

    .line 897
    .local v0, e:Ljava/lang/ClassNotFoundException;
    sget-object v3, Lcom/android/settings/vpn/VpnSettings;->TAG:Ljava/lang/String;

    const-string v4, "deserialize a profile"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 898
    const/4 v3, 0x0

    goto :goto_14
.end method

.method private disableProfilePreferencesIfOneActive()V
    .registers 5

    .prologue
    .line 793
    iget-object v2, p0, Lcom/android/settings/vpn/VpnSettings;->mActiveProfile:Landroid/net/vpn/VpnProfile;

    if-nez v2, :cond_5

    .line 807
    :cond_4
    return-void

    .line 795
    :cond_5
    iget-object v2, p0, Lcom/android/settings/vpn/VpnSettings;->mVpnProfileList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/vpn/VpnProfile;

    .line 796
    .local v1, p:Landroid/net/vpn/VpnProfile;
    sget-object v2, Lcom/android/settings/vpn/VpnSettings$18;->$SwitchMap$android$net$vpn$VpnState:[I

    invoke-virtual {v1}, Landroid/net/vpn/VpnProfile;->getState()Landroid/net/vpn/VpnState;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/vpn/VpnState;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_48

    .line 804
    :pswitch_26
    iget-object v2, p0, Lcom/android/settings/vpn/VpnSettings;->mVpnPreferenceMap:Ljava/util/Map;

    invoke-virtual {v1}, Landroid/net/vpn/VpnProfile;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings/vpn/VpnSettings$VpnPreference;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/settings/vpn/VpnSettings$VpnPreference;->setEnabled(Z)V

    goto :goto_b

    .line 800
    :pswitch_37
    iget-object v2, p0, Lcom/android/settings/vpn/VpnSettings;->mVpnPreferenceMap:Ljava/util/Map;

    invoke-virtual {v1}, Landroid/net/vpn/VpnProfile;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings/vpn/VpnSettings$VpnPreference;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/settings/vpn/VpnSettings$VpnPreference;->setEnabled(Z)V

    goto :goto_b

    .line 796
    :pswitch_data_48
    .packed-switch 0x1
        :pswitch_37
        :pswitch_37
        :pswitch_26
        :pswitch_37
    .end packed-switch
.end method

.method private enableProfilePreferences()V
    .registers 5

    .prologue
    .line 810
    iget-object v2, p0, Lcom/android/settings/vpn/VpnSettings;->mVpnProfileList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_23

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/vpn/VpnProfile;

    .line 811
    .local v1, p:Landroid/net/vpn/VpnProfile;
    iget-object v2, p0, Lcom/android/settings/vpn/VpnSettings;->mVpnPreferenceMap:Ljava/util/Map;

    invoke-virtual {v1}, Landroid/net/vpn/VpnProfile;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings/vpn/VpnSettings$VpnPreference;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/settings/vpn/VpnSettings$VpnPreference;->setEnabled(Z)V

    goto :goto_6

    .line 813
    .end local v1           #p:Landroid/net/vpn/VpnProfile;
    :cond_23
    return-void
.end method

.method private getActor(Landroid/net/vpn/VpnProfile;)Lcom/android/settings/vpn/VpnProfileActor;
    .registers 3
    .parameter "p"

    .prologue
    .line 916
    new-instance v0, Lcom/android/settings/vpn/AuthenticationActor;

    invoke-direct {v0, p0, p1}, Lcom/android/settings/vpn/AuthenticationActor;-><init>(Landroid/content/Context;Landroid/net/vpn/VpnProfile;)V

    return-object v0
.end method

.method private getProfile(I)Landroid/net/vpn/VpnProfile;
    .registers 3
    .parameter "position"

    .prologue
    .line 513
    if-ltz p1, :cond_c

    iget-object v0, p0, Lcom/android/settings/vpn/VpnSettings;->mVpnProfileList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/net/vpn/VpnProfile;

    move-object v0, p0

    :goto_b
    return-object v0

    .restart local p0
    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method static getProfileDir(Landroid/net/vpn/VpnProfile;)Ljava/lang/String;
    .registers 3
    .parameter "p"

    .prologue
    .line 816
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/data/misc/vpn/profiles/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/net/vpn/VpnProfile;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getProfileIndexFromId(Ljava/lang/String;)I
    .registers 6
    .parameter "id"

    .prologue
    .line 483
    const/4 v1, 0x0

    .line 484
    .local v1, index:I
    iget-object v3, p0, Lcom/android/settings/vpn/VpnSettings;->mVpnProfileList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_22

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/vpn/VpnProfile;

    .line 485
    .local v2, p:Landroid/net/vpn/VpnProfile;
    invoke-virtual {v2}, Landroid/net/vpn/VpnProfile;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1f

    move v3, v1

    .line 491
    .end local v2           #p:Landroid/net/vpn/VpnProfile;
    :goto_1e
    return v3

    .line 488
    .restart local v2       #p:Landroid/net/vpn/VpnProfile;
    :cond_1f
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 491
    .end local v2           #p:Landroid/net/vpn/VpnProfile;
    :cond_22
    const/4 v3, -0x1

    goto :goto_1e
.end method

.method private getProfilePositionFrom(Landroid/widget/AdapterView$AdapterContextMenuInfo;)I
    .registers 4
    .parameter "menuInfo"

    .prologue
    .line 508
    iget v0, p1, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    iget-object v1, p0, Lcom/android/settings/vpn/VpnSettings;->mVpnListContainer:Landroid/preference/PreferenceCategory;

    invoke-virtual {v1}, Landroid/preference/PreferenceCategory;->getOrder()I

    move-result v1

    sub-int/2addr v0, v1

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    return v0
.end method

.method private getProfileSummaryString(Landroid/net/vpn/VpnProfile;)Ljava/lang/String;
    .registers 4
    .parameter "p"

    .prologue
    .line 903
    sget-object v0, Lcom/android/settings/vpn/VpnSettings$18;->$SwitchMap$android$net$vpn$VpnState:[I

    invoke-virtual {p1}, Landroid/net/vpn/VpnProfile;->getState()Landroid/net/vpn/VpnState;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/vpn/VpnState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_30

    .line 911
    const v0, 0x7f0803f6

    invoke-virtual {p0, v0}, Lcom/android/settings/vpn/VpnSettings;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_16
    return-object v0

    .line 905
    :pswitch_17
    const v0, 0x7f0803f3

    invoke-virtual {p0, v0}, Lcom/android/settings/vpn/VpnSettings;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_16

    .line 907
    :pswitch_1f
    const v0, 0x7f0803f4

    invoke-virtual {p0, v0}, Lcom/android/settings/vpn/VpnSettings;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_16

    .line 909
    :pswitch_27
    const v0, 0x7f0803f5

    invoke-virtual {p0, v0}, Lcom/android/settings/vpn/VpnSettings;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_16

    .line 903
    nop

    :pswitch_data_30
    .packed-switch 0x2
        :pswitch_17
        :pswitch_27
        :pswitch_1f
    .end packed-switch
.end method

.method private isKeystoreUnlocked()Z
    .registers 3

    .prologue
    .line 623
    invoke-static {}, Landroid/security/Keystore;->getInstance()Landroid/security/Keystore;

    move-result-object v0

    invoke-virtual {v0}, Landroid/security/Keystore;->getState()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_d

    const/4 v0, 0x1

    :goto_c
    return v0

    :cond_d
    const/4 v0, 0x0

    goto :goto_c
.end method

.method private keyNameForDaemon(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .parameter "keyName"

    .prologue
    .line 924
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "vpn_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private needKeystoreToConnect(Landroid/net/vpn/VpnProfile;)Z
    .registers 4
    .parameter "p"

    .prologue
    .line 646
    sget-object v0, Lcom/android/settings/vpn/VpnSettings$18;->$SwitchMap$android$net$vpn$VpnType:[I

    invoke-virtual {p1}, Landroid/net/vpn/VpnProfile;->getType()Landroid/net/vpn/VpnType;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/vpn/VpnType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_1a

    .line 655
    const/4 v0, 0x0

    .end local p1
    :goto_10
    return v0

    .line 649
    .restart local p1
    :pswitch_11
    const/4 v0, 0x1

    goto :goto_10

    .line 652
    :pswitch_13
    check-cast p1, Landroid/net/vpn/L2tpProfile;

    .end local p1
    invoke-virtual {p1}, Landroid/net/vpn/L2tpProfile;->isSecretEnabled()Z

    move-result v0

    goto :goto_10

    .line 646
    :pswitch_data_1a
    .packed-switch 0x1
        :pswitch_11
        :pswitch_11
        :pswitch_13
    .end packed-switch
.end method

.method private needKeystoreToEdit(Landroid/net/vpn/VpnProfile;)Z
    .registers 4
    .parameter "p"

    .prologue
    .line 634
    sget-object v0, Lcom/android/settings/vpn/VpnSettings$18;->$SwitchMap$android$net$vpn$VpnType:[I

    invoke-virtual {p1}, Landroid/net/vpn/VpnProfile;->getType()Landroid/net/vpn/VpnType;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/vpn/VpnType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_14

    .line 640
    const/4 v0, 0x0

    :goto_10
    return v0

    .line 637
    :pswitch_11
    const/4 v0, 0x1

    goto :goto_10

    .line 634
    nop

    :pswitch_data_14
    .packed-switch 0x1
        :pswitch_11
        :pswitch_11
    .end packed-switch
.end method

.method private needKeystoreToSave(Landroid/net/vpn/VpnProfile;)Z
    .registers 3
    .parameter "p"

    .prologue
    .line 629
    invoke-direct {p0, p1}, Lcom/android/settings/vpn/VpnSettings;->needKeystoreToConnect(Landroid/net/vpn/VpnProfile;)Z

    move-result v0

    return v0
.end method

.method private onIdle()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 786
    sget-object v0, Lcom/android/settings/vpn/VpnSettings;->TAG:Ljava/lang/String;

    const-string v1, "   onIdle()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 787
    iput-object v2, p0, Lcom/android/settings/vpn/VpnSettings;->mActiveProfile:Landroid/net/vpn/VpnProfile;

    .line 788
    iput-object v2, p0, Lcom/android/settings/vpn/VpnSettings;->mConnectingActor:Lcom/android/settings/vpn/VpnProfileActor;

    .line 789
    invoke-direct {p0}, Lcom/android/settings/vpn/VpnSettings;->enableProfilePreferences()V

    .line 790
    return-void
.end method

.method private processSecrets(Landroid/net/vpn/VpnProfile;)V
    .registers 15
    .parameter "p"

    .prologue
    const-string v12, "keystore write failed: key="

    const-string v11, "vpn"

    .line 987
    invoke-static {}, Landroid/security/Keystore;->getInstance()Landroid/security/Keystore;

    move-result-object v2

    .line 988
    .local v2, ks:Landroid/security/Keystore;
    sget-object v8, Lcom/android/settings/vpn/VpnSettings$18;->$SwitchMap$android$net$vpn$VpnType:[I

    invoke-virtual {p1}, Landroid/net/vpn/VpnProfile;->getType()Landroid/net/vpn/VpnType;

    move-result-object v9

    invoke-virtual {v9}, Landroid/net/vpn/VpnType;->ordinal()I

    move-result v9

    aget v8, v8, v9

    packed-switch v8, :pswitch_data_c0

    .line 1019
    :goto_17
    return-void

    .line 990
    :pswitch_18
    move-object v0, p1

    check-cast v0, Landroid/net/vpn/L2tpIpsecPskProfile;

    move-object v5, v0

    .line 991
    .local v5, pskProfile:Landroid/net/vpn/L2tpIpsecPskProfile;
    invoke-virtual {v5}, Landroid/net/vpn/L2tpIpsecPskProfile;->getPresharedKey()Ljava/lang/String;

    move-result-object v4

    .line 992
    .local v4, presharedKey:Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "ipsk000"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p1}, Landroid/net/vpn/VpnProfile;->getId()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 993
    .local v1, keyName:Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_5d

    .line 994
    const-string v8, "vpn"

    invoke-virtual {v2, v11, v1, v4}, Landroid/security/Keystore;->put(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    .line 995
    .local v6, ret:I
    if-eqz v6, :cond_5d

    .line 996
    sget-object v8, Lcom/android/settings/vpn/VpnSettings;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "keystore write failed: key="

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 999
    .end local v6           #ret:I
    :cond_5d
    invoke-direct {p0, v1}, Lcom/android/settings/vpn/VpnSettings;->keyNameForDaemon(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Landroid/net/vpn/L2tpIpsecPskProfile;->setPresharedKey(Ljava/lang/String;)V

    .line 1003
    .end local v1           #keyName:Ljava/lang/String;
    .end local v4           #presharedKey:Ljava/lang/String;
    .end local v5           #pskProfile:Landroid/net/vpn/L2tpIpsecPskProfile;
    :pswitch_64
    move-object v0, p1

    check-cast v0, Landroid/net/vpn/L2tpProfile;

    move-object v3, v0

    .line 1004
    .local v3, l2tpProfile:Landroid/net/vpn/L2tpProfile;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "lscrt000"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p1}, Landroid/net/vpn/VpnProfile;->getId()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1005
    .restart local v1       #keyName:Ljava/lang/String;
    invoke-virtual {v3}, Landroid/net/vpn/L2tpProfile;->isSecretEnabled()Z

    move-result v8

    if-eqz v8, :cond_b8

    .line 1006
    invoke-virtual {v3}, Landroid/net/vpn/L2tpProfile;->getSecretString()Ljava/lang/String;

    move-result-object v7

    .line 1007
    .local v7, secret:Ljava/lang/String;
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_af

    .line 1008
    const-string v8, "vpn"

    invoke-virtual {v2, v11, v1, v7}, Landroid/security/Keystore;->put(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    .line 1009
    .restart local v6       #ret:I
    if-eqz v6, :cond_af

    .line 1010
    sget-object v8, Lcom/android/settings/vpn/VpnSettings;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "keystore write failed: key="

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1013
    .end local v6           #ret:I
    :cond_af
    invoke-direct {p0, v1}, Lcom/android/settings/vpn/VpnSettings;->keyNameForDaemon(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Landroid/net/vpn/L2tpProfile;->setSecretString(Ljava/lang/String;)V

    goto/16 :goto_17

    .line 1015
    .end local v7           #secret:Ljava/lang/String;
    :cond_b8
    const-string v8, "vpn"

    invoke-virtual {v2, v11, v1}, Landroid/security/Keystore;->remove(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_17

    .line 988
    nop

    :pswitch_data_c0
    .packed-switch 0x2
        :pswitch_18
        :pswitch_64
    .end packed-switch
.end method

.method private removeProfileFromStorage(Landroid/net/vpn/VpnProfile;)V
    .registers 3
    .parameter "p"

    .prologue
    .line 829
    invoke-static {p1}, Lcom/android/settings/vpn/VpnSettings;->getProfileDir(Landroid/net/vpn/VpnProfile;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/vpn/Util;->deleteFile(Ljava/lang/String;)V

    .line 830
    return-void
.end method

.method private replaceProfile(ILandroid/net/vpn/VpnProfile;)V
    .registers 8
    .parameter "index"
    .parameter "p"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 594
    iget-object v0, p0, Lcom/android/settings/vpn/VpnSettings;->mVpnPreferenceMap:Ljava/util/Map;

    .line 595
    .local v0, map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Lcom/android/settings/vpn/VpnSettings$VpnPreference;>;"
    iget-object v3, p0, Lcom/android/settings/vpn/VpnSettings;->mVpnProfileList:Ljava/util/List;

    invoke-interface {v3, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/vpn/VpnProfile;

    .line 596
    .local v1, oldProfile:Landroid/net/vpn/VpnProfile;
    invoke-virtual {v1}, Landroid/net/vpn/VpnProfile;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings/vpn/VpnSettings$VpnPreference;

    .line 597
    .local v2, pref:Lcom/android/settings/vpn/VpnSettings$VpnPreference;
    iget-object v3, v2, Lcom/android/settings/vpn/VpnSettings$VpnPreference;->mProfile:Landroid/net/vpn/VpnProfile;

    if-eq v3, v1, :cond_20

    .line 598
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "inconsistent state!"

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 601
    :cond_20
    invoke-virtual {v1}, Landroid/net/vpn/VpnProfile;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Landroid/net/vpn/VpnProfile;->setId(Ljava/lang/String;)V

    .line 603
    invoke-direct {p0, p2}, Lcom/android/settings/vpn/VpnSettings;->processSecrets(Landroid/net/vpn/VpnProfile;)V

    .line 608
    invoke-static {v1}, Lcom/android/settings/vpn/VpnSettings;->getProfileDir(Landroid/net/vpn/VpnProfile;)Ljava/lang/String;

    move-result-object v3

    invoke-static {p2}, Lcom/android/settings/vpn/VpnSettings;->getProfileDir(Landroid/net/vpn/VpnProfile;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/settings/vpn/Util;->copyFiles(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3b

    .line 609
    invoke-direct {p0, v1}, Lcom/android/settings/vpn/VpnSettings;->removeProfileFromStorage(Landroid/net/vpn/VpnProfile;)V

    .line 611
    :cond_3b
    invoke-static {p2}, Lcom/android/settings/vpn/VpnSettings;->saveProfileToStorage(Landroid/net/vpn/VpnProfile;)V

    .line 613
    invoke-virtual {v2, p2}, Lcom/android/settings/vpn/VpnSettings$VpnPreference;->setProfile(Landroid/net/vpn/VpnProfile;)V

    .line 614
    invoke-virtual {p2}, Landroid/net/vpn/VpnProfile;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 615
    return-void
.end method

.method private retrieveVpnListFromStorage()V
    .registers 12

    .prologue
    .line 833
    new-instance v9, Ljava/util/LinkedHashMap;

    invoke-direct {v9}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v9, p0, Lcom/android/settings/vpn/VpnSettings;->mVpnPreferenceMap:Ljava/util/Map;

    .line 834
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v9}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v9

    iput-object v9, p0, Lcom/android/settings/vpn/VpnSettings;->mVpnProfileList:Ljava/util/List;

    .line 836
    iget-object v9, p0, Lcom/android/settings/vpn/VpnSettings;->mVpnListContainer:Landroid/preference/PreferenceCategory;

    invoke-virtual {v9}, Landroid/preference/PreferenceCategory;->removeAll()V

    .line 838
    new-instance v8, Ljava/io/File;

    const-string v9, "/data/misc/vpn/profiles/"

    invoke-direct {v8, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 839
    .local v8, root:Ljava/io/File;
    invoke-virtual {v8}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v2

    .line 840
    .local v2, dirs:[Ljava/lang/String;
    if-nez v2, :cond_25

    .line 868
    :goto_24
    return-void

    .line 841
    :cond_25
    move-object v0, v2

    .local v0, arr$:[Ljava/lang/String;
    array-length v6, v0

    .local v6, len$:I
    const/4 v5, 0x0

    .local v5, i$:I
    :goto_28
    if-ge v5, v6, :cond_5d

    aget-object v1, v0, v5

    .line 842
    .local v1, dir:Ljava/lang/String;
    new-instance v4, Ljava/io/File;

    new-instance v9, Ljava/io/File;

    invoke-direct {v9, v8, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-string v10, ".pobj"

    invoke-direct {v4, v9, v10}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 843
    .local v4, f:Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v9

    if-nez v9, :cond_41

    .line 841
    :cond_3e
    :goto_3e
    add-int/lit8 v5, v5, 0x1

    goto :goto_28

    .line 845
    :cond_41
    :try_start_41
    invoke-direct {p0, v4}, Lcom/android/settings/vpn/VpnSettings;->deserialize(Ljava/io/File;)Landroid/net/vpn/VpnProfile;

    move-result-object v7

    .line 846
    .local v7, p:Landroid/net/vpn/VpnProfile;
    if-eqz v7, :cond_3e

    .line 847
    invoke-direct {p0, v1, v7}, Lcom/android/settings/vpn/VpnSettings;->checkIdConsistency(Ljava/lang/String;Landroid/net/vpn/VpnProfile;)Z

    move-result v9

    if-eqz v9, :cond_3e

    .line 849
    iget-object v9, p0, Lcom/android/settings/vpn/VpnSettings;->mVpnProfileList:Ljava/util/List;

    invoke-interface {v9, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_52
    .catch Ljava/io/IOException; {:try_start_41 .. :try_end_52} :catch_53

    goto :goto_3e

    .line 850
    .end local v7           #p:Landroid/net/vpn/VpnProfile;
    :catch_53
    move-exception v9

    move-object v3, v9

    .line 851
    .local v3, e:Ljava/io/IOException;
    sget-object v9, Lcom/android/settings/vpn/VpnSettings;->TAG:Ljava/lang/String;

    const-string v10, "retrieveVpnListFromStorage()"

    invoke-static {v9, v10, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3e

    .line 854
    .end local v1           #dir:Ljava/lang/String;
    .end local v3           #e:Ljava/io/IOException;
    .end local v4           #f:Ljava/io/File;
    :cond_5d
    iget-object v9, p0, Lcom/android/settings/vpn/VpnSettings;->mVpnProfileList:Ljava/util/List;

    new-instance v10, Lcom/android/settings/vpn/VpnSettings$16;

    invoke-direct {v10, p0}, Lcom/android/settings/vpn/VpnSettings$16;-><init>(Lcom/android/settings/vpn/VpnSettings;)V

    invoke-static {v9, v10}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 864
    iget-object v9, p0, Lcom/android/settings/vpn/VpnSettings;->mVpnProfileList:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, i$:Ljava/util/Iterator;
    :goto_6d
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_7e

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/net/vpn/VpnProfile;

    .line 865
    .restart local v7       #p:Landroid/net/vpn/VpnProfile;
    const/4 v9, 0x0

    invoke-direct {p0, v7, v9}, Lcom/android/settings/vpn/VpnSettings;->addPreferenceFor(Landroid/net/vpn/VpnProfile;Z)Lcom/android/settings/vpn/VpnSettings$VpnPreference;

    goto :goto_6d

    .line 867
    .end local v7           #p:Landroid/net/vpn/VpnProfile;
    :cond_7e
    invoke-direct {p0}, Lcom/android/settings/vpn/VpnSettings;->disableProfilePreferencesIfOneActive()V

    goto :goto_24
.end method

.method static saveProfileToStorage(Landroid/net/vpn/VpnProfile;)V
    .registers 6
    .parameter "p"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 820
    new-instance v0, Ljava/io/File;

    invoke-static {p0}, Lcom/android/settings/vpn/VpnSettings;->getProfileDir(Landroid/net/vpn/VpnProfile;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 821
    .local v0, f:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_12

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 822
    :cond_12
    new-instance v1, Ljava/io/ObjectOutputStream;

    new-instance v2, Ljava/io/FileOutputStream;

    new-instance v3, Ljava/io/File;

    const-string v4, ".pobj"

    invoke-direct {v3, v0, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v2}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 824
    .local v1, oos:Ljava/io/ObjectOutputStream;
    invoke-virtual {v1, p0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 825
    invoke-virtual {v1}, Ljava/io/ObjectOutputStream;->close()V

    .line 826
    return-void
.end method

.method private setProfileId(Landroid/net/vpn/VpnProfile;)V
    .registers 7
    .parameter "profile"

    .prologue
    .line 548
    :cond_0
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Math;->abs(J)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    .line 550
    .local v1, id:Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v4, 0x8

    if-lt v3, v4, :cond_0

    .line 552
    iget-object v3, p0, Lcom/android/settings/vpn/VpnSettings;->mVpnProfileList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_1e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_38

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/vpn/VpnProfile;

    .line 553
    .local v2, p:Landroid/net/vpn/VpnProfile;
    invoke-virtual {v2}, Landroid/net/vpn/VpnProfile;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1e

    .line 554
    invoke-direct {p0, p1}, Lcom/android/settings/vpn/VpnSettings;->setProfileId(Landroid/net/vpn/VpnProfile;)V

    .line 559
    .end local v2           #p:Landroid/net/vpn/VpnProfile;
    :goto_37
    return-void

    .line 558
    :cond_38
    invoke-virtual {p1, v1}, Landroid/net/vpn/VpnProfile;->setId(Ljava/lang/String;)V

    goto :goto_37
.end method

.method private startVpnEditor(Landroid/net/vpn/VpnProfile;)V
    .registers 5
    .parameter "profile"

    .prologue
    .line 669
    invoke-direct {p0, p1}, Lcom/android/settings/vpn/VpnSettings;->needKeystoreToEdit(Landroid/net/vpn/VpnProfile;)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 670
    new-instance v0, Lcom/android/settings/vpn/VpnSettings$14;

    invoke-direct {v0, p0, p1}, Lcom/android/settings/vpn/VpnSettings$14;-><init>(Lcom/android/settings/vpn/VpnSettings;Landroid/net/vpn/VpnProfile;)V

    .line 675
    .local v0, action:Ljava/lang/Runnable;
    invoke-direct {p0, p1, v0}, Lcom/android/settings/vpn/VpnSettings;->unlockKeystore(Landroid/net/vpn/VpnProfile;Ljava/lang/Runnable;)Z

    move-result v2

    if-nez v2, :cond_12

    .line 681
    .end local v0           #action:Ljava/lang/Runnable;
    :goto_11
    return-void

    .line 678
    :cond_12
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/android/settings/vpn/VpnEditor;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 679
    .local v1, intent:Landroid/content/Intent;
    const-string v2, "vpn_profile"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 680
    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Lcom/android/settings/vpn/VpnSettings;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_11
.end method

.method private startVpnTypeSelection()V
    .registers 3

    .prologue
    .line 618
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/settings/vpn/VpnTypeSelection;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 619
    .local v0, intent:Landroid/content/Intent;
    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/vpn/VpnSettings;->startActivityForResult(Landroid/content/Intent;I)V

    .line 620
    return-void
.end method

.method private unlockKeystore(Landroid/net/vpn/VpnProfile;Ljava/lang/Runnable;)Z
    .registers 5
    .parameter "p"
    .parameter "action"

    .prologue
    .line 661
    invoke-direct {p0}, Lcom/android/settings/vpn/VpnSettings;->isKeystoreUnlocked()Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    .line 665
    :goto_7
    return v0

    .line 662
    :cond_8
    iput-object p2, p0, Lcom/android/settings/vpn/VpnSettings;->mUnlockAction:Ljava/lang/Runnable;

    .line 663
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.security.UNLOCK_CREDENTIAL_STORAGE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/android/settings/vpn/VpnSettings;->startActivity(Landroid/content/Intent;)V

    .line 665
    const/4 v0, 0x0

    goto :goto_7
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 14
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    const/4 v9, 0x0

    const/4 v7, 0x1

    .line 384
    if-eqz p2, :cond_6

    if-nez p3, :cond_e

    .line 385
    :cond_6
    sget-object v6, Lcom/android/settings/vpn/VpnSettings;->TAG:Ljava/lang/String;

    const-string v7, "no result returned by editor"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 445
    :cond_d
    :goto_d
    return-void

    .line 389
    :cond_e
    const/4 v6, 0x2

    if-ne p1, v6, :cond_1f

    .line 390
    const-string v6, "vpn_type"

    invoke-virtual {p3, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 391
    .local v5, typeName:Ljava/lang/String;
    invoke-direct {p0, v5}, Lcom/android/settings/vpn/VpnSettings;->createVpnProfile(Ljava/lang/String;)Landroid/net/vpn/VpnProfile;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/settings/vpn/VpnSettings;->startVpnEditor(Landroid/net/vpn/VpnProfile;)V

    goto :goto_d

    .line 392
    .end local v5           #typeName:Ljava/lang/String;
    :cond_1f
    if-ne p1, v7, :cond_d2

    .line 393
    const-string v6, "vpn_profile"

    invoke-virtual {p3, v6}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/net/vpn/VpnProfile;

    .line 394
    .local v3, p:Landroid/net/vpn/VpnProfile;
    if-nez v3, :cond_33

    .line 395
    sget-object v6, Lcom/android/settings/vpn/VpnSettings;->TAG:Ljava/lang/String;

    const-string v7, "null object returned by editor"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d

    .line 399
    :cond_33
    invoke-virtual {v3}, Landroid/net/vpn/VpnProfile;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/settings/vpn/VpnSettings;->getProfileIndexFromId(Ljava/lang/String;)I

    move-result v2

    .line 400
    .local v2, index:I
    invoke-direct {p0, v3, v2}, Lcom/android/settings/vpn/VpnSettings;->checkDuplicateName(Landroid/net/vpn/VpnProfile;I)Z

    move-result v6

    if-eqz v6, :cond_5e

    .line 401
    move-object v4, v3

    .line 402
    .local v4, profile:Landroid/net/vpn/VpnProfile;
    const v6, 0x7f0803e3

    invoke-virtual {p0, v6}, Lcom/android/settings/vpn/VpnSettings;->getString(I)Ljava/lang/String;

    move-result-object v6

    new-array v7, v7, [Ljava/lang/Object;

    invoke-virtual {v3}, Landroid/net/vpn/VpnProfile;->getName()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Lcom/android/settings/vpn/VpnSettings$8;

    invoke-direct {v7, p0, v4}, Lcom/android/settings/vpn/VpnSettings$8;-><init>(Lcom/android/settings/vpn/VpnSettings;Landroid/net/vpn/VpnProfile;)V

    invoke-static {p0, v6, v7}, Lcom/android/settings/vpn/Util;->showErrorMessage(Landroid/content/Context;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    goto :goto_d

    .line 413
    .end local v4           #profile:Landroid/net/vpn/VpnProfile;
    :cond_5e
    invoke-direct {p0, v3}, Lcom/android/settings/vpn/VpnSettings;->needKeystoreToSave(Landroid/net/vpn/VpnProfile;)Z

    move-result v6

    if-eqz v6, :cond_6f

    .line 414
    new-instance v0, Lcom/android/settings/vpn/VpnSettings$9;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/settings/vpn/VpnSettings$9;-><init>(Lcom/android/settings/vpn/VpnSettings;IILandroid/content/Intent;)V

    .line 419
    .local v0, action:Ljava/lang/Runnable;
    invoke-direct {p0, v3, v0}, Lcom/android/settings/vpn/VpnSettings;->unlockKeystore(Landroid/net/vpn/VpnProfile;Ljava/lang/Runnable;)Z

    move-result v6

    if-eqz v6, :cond_d

    .line 423
    .end local v0           #action:Ljava/lang/Runnable;
    :cond_6f
    if-gez v2, :cond_b5

    .line 424
    :try_start_71
    invoke-direct {p0, v3}, Lcom/android/settings/vpn/VpnSettings;->addProfile(Landroid/net/vpn/VpnProfile;)V

    .line 425
    const v6, 0x7f0803f9

    invoke-virtual {p0, v6}, Lcom/android/settings/vpn/VpnSettings;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-virtual {v3}, Landroid/net/vpn/VpnProfile;->getName()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {p0, v6}, Lcom/android/settings/vpn/Util;->showShortToastMessage(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_8c
    .catch Ljava/io/IOException; {:try_start_71 .. :try_end_8c} :catch_8d

    goto :goto_d

    .line 433
    :catch_8d
    move-exception v6

    move-object v1, v6

    .line 434
    .local v1, e:Ljava/io/IOException;
    move-object v4, v3

    .line 435
    .restart local v4       #profile:Landroid/net/vpn/VpnProfile;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ": "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Lcom/android/settings/vpn/VpnSettings$10;

    invoke-direct {v7, p0, v4}, Lcom/android/settings/vpn/VpnSettings$10;-><init>(Lcom/android/settings/vpn/VpnSettings;Landroid/net/vpn/VpnProfile;)V

    invoke-static {p0, v6, v7}, Lcom/android/settings/vpn/Util;->showErrorMessage(Landroid/content/Context;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    goto/16 :goto_d

    .line 428
    .end local v1           #e:Ljava/io/IOException;
    .end local v4           #profile:Landroid/net/vpn/VpnProfile;
    :cond_b5
    :try_start_b5
    invoke-direct {p0, v2, v3}, Lcom/android/settings/vpn/VpnSettings;->replaceProfile(ILandroid/net/vpn/VpnProfile;)V

    .line 429
    const v6, 0x7f0803fa

    invoke-virtual {p0, v6}, Lcom/android/settings/vpn/VpnSettings;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-virtual {v3}, Landroid/net/vpn/VpnProfile;->getName()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {p0, v6}, Lcom/android/settings/vpn/Util;->showShortToastMessage(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_d0
    .catch Ljava/io/IOException; {:try_start_b5 .. :try_end_d0} :catch_8d

    goto/16 :goto_d

    .line 443
    .end local v2           #index:I
    .end local v3           #p:Landroid/net/vpn/VpnProfile;
    :cond_d2
    new-instance v6, Ljava/lang/RuntimeException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "unknown request code: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v6
.end method

.method public declared-synchronized onClick(Landroid/content/DialogInterface;I)V
    .registers 10
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 450
    monitor-enter p0

    const/4 v3, -0x1

    if-ne p2, v3, :cond_69

    .line 451
    :try_start_4
    move-object v0, p1

    check-cast v0, Landroid/app/Dialog;

    move-object v1, v0

    .line 452
    .local v1, d:Landroid/app/Dialog;
    iget-object v3, p0, Lcom/android/settings/vpn/VpnSettings;->mConnectingActor:Lcom/android/settings/vpn/VpnProfileActor;

    invoke-interface {v3, v1}, Lcom/android/settings/vpn/VpnProfileActor;->validateInputs(Landroid/app/Dialog;)Ljava/lang/String;

    move-result-object v2

    .line 453
    .local v2, error:Ljava/lang/String;
    if-nez v2, :cond_22

    .line 454
    iget-object v3, p0, Lcom/android/settings/vpn/VpnSettings;->mActiveProfile:Landroid/net/vpn/VpnProfile;

    sget-object v4, Landroid/net/vpn/VpnState;->CONNECTING:Landroid/net/vpn/VpnState;

    invoke-direct {p0, v3, v4}, Lcom/android/settings/vpn/VpnSettings;->changeState(Landroid/net/vpn/VpnProfile;Landroid/net/vpn/VpnState;)V

    .line 455
    iget-object v3, p0, Lcom/android/settings/vpn/VpnSettings;->mConnectingActor:Lcom/android/settings/vpn/VpnProfileActor;

    invoke-interface {v3, v1}, Lcom/android/settings/vpn/VpnProfileActor;->connect(Landroid/app/Dialog;)V

    .line 456
    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lcom/android/settings/vpn/VpnSettings;->removeDialog(I)V
    :try_end_20
    .catchall {:try_start_4 .. :try_end_20} :catchall_66

    .line 480
    .end local v1           #d:Landroid/app/Dialog;
    .end local v2           #error:Ljava/lang/String;
    :goto_20
    monitor-exit p0

    return-void

    .line 459
    .restart local v1       #d:Landroid/app/Dialog;
    .restart local v2       #error:Ljava/lang/String;
    :cond_22
    const/4 v3, 0x1

    :try_start_23
    invoke-virtual {p0, v3}, Lcom/android/settings/vpn/VpnSettings;->dismissDialog(I)V

    .line 461
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-direct {v3, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x1040014

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x1080027

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f0803e1

    invoke-virtual {p0, v4}, Lcom/android/settings/vpn/VpnSettings;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v2, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f0803d8

    new-instance v5, Lcom/android/settings/vpn/VpnSettings$11;

    invoke-direct {v5, p0}, Lcom/android/settings/vpn/VpnSettings$11;-><init>(Lcom/android/settings/vpn/VpnSettings;)V

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/vpn/VpnSettings;->mShowingDialog:Landroid/app/Dialog;

    .line 474
    iget-object v3, p0, Lcom/android/settings/vpn/VpnSettings;->mShowingDialog:Landroid/app/Dialog;

    invoke-virtual {v3}, Landroid/app/Dialog;->show()V
    :try_end_65
    .catchall {:try_start_23 .. :try_end_65} :catchall_66

    goto :goto_20

    .line 450
    .end local v1           #d:Landroid/app/Dialog;
    .end local v2           #error:Ljava/lang/String;
    :catchall_66
    move-exception v3

    monitor-exit p0

    throw v3

    .line 477
    :cond_69
    const/4 v3, 0x1

    :try_start_6a
    invoke-virtual {p0, v3}, Lcom/android/settings/vpn/VpnSettings;->removeDialog(I)V

    .line 478
    invoke-direct {p0}, Lcom/android/settings/vpn/VpnSettings;->onIdle()V
    :try_end_70
    .catchall {:try_start_6a .. :try_end_70} :catchall_66

    goto :goto_20
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .registers 6
    .parameter "item"

    .prologue
    const/4 v3, 0x1

    .line 359
    invoke-interface {p1}, Landroid/view/MenuItem;->getMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v2

    check-cast v2, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    invoke-direct {p0, v2}, Lcom/android/settings/vpn/VpnSettings;->getProfilePositionFrom(Landroid/widget/AdapterView$AdapterContextMenuInfo;)I

    move-result v1

    .line 361
    .local v1, position:I
    invoke-direct {p0, v1}, Lcom/android/settings/vpn/VpnSettings;->getProfile(I)Landroid/net/vpn/VpnProfile;

    move-result-object v0

    .line 363
    .local v0, p:Landroid/net/vpn/VpnProfile;
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    packed-switch v2, :pswitch_data_2a

    .line 378
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v2

    :goto_1a
    return v2

    .line 366
    :pswitch_1b
    invoke-direct {p0, v0}, Lcom/android/settings/vpn/VpnSettings;->connectOrDisconnect(Landroid/net/vpn/VpnProfile;)V

    move v2, v3

    .line 367
    goto :goto_1a

    .line 370
    :pswitch_20
    invoke-direct {p0, v0}, Lcom/android/settings/vpn/VpnSettings;->startVpnEditor(Landroid/net/vpn/VpnProfile;)V

    move v2, v3

    .line 371
    goto :goto_1a

    .line 374
    :pswitch_25
    invoke-direct {p0, v1}, Lcom/android/settings/vpn/VpnSettings;->deleteProfile(I)V

    move v2, v3

    .line 375
    goto :goto_1a

    .line 363
    :pswitch_data_2a
    .packed-switch 0x1
        :pswitch_1b
        :pswitch_1b
        :pswitch_20
        :pswitch_25
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 4
    .parameter "savedInstanceState"

    .prologue
    .line 151
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 152
    const v0, 0x7f04001d

    invoke-virtual {p0, v0}, Lcom/android/settings/vpn/VpnSettings;->addPreferencesFromResource(I)V

    .line 155
    const-string v0, "vpn_list"

    invoke-virtual {p0, v0}, Lcom/android/settings/vpn/VpnSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/android/settings/vpn/VpnSettings;->mVpnListContainer:Landroid/preference/PreferenceCategory;

    .line 158
    const-string v0, "add_new_vpn"

    invoke-virtual {p0, v0}, Lcom/android/settings/vpn/VpnSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    iput-object v0, p0, Lcom/android/settings/vpn/VpnSettings;->mAddVpn:Landroid/preference/PreferenceScreen;

    .line 159
    iget-object v0, p0, Lcom/android/settings/vpn/VpnSettings;->mAddVpn:Landroid/preference/PreferenceScreen;

    new-instance v1, Lcom/android/settings/vpn/VpnSettings$1;

    invoke-direct {v1, p0}, Lcom/android/settings/vpn/VpnSettings$1;-><init>(Lcom/android/settings/vpn/VpnSettings;)V

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 168
    invoke-virtual {p0}, Lcom/android/settings/vpn/VpnSettings;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/vpn/VpnSettings;->registerForContextMenu(Landroid/view/View;)V

    .line 171
    iget-object v0, p0, Lcom/android/settings/vpn/VpnSettings;->mVpnManager:Landroid/net/vpn/VpnManager;

    iget-object v1, p0, Lcom/android/settings/vpn/VpnSettings;->mConnectivityReceiver:Lcom/android/settings/vpn/VpnSettings$ConnectivityReceiver;

    invoke-virtual {v0, v1}, Landroid/net/vpn/VpnManager;->registerConnectivityReceiver(Landroid/content/BroadcastReceiver;)V

    .line 173
    invoke-direct {p0}, Lcom/android/settings/vpn/VpnSettings;->retrieveVpnListFromStorage()V

    .line 174
    invoke-direct {p0}, Lcom/android/settings/vpn/VpnSettings;->checkVpnConnectionStatusInBackground()V

    .line 175
    return-void
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .registers 12
    .parameter "menu"
    .parameter "v"
    .parameter "menuInfo"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 334
    invoke-super {p0, p1, p2, p3}, Landroid/preference/PreferenceActivity;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    .line 336
    check-cast p3, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    .end local p3
    invoke-direct {p0, p3}, Lcom/android/settings/vpn/VpnSettings;->getProfilePositionFrom(Landroid/widget/AdapterView$AdapterContextMenuInfo;)I

    move-result v4

    invoke-direct {p0, v4}, Lcom/android/settings/vpn/VpnSettings;->getProfile(I)Landroid/net/vpn/VpnProfile;

    move-result-object v2

    .line 338
    .local v2, p:Landroid/net/vpn/VpnProfile;
    if-eqz v2, :cond_63

    .line 339
    invoke-virtual {v2}, Landroid/net/vpn/VpnProfile;->getState()Landroid/net/vpn/VpnState;

    move-result-object v3

    .line 340
    .local v3, state:Landroid/net/vpn/VpnState;
    invoke-virtual {v2}, Landroid/net/vpn/VpnProfile;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v4}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    .line 342
    sget-object v4, Landroid/net/vpn/VpnState;->IDLE:Landroid/net/vpn/VpnState;

    if-ne v3, v4, :cond_64

    move v0, v7

    .line 343
    .local v0, isIdle:Z
    :goto_21
    if-nez v0, :cond_2b

    sget-object v4, Landroid/net/vpn/VpnState;->DISCONNECTING:Landroid/net/vpn/VpnState;

    if-eq v3, v4, :cond_2b

    sget-object v4, Landroid/net/vpn/VpnState;->CANCELLED:Landroid/net/vpn/VpnState;

    if-ne v3, v4, :cond_66

    :cond_2b
    move v1, v7

    .line 345
    .local v1, isNotConnect:Z
    :goto_2c
    const v4, 0x7f0803dd

    invoke-interface {p1, v6, v7, v6, v4}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v4

    if-eqz v0, :cond_68

    iget-object v5, p0, Lcom/android/settings/vpn/VpnSettings;->mActiveProfile:Landroid/net/vpn/VpnProfile;

    if-nez v5, :cond_68

    move v5, v7

    :goto_3a
    invoke-interface {v4, v5}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 347
    const/4 v4, 0x2

    const v5, 0x7f0803de

    invoke-interface {p1, v6, v4, v6, v5}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v4

    sget-object v5, Landroid/net/vpn/VpnState;->CONNECTED:Landroid/net/vpn/VpnState;

    if-ne v3, v5, :cond_6a

    move v5, v7

    :goto_4a
    invoke-interface {v4, v5}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 350
    const/4 v4, 0x3

    const v5, 0x7f0803df

    invoke-interface {p1, v6, v4, v6, v5}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 352
    const/4 v4, 0x4

    const v5, 0x7f0803e0

    invoke-interface {p1, v6, v4, v6, v5}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 355
    .end local v0           #isIdle:Z
    .end local v1           #isNotConnect:Z
    .end local v3           #state:Landroid/net/vpn/VpnState;
    :cond_63
    return-void

    .restart local v3       #state:Landroid/net/vpn/VpnState;
    :cond_64
    move v0, v6

    .line 342
    goto :goto_21

    .restart local v0       #isIdle:Z
    :cond_66
    move v1, v6

    .line 343
    goto :goto_2c

    .restart local v1       #isNotConnect:Z
    :cond_68
    move v5, v6

    .line 345
    goto :goto_3a

    :cond_6a
    move v5, v6

    .line 347
    goto :goto_4a
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .registers 3
    .parameter "id"

    .prologue
    .line 200
    packed-switch p1, :pswitch_data_30

    .line 226
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v0

    :goto_7
    return-object v0

    .line 202
    :pswitch_8
    invoke-direct {p0}, Lcom/android/settings/vpn/VpnSettings;->createConnectDialog()Landroid/app/Dialog;

    move-result-object v0

    goto :goto_7

    .line 205
    :pswitch_d
    invoke-direct {p0}, Lcom/android/settings/vpn/VpnSettings;->createReconnectDialog()Landroid/app/Dialog;

    move-result-object v0

    goto :goto_7

    .line 208
    :pswitch_12
    invoke-direct {p0}, Lcom/android/settings/vpn/VpnSettings;->createAuthErrorDialog()Landroid/app/Dialog;

    move-result-object v0

    goto :goto_7

    .line 211
    :pswitch_17
    invoke-direct {p0}, Lcom/android/settings/vpn/VpnSettings;->createRemoteHungUpErrorDialog()Landroid/app/Dialog;

    move-result-object v0

    goto :goto_7

    .line 214
    :pswitch_1c
    invoke-direct {p0}, Lcom/android/settings/vpn/VpnSettings;->createChallengeErrorDialog()Landroid/app/Dialog;

    move-result-object v0

    goto :goto_7

    .line 217
    :pswitch_21
    invoke-direct {p0}, Lcom/android/settings/vpn/VpnSettings;->createUnknownServerDialog()Landroid/app/Dialog;

    move-result-object v0

    goto :goto_7

    .line 220
    :pswitch_26
    invoke-direct {p0}, Lcom/android/settings/vpn/VpnSettings;->createSecretNotSetDialog()Landroid/app/Dialog;

    move-result-object v0

    goto :goto_7

    .line 223
    :pswitch_2b
    invoke-direct {p0}, Lcom/android/settings/vpn/VpnSettings;->createConnectionLostDialog()Landroid/app/Dialog;

    move-result-object v0

    goto :goto_7

    .line 200
    :pswitch_data_30
    .packed-switch 0x1
        :pswitch_8
        :pswitch_d
        :pswitch_12
        :pswitch_21
        :pswitch_26
        :pswitch_1c
        :pswitch_17
        :pswitch_2b
    .end packed-switch
.end method

.method protected onDestroy()V
    .registers 3

    .prologue
    .line 190
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onDestroy()V

    .line 191
    invoke-virtual {p0}, Lcom/android/settings/vpn/VpnSettings;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/vpn/VpnSettings;->unregisterForContextMenu(Landroid/view/View;)V

    .line 192
    iget-object v0, p0, Lcom/android/settings/vpn/VpnSettings;->mVpnManager:Landroid/net/vpn/VpnManager;

    iget-object v1, p0, Lcom/android/settings/vpn/VpnSettings;->mConnectivityReceiver:Lcom/android/settings/vpn/VpnSettings$ConnectivityReceiver;

    invoke-virtual {v0, v1}, Landroid/net/vpn/VpnManager;->unregisterConnectivityReceiver(Landroid/content/BroadcastReceiver;)V

    .line 193
    iget-object v0, p0, Lcom/android/settings/vpn/VpnSettings;->mShowingDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_22

    iget-object v0, p0, Lcom/android/settings/vpn/VpnSettings;->mShowingDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_22

    .line 194
    iget-object v0, p0, Lcom/android/settings/vpn/VpnSettings;->mShowingDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 196
    :cond_22
    return-void
.end method

.method public onResume()V
    .registers 3

    .prologue
    .line 179
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 181
    iget-object v1, p0, Lcom/android/settings/vpn/VpnSettings;->mUnlockAction:Ljava/lang/Runnable;

    if-eqz v1, :cond_15

    invoke-direct {p0}, Lcom/android/settings/vpn/VpnSettings;->isKeystoreUnlocked()Z

    move-result v1

    if-eqz v1, :cond_15

    .line 182
    iget-object v0, p0, Lcom/android/settings/vpn/VpnSettings;->mUnlockAction:Ljava/lang/Runnable;

    .line 183
    .local v0, action:Ljava/lang/Runnable;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/settings/vpn/VpnSettings;->mUnlockAction:Ljava/lang/Runnable;

    .line 184
    invoke-virtual {p0, v0}, Lcom/android/settings/vpn/VpnSettings;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 186
    .end local v0           #action:Ljava/lang/Runnable;
    :cond_15
    return-void
.end method
