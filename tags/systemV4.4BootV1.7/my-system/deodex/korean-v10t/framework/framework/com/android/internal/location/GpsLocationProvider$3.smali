.class Lcom/android/internal/location/GpsLocationProvider$3;
.super Landroid/location/INetInitiatedListener$Stub;
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
    .line 1384
    iput-object p1, p0, Lcom/android/internal/location/GpsLocationProvider$3;->this$0:Lcom/android/internal/location/GpsLocationProvider;

    invoke-direct {p0}, Landroid/location/INetInitiatedListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public sendNiResponse(II)Z
    .registers 8
    .parameter "notificationId"
    .parameter "userResponse"

    .prologue
    .line 1388
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1389
    .local v1, extrasBuf:Ljava/lang/StringBuilder;
    const-string v2, "GpsLocationProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sendNiResponse, notifId: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", response: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1396
    iget-object v2, p0, Lcom/android/internal/location/GpsLocationProvider$3;->this$0:Lcom/android/internal/location/GpsLocationProvider;

    invoke-static {v2, p1}, Lcom/android/internal/location/GpsLocationProvider;->access$502(Lcom/android/internal/location/GpsLocationProvider;I)I

    .line 1397
    iget-object v2, p0, Lcom/android/internal/location/GpsLocationProvider$3;->this$0:Lcom/android/internal/location/GpsLocationProvider;

    invoke-static {v2, p2}, Lcom/android/internal/location/GpsLocationProvider;->access$602(Lcom/android/internal/location/GpsLocationProvider;I)I

    .line 1398
    iget-object v2, p0, Lcom/android/internal/location/GpsLocationProvider$3;->this$0:Lcom/android/internal/location/GpsLocationProvider;

    new-instance v3, Lcom/android/internal/location/GpsLocationProvider$3$1;

    invoke-direct {v3, p0}, Lcom/android/internal/location/GpsLocationProvider$3$1;-><init>(Lcom/android/internal/location/GpsLocationProvider$3;)V

    invoke-static {v2, v3}, Lcom/android/internal/location/GpsLocationProvider;->access$702(Lcom/android/internal/location/GpsLocationProvider;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    .line 1409
    :try_start_3b
    iget-object v2, p0, Lcom/android/internal/location/GpsLocationProvider$3;->this$0:Lcom/android/internal/location/GpsLocationProvider;

    new-instance v3, Ljava/lang/Thread;

    iget-object v4, p0, Lcom/android/internal/location/GpsLocationProvider$3;->this$0:Lcom/android/internal/location/GpsLocationProvider;

    invoke-static {v4}, Lcom/android/internal/location/GpsLocationProvider;->access$700(Lcom/android/internal/location/GpsLocationProvider;)Ljava/lang/Runnable;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-static {v2, v3}, Lcom/android/internal/location/GpsLocationProvider;->access$1002(Lcom/android/internal/location/GpsLocationProvider;Ljava/lang/Thread;)Ljava/lang/Thread;

    .line 1410
    iget-object v2, p0, Lcom/android/internal/location/GpsLocationProvider$3;->this$0:Lcom/android/internal/location/GpsLocationProvider;

    invoke-static {v2}, Lcom/android/internal/location/GpsLocationProvider;->access$1000(Lcom/android/internal/location/GpsLocationProvider;)Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V
    :try_end_54
    .catch Ljava/lang/Exception; {:try_start_3b .. :try_end_54} :catch_56

    .line 1414
    :goto_54
    const/4 v2, 0x1

    return v2

    .line 1411
    :catch_56
    move-exception v2

    move-object v0, v2

    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_54
.end method
