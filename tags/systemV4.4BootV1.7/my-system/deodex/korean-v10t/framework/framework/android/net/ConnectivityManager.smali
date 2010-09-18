.class public Landroid/net/ConnectivityManager;
.super Ljava/lang/Object;
.source "ConnectivityManager.java"


# static fields
.field public static final ACTION_BACKGROUND_DATA_SETTING_CHANGED:Ljava/lang/String; = "android.net.conn.BACKGROUND_DATA_SETTING_CHANGED"

.field public static final CONNECTIVITY_ACTION:Ljava/lang/String; = "android.net.conn.CONNECTIVITY_CHANGE"

.field public static final DEFAULT_NETWORK_PREFERENCE:I = 0x1

.field public static final EXTRA_EXTRA_INFO:Ljava/lang/String; = "extraInfo"

.field public static final EXTRA_IS_FAILOVER:Ljava/lang/String; = "isFailover"

.field public static final EXTRA_NETWORK_INFO:Ljava/lang/String; = "networkInfo"

.field public static final EXTRA_NO_CONNECTIVITY:Ljava/lang/String; = "noConnectivity"

.field public static final EXTRA_OTHER_NETWORK_INFO:Ljava/lang/String; = "otherNetwork"

.field public static final EXTRA_REASON:Ljava/lang/String; = "reason"

.field public static final TYPE_MOBILE:I = 0x0

.field public static final TYPE_WIFI:I = 0x1


# instance fields
.field private mService:Landroid/net/IConnectivityManager;


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 281
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 282
    return-void
.end method

.method public constructor <init>(Landroid/net/IConnectivityManager;)V
    .registers 4
    .parameter "service"

    .prologue
    .line 287
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 288
    if-nez p1, :cond_d

    .line 289
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "ConnectivityManager() cannot be constructed with null service"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 292
    :cond_d
    iput-object p1, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    .line 293
    return-void
.end method

.method public static isNetworkTypeValid(I)Z
    .registers 2
    .parameter "networkType"

    .prologue
    const/4 v0, 0x1

    .line 125
    if-eq p0, v0, :cond_5

    if-nez p0, :cond_6

    :cond_5
    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method


# virtual methods
.method public getActiveNetworkInfo()Landroid/net/NetworkInfo;
    .registers 3

    .prologue
    .line 145
    :try_start_0
    iget-object v1, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v1}, Landroid/net/IConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object v1

    .line 147
    :goto_6
    return-object v1

    .line 146
    :catch_7
    move-exception v1

    move-object v0, v1

    .line 147
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public getAllNetworkInfo()[Landroid/net/NetworkInfo;
    .registers 3

    .prologue
    .line 161
    :try_start_0
    iget-object v1, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v1}, Landroid/net/IConnectivityManager;->getAllNetworkInfo()[Landroid/net/NetworkInfo;
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object v1

    .line 163
    :goto_6
    return-object v1

    .line 162
    :catch_7
    move-exception v1

    move-object v0, v1

    .line 163
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public getBackgroundDataSetting()Z
    .registers 3

    .prologue
    .line 253
    :try_start_0
    iget-object v1, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v1}, Landroid/net/IConnectivityManager;->getBackgroundDataSetting()Z
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    .line 256
    :goto_6
    return v1

    .line 254
    :catch_7
    move-exception v1

    move-object v0, v1

    .line 256
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public getNetworkInfo(I)Landroid/net/NetworkInfo;
    .registers 4
    .parameter "networkType"

    .prologue
    .line 153
    :try_start_0
    iget-object v1, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v1, p1}, Landroid/net/IConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object v1

    .line 155
    :goto_6
    return-object v1

    .line 154
    :catch_7
    move-exception v1

    move-object v0, v1

    .line 155
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public getNetworkPreference()I
    .registers 3

    .prologue
    .line 137
    :try_start_0
    iget-object v1, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v1}, Landroid/net/IConnectivityManager;->getNetworkPreference()I
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    .line 139
    :goto_6
    return v1

    .line 138
    :catch_7
    move-exception v1

    move-object v0, v1

    .line 139
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, -0x1

    goto :goto_6
.end method

.method public requestRouteToHost(II)Z
    .registers 5
    .parameter "networkType"
    .parameter "hostAddress"

    .prologue
    .line 234
    :try_start_0
    iget-object v1, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v1, p1, p2}, Landroid/net/IConnectivityManager;->requestRouteToHost(II)Z
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    .line 236
    :goto_6
    return v1

    .line 235
    :catch_7
    move-exception v1

    move-object v0, v1

    .line 236
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public setBackgroundDataSetting(Z)V
    .registers 3
    .parameter "allowBackgroundData"

    .prologue
    .line 272
    :try_start_0
    iget-object v0, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v0, p1}, Landroid/net/IConnectivityManager;->setBackgroundDataSetting(Z)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 275
    :goto_5
    return-void

    .line 273
    :catch_6
    move-exception v0

    goto :goto_5
.end method

.method public setNetworkPreference(I)V
    .registers 3
    .parameter "preference"

    .prologue
    .line 130
    :try_start_0
    iget-object v0, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v0, p1}, Landroid/net/IConnectivityManager;->setNetworkPreference(I)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 133
    :goto_5
    return-void

    .line 131
    :catch_6
    move-exception v0

    goto :goto_5
.end method

.method public setRadio(IZ)Z
    .registers 5
    .parameter "networkType"
    .parameter "turnOn"

    .prologue
    .line 179
    :try_start_0
    iget-object v1, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v1, p1, p2}, Landroid/net/IConnectivityManager;->setRadio(IZ)Z
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    .line 181
    :goto_6
    return v1

    .line 180
    :catch_7
    move-exception v1

    move-object v0, v1

    .line 181
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public setRadios(Z)Z
    .registers 4
    .parameter "turnOn"

    .prologue
    .line 170
    :try_start_0
    iget-object v1, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v1, p1}, Landroid/net/IConnectivityManager;->setRadios(Z)Z
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    .line 172
    :goto_6
    return v1

    .line 171
    :catch_7
    move-exception v1

    move-object v0, v1

    .line 172
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public startUsingNetworkFeature(ILjava/lang/String;)I
    .registers 5
    .parameter "networkType"
    .parameter "feature"

    .prologue
    .line 198
    :try_start_0
    iget-object v1, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v1, p1, p2}, Landroid/net/IConnectivityManager;->startUsingNetworkFeature(ILjava/lang/String;)I
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    .line 200
    :goto_6
    return v1

    .line 199
    :catch_7
    move-exception v1

    move-object v0, v1

    .line 200
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, -0x1

    goto :goto_6
.end method

.method public stopUsingNetworkFeature(ILjava/lang/String;)I
    .registers 5
    .parameter "networkType"
    .parameter "feature"

    .prologue
    .line 217
    :try_start_0
    iget-object v1, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v1, p1, p2}, Landroid/net/IConnectivityManager;->stopUsingNetworkFeature(ILjava/lang/String;)I
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    .line 219
    :goto_6
    return v1

    .line 218
    :catch_7
    move-exception v1

    move-object v0, v1

    .line 219
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, -0x1

    goto :goto_6
.end method
