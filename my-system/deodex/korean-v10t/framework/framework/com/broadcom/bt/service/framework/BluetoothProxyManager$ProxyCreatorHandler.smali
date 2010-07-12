.class Lcom/broadcom/bt/service/framework/BluetoothProxyManager$ProxyCreatorHandler;
.super Ljava/lang/Object;
.source "BluetoothProxyManager.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/broadcom/bt/service/framework/BluetoothProxyManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ProxyCreatorHandler"
.end annotation


# static fields
.field public static final BPP_PROXY:I = 0x2

.field public static final DG_PROXY:I = 0x5

.field public static final FTP_PROXY:I = 0x4

.field public static final OPP_PROXY:I = 0x1

.field public static final PBAP_PROXY:I = 0x3


# instance fields
.field mCtx:Landroid/content/Context;

.field mListener:Lcom/broadcom/bt/service/framework/IBluetoothProxyCallback;

.field mProxyClass:I


# direct methods
.method public constructor <init>(Landroid/content/Context;ILcom/broadcom/bt/service/framework/IBluetoothProxyCallback;)V
    .registers 4
    .parameter "ctx"
    .parameter "proxyClass"
    .parameter "proxyListener"

    .prologue
    .line 245
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 246
    iput-object p3, p0, Lcom/broadcom/bt/service/framework/BluetoothProxyManager$ProxyCreatorHandler;->mListener:Lcom/broadcom/bt/service/framework/IBluetoothProxyCallback;

    .line 247
    iput p2, p0, Lcom/broadcom/bt/service/framework/BluetoothProxyManager$ProxyCreatorHandler;->mProxyClass:I

    .line 248
    iput-object p1, p0, Lcom/broadcom/bt/service/framework/BluetoothProxyManager$ProxyCreatorHandler;->mCtx:Landroid/content/Context;

    .line 249
    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 11
    .parameter "name"
    .parameter "service"

    .prologue
    .line 253
    iget v5, p0, Lcom/broadcom/bt/service/framework/BluetoothProxyManager$ProxyCreatorHandler;->mProxyClass:I

    packed-switch v5, :pswitch_data_66

    .line 298
    :cond_5
    :goto_5
    return-void

    .line 255
    :pswitch_6
    invoke-static {p2}, Lcom/broadcom/bt/service/opp/IOppService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/broadcom/bt/service/opp/IOppService;

    move-result-object v3

    .line 256
    .local v3, oppService:Lcom/broadcom/bt/service/opp/IOppService;
    if-eqz v3, :cond_5

    .line 257
    iget-object v5, p0, Lcom/broadcom/bt/service/framework/BluetoothProxyManager$ProxyCreatorHandler;->mListener:Lcom/broadcom/bt/service/framework/IBluetoothProxyCallback;

    new-instance v6, Lcom/broadcom/bt/service/opp/BluetoothOPP;

    iget-object v7, p0, Lcom/broadcom/bt/service/framework/BluetoothProxyManager$ProxyCreatorHandler;->mCtx:Landroid/content/Context;

    invoke-direct {v6, v7, v3, p0}, Lcom/broadcom/bt/service/opp/BluetoothOPP;-><init>(Landroid/content/Context;Lcom/broadcom/bt/service/opp/IOppService;Landroid/content/ServiceConnection;)V

    invoke-interface {v5, v6}, Lcom/broadcom/bt/service/framework/IBluetoothProxyCallback;->onProxyAvailable(Ljava/lang/Object;)V

    goto :goto_5

    .line 263
    .end local v3           #oppService:Lcom/broadcom/bt/service/opp/IOppService;
    :pswitch_19
    invoke-static {p2}, Lcom/broadcom/bt/service/bpp/IBluetoothPrinterService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/broadcom/bt/service/bpp/IBluetoothPrinterService;

    move-result-object v0

    .line 265
    .local v0, bppService:Lcom/broadcom/bt/service/bpp/IBluetoothPrinterService;
    if-eqz v0, :cond_5

    .line 266
    iget-object v5, p0, Lcom/broadcom/bt/service/framework/BluetoothProxyManager$ProxyCreatorHandler;->mListener:Lcom/broadcom/bt/service/framework/IBluetoothProxyCallback;

    new-instance v6, Lcom/broadcom/bt/service/bpp/BluetoothPrinter;

    iget-object v7, p0, Lcom/broadcom/bt/service/framework/BluetoothProxyManager$ProxyCreatorHandler;->mCtx:Landroid/content/Context;

    invoke-direct {v6, v7, v0, p0}, Lcom/broadcom/bt/service/bpp/BluetoothPrinter;-><init>(Landroid/content/Context;Lcom/broadcom/bt/service/bpp/IBluetoothPrinterService;Landroid/content/ServiceConnection;)V

    invoke-interface {v5, v6}, Lcom/broadcom/bt/service/framework/IBluetoothProxyCallback;->onProxyAvailable(Ljava/lang/Object;)V

    goto :goto_5

    .line 271
    .end local v0           #bppService:Lcom/broadcom/bt/service/bpp/IBluetoothPrinterService;
    :pswitch_2c
    invoke-static {p2}, Lcom/broadcom/bt/service/pbap/IBluetoothPBAP$Stub;->asInterface(Landroid/os/IBinder;)Lcom/broadcom/bt/service/pbap/IBluetoothPBAP;

    move-result-object v4

    .line 273
    .local v4, pbapService:Lcom/broadcom/bt/service/pbap/IBluetoothPBAP;
    if-eqz v4, :cond_5

    .line 274
    iget-object v5, p0, Lcom/broadcom/bt/service/framework/BluetoothProxyManager$ProxyCreatorHandler;->mListener:Lcom/broadcom/bt/service/framework/IBluetoothProxyCallback;

    new-instance v6, Lcom/broadcom/bt/service/pbap/BluetoothPBAP;

    iget-object v7, p0, Lcom/broadcom/bt/service/framework/BluetoothProxyManager$ProxyCreatorHandler;->mCtx:Landroid/content/Context;

    invoke-direct {v6, v7, v4, p0}, Lcom/broadcom/bt/service/pbap/BluetoothPBAP;-><init>(Landroid/content/Context;Lcom/broadcom/bt/service/pbap/IBluetoothPBAP;Landroid/content/ServiceConnection;)V

    invoke-interface {v5, v6}, Lcom/broadcom/bt/service/framework/IBluetoothProxyCallback;->onProxyAvailable(Ljava/lang/Object;)V

    goto :goto_5

    .line 280
    .end local v4           #pbapService:Lcom/broadcom/bt/service/pbap/IBluetoothPBAP;
    :pswitch_3f
    invoke-static {p2}, Lcom/broadcom/bt/service/ftp/IBluetoothFTP$Stub;->asInterface(Landroid/os/IBinder;)Lcom/broadcom/bt/service/ftp/IBluetoothFTP;

    move-result-object v2

    .line 282
    .local v2, ftpService:Lcom/broadcom/bt/service/ftp/IBluetoothFTP;
    if-eqz v2, :cond_5

    .line 283
    iget-object v5, p0, Lcom/broadcom/bt/service/framework/BluetoothProxyManager$ProxyCreatorHandler;->mListener:Lcom/broadcom/bt/service/framework/IBluetoothProxyCallback;

    new-instance v6, Lcom/broadcom/bt/service/ftp/BluetoothFTP;

    iget-object v7, p0, Lcom/broadcom/bt/service/framework/BluetoothProxyManager$ProxyCreatorHandler;->mCtx:Landroid/content/Context;

    invoke-direct {v6, v7, v2, p0}, Lcom/broadcom/bt/service/ftp/BluetoothFTP;-><init>(Landroid/content/Context;Lcom/broadcom/bt/service/ftp/IBluetoothFTP;Landroid/content/ServiceConnection;)V

    invoke-interface {v5, v6}, Lcom/broadcom/bt/service/framework/IBluetoothProxyCallback;->onProxyAvailable(Ljava/lang/Object;)V

    goto :goto_5

    .line 289
    .end local v2           #ftpService:Lcom/broadcom/bt/service/ftp/IBluetoothFTP;
    :pswitch_52
    invoke-static {p2}, Lcom/broadcom/bt/service/dg/IBluetoothDataGateway$Stub;->asInterface(Landroid/os/IBinder;)Lcom/broadcom/bt/service/dg/IBluetoothDataGateway;

    move-result-object v1

    .line 291
    .local v1, dgService:Lcom/broadcom/bt/service/dg/IBluetoothDataGateway;
    if-eqz v1, :cond_5

    .line 292
    iget-object v5, p0, Lcom/broadcom/bt/service/framework/BluetoothProxyManager$ProxyCreatorHandler;->mListener:Lcom/broadcom/bt/service/framework/IBluetoothProxyCallback;

    new-instance v6, Lcom/broadcom/bt/service/dg/BluetoothDataGateway;

    iget-object v7, p0, Lcom/broadcom/bt/service/framework/BluetoothProxyManager$ProxyCreatorHandler;->mCtx:Landroid/content/Context;

    invoke-direct {v6, v7, v1, p0}, Lcom/broadcom/bt/service/dg/BluetoothDataGateway;-><init>(Landroid/content/Context;Lcom/broadcom/bt/service/dg/IBluetoothDataGateway;Landroid/content/ServiceConnection;)V

    invoke-interface {v5, v6}, Lcom/broadcom/bt/service/framework/IBluetoothProxyCallback;->onProxyAvailable(Ljava/lang/Object;)V

    goto :goto_5

    .line 253
    nop

    :pswitch_data_66
    .packed-switch 0x1
        :pswitch_6
        :pswitch_19
        :pswitch_2c
        :pswitch_3f
        :pswitch_52
    .end packed-switch
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 2
    .parameter "name"

    .prologue
    .line 302
    return-void
.end method
