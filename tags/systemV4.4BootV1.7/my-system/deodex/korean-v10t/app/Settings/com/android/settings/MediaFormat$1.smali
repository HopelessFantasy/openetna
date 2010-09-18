.class Lcom/android/settings/MediaFormat$1;
.super Ljava/lang/Object;
.source "MediaFormat.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/MediaFormat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/MediaFormat;


# direct methods
.method constructor <init>(Lcom/android/settings/MediaFormat;)V
    .registers 2
    .parameter

    .prologue
    .line 62
    iput-object p1, p0, Lcom/android/settings/MediaFormat$1;->this$0:Lcom/android/settings/MediaFormat;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 6
    .parameter "v"

    .prologue
    const-string v3, "MediaFormat"

    .line 66
    const-string v2, "ro.monkey"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_f

    .line 82
    :goto_e
    return-void

    .line 69
    :cond_f
    const-string v2, "mount"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/os/IMountService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IMountService;

    move-result-object v1

    .line 71
    .local v1, service:Landroid/os/IMountService;
    if-eqz v1, :cond_36

    .line 73
    :try_start_1b
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Landroid/os/IMountService;->formatMedia(Ljava/lang/String;)V
    :try_end_26
    .catch Landroid/os/RemoteException; {:try_start_1b .. :try_end_26} :catch_2c

    .line 81
    :goto_26
    iget-object v2, p0, Lcom/android/settings/MediaFormat$1;->this$0:Lcom/android/settings/MediaFormat;

    invoke-virtual {v2}, Lcom/android/settings/MediaFormat;->finish()V

    goto :goto_e

    .line 74
    :catch_2c
    move-exception v2

    move-object v0, v2

    .line 76
    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "MediaFormat"

    const-string v2, "Unable to invoke IMountService.formatMedia()"

    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_26

    .line 79
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_36
    const-string v2, "MediaFormat"

    const-string v2, "Unable to locate IMountService"

    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_26
.end method
