.class Lcom/android/settings/vpn/VpnSettings$StatusChecker;
.super Ljava/lang/Object;
.source "VpnSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/vpn/VpnSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StatusChecker"
.end annotation


# instance fields
.field private mList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/net/vpn/VpnProfile;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/settings/vpn/VpnSettings;


# direct methods
.method private constructor <init>(Lcom/android/settings/vpn/VpnSettings;)V
    .registers 2
    .parameter

    .prologue
    .line 1069
    iput-object p1, p0, Lcom/android/settings/vpn/VpnSettings$StatusChecker;->this$0:Lcom/android/settings/vpn/VpnSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/vpn/VpnSettings;Lcom/android/settings/vpn/VpnSettings$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1069
    invoke-direct {p0, p1}, Lcom/android/settings/vpn/VpnSettings$StatusChecker;-><init>(Lcom/android/settings/vpn/VpnSettings;)V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/settings/vpn/VpnSettings$StatusChecker;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 1069
    invoke-direct {p0}, Lcom/android/settings/vpn/VpnSettings$StatusChecker;->showPreferences()V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/settings/vpn/VpnSettings$StatusChecker;Ljava/util/List;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1069
    invoke-direct {p0, p1}, Lcom/android/settings/vpn/VpnSettings$StatusChecker;->setDefaultState(Ljava/util/List;)V

    return-void
.end method

.method private setDefaultState(Ljava/util/List;)V
    .registers 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/net/vpn/VpnProfile;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1120
    .local p1, list:Ljava/util/List;,"Ljava/util/List<Landroid/net/vpn/VpnProfile;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_18

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/vpn/VpnProfile;

    .local v1, p:Landroid/net/vpn/VpnProfile;
    iget-object v2, p0, Lcom/android/settings/vpn/VpnSettings$StatusChecker;->this$0:Lcom/android/settings/vpn/VpnSettings;

    sget-object v3, Landroid/net/vpn/VpnState;->IDLE:Landroid/net/vpn/VpnState;

    invoke-static {v2, v1, v3}, Lcom/android/settings/vpn/VpnSettings;->access$1600(Lcom/android/settings/vpn/VpnSettings;Landroid/net/vpn/VpnProfile;Landroid/net/vpn/VpnState;)V

    goto :goto_4

    .line 1121
    .end local v1           #p:Landroid/net/vpn/VpnProfile;
    :cond_18
    invoke-direct {p0}, Lcom/android/settings/vpn/VpnSettings$StatusChecker;->showPreferences()V

    .line 1122
    return-void
.end method

.method private showPreferences()V
    .registers 6

    .prologue
    .line 1113
    iget-object v3, p0, Lcom/android/settings/vpn/VpnSettings$StatusChecker;->this$0:Lcom/android/settings/vpn/VpnSettings;

    invoke-static {v3}, Lcom/android/settings/vpn/VpnSettings;->access$700(Lcom/android/settings/vpn/VpnSettings;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_30

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/vpn/VpnProfile;

    .line 1114
    .local v1, p:Landroid/net/vpn/VpnProfile;
    iget-object v3, p0, Lcom/android/settings/vpn/VpnSettings$StatusChecker;->this$0:Lcom/android/settings/vpn/VpnSettings;

    invoke-static {v3}, Lcom/android/settings/vpn/VpnSettings;->access$800(Lcom/android/settings/vpn/VpnSettings;)Ljava/util/Map;

    move-result-object v3

    invoke-virtual {v1}, Landroid/net/vpn/VpnProfile;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings/vpn/VpnSettings$VpnPreference;

    .line 1115
    .local v2, pref:Lcom/android/settings/vpn/VpnSettings$VpnPreference;
    iget-object v3, p0, Lcom/android/settings/vpn/VpnSettings$StatusChecker;->this$0:Lcom/android/settings/vpn/VpnSettings;

    invoke-static {v3}, Lcom/android/settings/vpn/VpnSettings;->access$900(Lcom/android/settings/vpn/VpnSettings;)Landroid/preference/PreferenceCategory;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_a

    .line 1117
    .end local v1           #p:Landroid/net/vpn/VpnProfile;
    .end local v2           #pref:Lcom/android/settings/vpn/VpnSettings$VpnPreference;
    :cond_30
    return-void
.end method


# virtual methods
.method declared-synchronized check(Ljava/util/List;)V
    .registers 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/net/vpn/VpnProfile;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1073
    .local p1, list:Ljava/util/List;,"Ljava/util/List<Landroid/net/vpn/VpnProfile;>;"
    monitor-enter p0

    :try_start_1
    new-instance v1, Landroid/os/ConditionVariable;

    invoke-direct {v1}, Landroid/os/ConditionVariable;-><init>()V

    .line 1074
    .local v1, cv:Landroid/os/ConditionVariable;
    invoke-virtual {v1}, Landroid/os/ConditionVariable;->close()V

    .line 1075
    iget-object v2, p0, Lcom/android/settings/vpn/VpnSettings$StatusChecker;->this$0:Lcom/android/settings/vpn/VpnSettings;

    invoke-static {v2}, Lcom/android/settings/vpn/VpnSettings;->access$1700(Lcom/android/settings/vpn/VpnSettings;)Landroid/net/vpn/VpnManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/vpn/VpnManager;->startVpnService()V

    .line 1076
    new-instance v0, Lcom/android/settings/vpn/VpnSettings$StatusChecker$1;

    invoke-direct {v0, p0, v1, p1}, Lcom/android/settings/vpn/VpnSettings$StatusChecker$1;-><init>(Lcom/android/settings/vpn/VpnSettings$StatusChecker;Landroid/os/ConditionVariable;Ljava/util/List;)V

    .line 1102
    .local v0, c:Landroid/content/ServiceConnection;
    iget-object v2, p0, Lcom/android/settings/vpn/VpnSettings$StatusChecker;->this$0:Lcom/android/settings/vpn/VpnSettings;

    invoke-static {v2}, Lcom/android/settings/vpn/VpnSettings;->access$1700(Lcom/android/settings/vpn/VpnSettings;)Landroid/net/vpn/VpnManager;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/net/vpn/VpnManager;->bindVpnService(Landroid/content/ServiceConnection;)Z

    move-result v2

    if-eqz v2, :cond_39

    .line 1103
    const-wide/16 v2, 0x3e8

    invoke-virtual {v1, v2, v3}, Landroid/os/ConditionVariable;->block(J)Z

    move-result v2

    if-nez v2, :cond_37

    .line 1104
    invoke-static {}, Lcom/android/settings/vpn/VpnSettings;->access$1400()Ljava/lang/String;

    move-result-object v2

    const-string v3, "checkStatus() bindService failed"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1105
    invoke-direct {p0, p1}, Lcom/android/settings/vpn/VpnSettings$StatusChecker;->setDefaultState(Ljava/util/List;)V
    :try_end_37
    .catchall {:try_start_1 .. :try_end_37} :catchall_3d

    .line 1110
    :cond_37
    :goto_37
    monitor-exit p0

    return-void

    .line 1108
    :cond_39
    :try_start_39
    invoke-direct {p0, p1}, Lcom/android/settings/vpn/VpnSettings$StatusChecker;->setDefaultState(Ljava/util/List;)V
    :try_end_3c
    .catchall {:try_start_39 .. :try_end_3c} :catchall_3d

    goto :goto_37

    .line 1073
    .end local v0           #c:Landroid/content/ServiceConnection;
    .end local v1           #cv:Landroid/os/ConditionVariable;
    :catchall_3d
    move-exception v2

    monitor-exit p0

    throw v2
.end method
