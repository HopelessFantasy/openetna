.class Lcom/android/internal/location/GpsLocationProvider$2;
.super Landroid/content/BroadcastReceiver;
.source "GpsLocationProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/location/GpsLocationProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/location/GpsLocationProvider;


# direct methods
.method constructor <init>(Lcom/android/internal/location/GpsLocationProvider;)V
    .registers 2
    .parameter

    .prologue
    .line 346
    iput-object p1, p0, Lcom/android/internal/location/GpsLocationProvider$2;->this$0:Lcom/android/internal/location/GpsLocationProvider;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 10
    .parameter "context"
    .parameter "intent"

    .prologue
    const-string v6, "GpsLocationProvider"

    .line 347
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 349
    .local v0, action:Ljava/lang/String;
    const-string v4, "com.android.internal.location.ALARM_WAKEUP"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1b

    .line 350
    const-string v4, "GpsLocationProvider"

    const-string v4, "ALARM_WAKEUP"

    invoke-static {v6, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 351
    iget-object v4, p0, Lcom/android/internal/location/GpsLocationProvider$2;->this$0:Lcom/android/internal/location/GpsLocationProvider;

    invoke-virtual {v4}, Lcom/android/internal/location/GpsLocationProvider;->startNavigating()V

    .line 372
    :cond_1a
    :goto_1a
    return-void

    .line 352
    :cond_1b
    const-string v4, "com.android.internal.location.ALARM_TIMEOUT"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_30

    .line 353
    const-string v4, "GpsLocationProvider"

    const-string v4, "ALARM_TIMEOUT"

    invoke-static {v6, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 354
    iget-object v4, p0, Lcom/android/internal/location/GpsLocationProvider$2;->this$0:Lcom/android/internal/location/GpsLocationProvider;

    invoke-static {v4}, Lcom/android/internal/location/GpsLocationProvider;->access$100(Lcom/android/internal/location/GpsLocationProvider;)V

    goto :goto_1a

    .line 355
    :cond_30
    const-string v4, "android.intent.action.ANY_DATA_STATE"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1a

    .line 356
    const-string v4, "state"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 357
    .local v3, state:Ljava/lang/String;
    const-string v4, "apn"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 358
    .local v1, apnName:Ljava/lang/String;
    const-string v4, "reason"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 361
    .local v2, reason:Ljava/lang/String;
    const-string v4, "GpsLocationProvider"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "state: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " apnName: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " reason: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 364
    const-string v4, "CONNECTED"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1a

    if-eqz v1, :cond_1a

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_1a

    .line 365
    iget-object v4, p0, Lcom/android/internal/location/GpsLocationProvider$2;->this$0:Lcom/android/internal/location/GpsLocationProvider;

    invoke-static {v4, v1}, Lcom/android/internal/location/GpsLocationProvider;->access$202(Lcom/android/internal/location/GpsLocationProvider;Ljava/lang/String;)Ljava/lang/String;

    .line 366
    iget-object v4, p0, Lcom/android/internal/location/GpsLocationProvider$2;->this$0:Lcom/android/internal/location/GpsLocationProvider;

    invoke-static {v4}, Lcom/android/internal/location/GpsLocationProvider;->access$300(Lcom/android/internal/location/GpsLocationProvider;)I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_1a

    .line 367
    iget-object v4, p0, Lcom/android/internal/location/GpsLocationProvider$2;->this$0:Lcom/android/internal/location/GpsLocationProvider;

    iget-object v5, p0, Lcom/android/internal/location/GpsLocationProvider$2;->this$0:Lcom/android/internal/location/GpsLocationProvider;

    invoke-static {v5}, Lcom/android/internal/location/GpsLocationProvider;->access$200(Lcom/android/internal/location/GpsLocationProvider;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/internal/location/GpsLocationProvider;->access$400(Lcom/android/internal/location/GpsLocationProvider;Ljava/lang/String;)V

    .line 368
    iget-object v4, p0, Lcom/android/internal/location/GpsLocationProvider$2;->this$0:Lcom/android/internal/location/GpsLocationProvider;

    const/4 v5, 0x2

    invoke-static {v4, v5}, Lcom/android/internal/location/GpsLocationProvider;->access$302(Lcom/android/internal/location/GpsLocationProvider;I)I

    goto/16 :goto_1a
.end method
