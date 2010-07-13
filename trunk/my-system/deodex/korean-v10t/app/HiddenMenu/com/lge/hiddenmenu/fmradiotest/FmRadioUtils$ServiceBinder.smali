.class Lcom/lge/hiddenmenu/fmradiotest/FmRadioUtils$ServiceBinder;
.super Ljava/lang/Object;
.source "FmRadioUtils.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/hiddenmenu/fmradiotest/FmRadioUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ServiceBinder"
.end annotation


# instance fields
.field mCallback:Landroid/content/ServiceConnection;


# direct methods
.method constructor <init>(Landroid/content/ServiceConnection;)V
    .registers 2
    .parameter "callback"

    .prologue
    .line 270
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 271
    iput-object p1, p0, Lcom/lge/hiddenmenu/fmradiotest/FmRadioUtils$ServiceBinder;->mCallback:Landroid/content/ServiceConnection;

    .line 272
    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 4
    .parameter "className"
    .parameter "service"

    .prologue
    .line 275
    invoke-static {p2}, Lcom/lge/hiddenmenu/fmradiotest/IFmRadioControlService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/lge/hiddenmenu/fmradiotest/IFmRadioControlService;

    move-result-object v0

    sput-object v0, Lcom/lge/hiddenmenu/fmradiotest/FmRadioUtils;->sService:Lcom/lge/hiddenmenu/fmradiotest/IFmRadioControlService;

    .line 277
    iget-object v0, p0, Lcom/lge/hiddenmenu/fmradiotest/FmRadioUtils$ServiceBinder;->mCallback:Landroid/content/ServiceConnection;

    if-eqz v0, :cond_f

    .line 278
    iget-object v0, p0, Lcom/lge/hiddenmenu/fmradiotest/FmRadioUtils$ServiceBinder;->mCallback:Landroid/content/ServiceConnection;

    invoke-interface {v0, p1, p2}, Landroid/content/ServiceConnection;->onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V

    .line 280
    :cond_f
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 3
    .parameter "className"

    .prologue
    .line 283
    iget-object v0, p0, Lcom/lge/hiddenmenu/fmradiotest/FmRadioUtils$ServiceBinder;->mCallback:Landroid/content/ServiceConnection;

    if-eqz v0, :cond_9

    .line 284
    iget-object v0, p0, Lcom/lge/hiddenmenu/fmradiotest/FmRadioUtils$ServiceBinder;->mCallback:Landroid/content/ServiceConnection;

    invoke-interface {v0, p1}, Landroid/content/ServiceConnection;->onServiceDisconnected(Landroid/content/ComponentName;)V

    .line 286
    :cond_9
    const/4 v0, 0x0

    sput-object v0, Lcom/lge/hiddenmenu/fmradiotest/FmRadioUtils;->sService:Lcom/lge/hiddenmenu/fmradiotest/IFmRadioControlService;

    .line 287
    return-void
.end method
