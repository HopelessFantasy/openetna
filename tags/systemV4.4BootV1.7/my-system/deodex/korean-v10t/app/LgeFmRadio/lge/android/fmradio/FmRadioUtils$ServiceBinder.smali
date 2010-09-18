.class Llge/android/fmradio/FmRadioUtils$ServiceBinder;
.super Ljava/lang/Object;
.source "FmRadioUtils.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llge/android/fmradio/FmRadioUtils;
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
    .line 335
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 336
    iput-object p1, p0, Llge/android/fmradio/FmRadioUtils$ServiceBinder;->mCallback:Landroid/content/ServiceConnection;

    .line 337
    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 4
    .parameter "className"
    .parameter "service"

    .prologue
    .line 340
    invoke-static {p2}, Llge/android/fmradio/IFmRadioControlService$Stub;->asInterface(Landroid/os/IBinder;)Llge/android/fmradio/IFmRadioControlService;

    move-result-object v0

    sput-object v0, Llge/android/fmradio/FmRadioUtils;->sService:Llge/android/fmradio/IFmRadioControlService;

    .line 342
    iget-object v0, p0, Llge/android/fmradio/FmRadioUtils$ServiceBinder;->mCallback:Landroid/content/ServiceConnection;

    if-eqz v0, :cond_f

    .line 343
    iget-object v0, p0, Llge/android/fmradio/FmRadioUtils$ServiceBinder;->mCallback:Landroid/content/ServiceConnection;

    invoke-interface {v0, p1, p2}, Landroid/content/ServiceConnection;->onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V

    .line 345
    :cond_f
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 3
    .parameter "className"

    .prologue
    .line 348
    iget-object v0, p0, Llge/android/fmradio/FmRadioUtils$ServiceBinder;->mCallback:Landroid/content/ServiceConnection;

    if-eqz v0, :cond_9

    .line 349
    iget-object v0, p0, Llge/android/fmradio/FmRadioUtils$ServiceBinder;->mCallback:Landroid/content/ServiceConnection;

    invoke-interface {v0, p1}, Landroid/content/ServiceConnection;->onServiceDisconnected(Landroid/content/ComponentName;)V

    .line 351
    :cond_9
    const/4 v0, 0x0

    sput-object v0, Llge/android/fmradio/FmRadioUtils;->sService:Llge/android/fmradio/IFmRadioControlService;

    .line 352
    return-void
.end method
