.class Lcom/android/internal/location/GpsLocationProvider$3$1;
.super Ljava/lang/Object;
.source "GpsLocationProvider.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/location/GpsLocationProvider$3;->sendNiResponse(II)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/internal/location/GpsLocationProvider$3;


# direct methods
.method constructor <init>(Lcom/android/internal/location/GpsLocationProvider$3;)V
    .registers 2
    .parameter

    .prologue
    .line 1399
    iput-object p1, p0, Lcom/android/internal/location/GpsLocationProvider$3$1;->this$1:Lcom/android/internal/location/GpsLocationProvider$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 1401
    :goto_0
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/location/GpsLocationProvider$3$1;->this$1:Lcom/android/internal/location/GpsLocationProvider$3;

    iget-object v1, v1, Lcom/android/internal/location/GpsLocationProvider$3;->this$0:Lcom/android/internal/location/GpsLocationProvider;

    invoke-static {v1}, Lcom/android/internal/location/GpsLocationProvider;->access$800(Lcom/android/internal/location/GpsLocationProvider;)Z

    move-result v1

    if-nez v1, :cond_16

    .line 1402
    const-wide/16 v1, 0x64

    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_f
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_f} :catch_10

    goto :goto_0

    .line 1405
    :catch_10
    move-exception v1

    move-object v0, v1

    .local v0, e:Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 1406
    .end local v0           #e:Ljava/lang/InterruptedException;
    :goto_15
    return-void

    .line 1404
    :cond_16
    :try_start_16
    iget-object v1, p0, Lcom/android/internal/location/GpsLocationProvider$3$1;->this$1:Lcom/android/internal/location/GpsLocationProvider$3;

    iget-object v1, v1, Lcom/android/internal/location/GpsLocationProvider$3;->this$0:Lcom/android/internal/location/GpsLocationProvider;

    iget-object v2, p0, Lcom/android/internal/location/GpsLocationProvider$3$1;->this$1:Lcom/android/internal/location/GpsLocationProvider$3;

    iget-object v2, v2, Lcom/android/internal/location/GpsLocationProvider$3;->this$0:Lcom/android/internal/location/GpsLocationProvider;

    invoke-static {v2}, Lcom/android/internal/location/GpsLocationProvider;->access$500(Lcom/android/internal/location/GpsLocationProvider;)I

    move-result v2

    iget-object v3, p0, Lcom/android/internal/location/GpsLocationProvider$3$1;->this$1:Lcom/android/internal/location/GpsLocationProvider$3;

    iget-object v3, v3, Lcom/android/internal/location/GpsLocationProvider$3;->this$0:Lcom/android/internal/location/GpsLocationProvider;

    invoke-static {v3}, Lcom/android/internal/location/GpsLocationProvider;->access$600(Lcom/android/internal/location/GpsLocationProvider;)I

    move-result v3

    invoke-static {v1, v2, v3}, Lcom/android/internal/location/GpsLocationProvider;->access$900(Lcom/android/internal/location/GpsLocationProvider;II)V
    :try_end_2d
    .catch Ljava/lang/InterruptedException; {:try_start_16 .. :try_end_2d} :catch_10

    goto :goto_15
.end method
