.class public Lcom/broadcom/bt/service/ftp/BluetoothFTP;
.super Lcom/broadcom/bt/service/framework/BaseProxy;
.source "BluetoothFTP.java"


# static fields
.field private static final DBG:Z = true

.field private static final TAG:Ljava/lang/String; = "BluetoothFTP"


# instance fields
.field private final mService:Lcom/broadcom/bt/service/ftp/IBluetoothFTP;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/broadcom/bt/service/ftp/IBluetoothFTP;Landroid/content/ServiceConnection;)V
    .registers 4
    .parameter "ctx"
    .parameter "service"
    .parameter "appServiceConn"

    .prologue
    .line 89
    invoke-direct {p0, p1, p3}, Lcom/broadcom/bt/service/framework/BaseProxy;-><init>(Landroid/content/Context;Landroid/content/ServiceConnection;)V

    .line 90
    iput-object p2, p0, Lcom/broadcom/bt/service/ftp/BluetoothFTP;->mService:Lcom/broadcom/bt/service/ftp/IBluetoothFTP;

    .line 91
    return-void
.end method

.method public constructor <init>(Lcom/broadcom/bt/service/ftp/IBluetoothFTP;)V
    .registers 2
    .parameter "service"

    .prologue
    .line 99
    invoke-direct {p0}, Lcom/broadcom/bt/service/framework/BaseProxy;-><init>()V

    .line 101
    iput-object p1, p0, Lcom/broadcom/bt/service/ftp/BluetoothFTP;->mService:Lcom/broadcom/bt/service/ftp/IBluetoothFTP;

    .line 103
    return-void
.end method


# virtual methods
.method protected finalize()V
    .registers 1

    .prologue
    .line 187
    invoke-super {p0}, Lcom/broadcom/bt/service/framework/BaseProxy;->finalize()V

    .line 188
    return-void
.end method

.method public ftpServerAccessRsp(BZLjava/lang/String;)V
    .registers 7
    .parameter "op_code"
    .parameter "access"
    .parameter "filename"

    .prologue
    .line 169
    :try_start_0
    iget-object v1, p0, Lcom/broadcom/bt/service/ftp/BluetoothFTP;->mService:Lcom/broadcom/bt/service/ftp/IBluetoothFTP;

    invoke-interface {v1, p1, p2, p3}, Lcom/broadcom/bt/service/ftp/IBluetoothFTP;->ftpServerAccessRsp(BZLjava/lang/String;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 173
    :goto_5
    return-void

    .line 170
    :catch_6
    move-exception v1

    move-object v0, v1

    .line 171
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "BluetoothFTP"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5
.end method

.method public ftpServerAuthenRsp(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .parameter "password"
    .parameter "userId"

    .prologue
    .line 153
    :try_start_0
    iget-object v1, p0, Lcom/broadcom/bt/service/ftp/BluetoothFTP;->mService:Lcom/broadcom/bt/service/ftp/IBluetoothFTP;

    invoke-interface {v1, p1, p2}, Lcom/broadcom/bt/service/ftp/IBluetoothFTP;->ftpServerAuthenRsp(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 157
    :goto_5
    return-void

    .line 154
    :catch_6
    move-exception v1

    move-object v0, v1

    .line 155
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "BluetoothFTP"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5
.end method

.method public requiresAccessProcessing()Z
    .registers 2

    .prologue
    .line 178
    const/4 v0, 0x1

    return v0
.end method

.method public setAccess(IZLjava/lang/Object;)V
    .registers 5
    .parameter "opCode"
    .parameter "allow"
    .parameter "name"

    .prologue
    .line 183
    int-to-byte v0, p1

    check-cast p3, Ljava/lang/String;

    .end local p3
    invoke-virtual {p0, v0, p2, p3}, Lcom/broadcom/bt/service/ftp/BluetoothFTP;->ftpServerAccessRsp(BZLjava/lang/String;)V

    .line 184
    return-void
.end method
