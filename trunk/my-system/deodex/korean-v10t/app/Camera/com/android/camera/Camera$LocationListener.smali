.class Lcom/android/camera/Camera$LocationListener;
.super Ljava/lang/Object;
.source "Camera.java"

# interfaces
.implements Landroid/location/LocationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/Camera;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LocationListener"
.end annotation


# instance fields
.field mLastLocation:Landroid/location/Location;

.field mProvider:Ljava/lang/String;

.field mValid:Z

.field final synthetic this$0:Lcom/android/camera/Camera;


# direct methods
.method public constructor <init>(Lcom/android/camera/Camera;Ljava/lang/String;)V
    .registers 5
    .parameter
    .parameter "provider"

    .prologue
    .line 290
    iput-object p1, p0, Lcom/android/camera/Camera$LocationListener;->this$0:Lcom/android/camera/Camera;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 287
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/Camera$LocationListener;->mValid:Z

    .line 291
    iput-object p2, p0, Lcom/android/camera/Camera$LocationListener;->mProvider:Ljava/lang/String;

    .line 292
    new-instance v0, Landroid/location/Location;

    iget-object v1, p0, Lcom/android/camera/Camera$LocationListener;->mProvider:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/location/Location;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/camera/Camera$LocationListener;->mLastLocation:Landroid/location/Location;

    .line 293
    return-void
.end method


# virtual methods
.method public current()Landroid/location/Location;
    .registers 2

    .prologue
    .line 332
    iget-boolean v0, p0, Lcom/android/camera/Camera$LocationListener;->mValid:Z

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/camera/Camera$LocationListener;->mLastLocation:Landroid/location/Location;

    :goto_6
    return-object v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public onLocationChanged(Landroid/location/Location;)V
    .registers 6
    .parameter "newLocation"

    .prologue
    const-wide/16 v2, 0x0

    .line 296
    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v0

    cmpl-double v0, v0, v2

    if-nez v0, :cond_13

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v0

    cmpl-double v0, v0, v2

    if-nez v0, :cond_13

    .line 308
    :goto_12
    return-void

    .line 302
    :cond_13
    iget-object v0, p0, Lcom/android/camera/Camera$LocationListener;->this$0:Lcom/android/camera/Camera;

    invoke-static {v0}, Lcom/android/camera/Camera;->access$1200(Lcom/android/camera/Camera;)Z

    move-result v0

    if-eqz v0, :cond_2f

    const-string v0, "gps"

    iget-object v1, p0, Lcom/android/camera/Camera$LocationListener;->mProvider:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 304
    iget-object v0, p0, Lcom/android/camera/Camera$LocationListener;->this$0:Lcom/android/camera/Camera;

    invoke-static {v0}, Lcom/android/camera/Camera;->access$1300(Lcom/android/camera/Camera;)Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 306
    :cond_2f
    iget-object v0, p0, Lcom/android/camera/Camera$LocationListener;->mLastLocation:Landroid/location/Location;

    invoke-virtual {v0, p1}, Landroid/location/Location;->set(Landroid/location/Location;)V

    .line 307
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/Camera$LocationListener;->mValid:Z

    goto :goto_12
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .registers 3
    .parameter "provider"

    .prologue
    .line 314
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/Camera$LocationListener;->mValid:Z

    .line 315
    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .registers 2
    .parameter "provider"

    .prologue
    .line 311
    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .registers 6
    .parameter "provider"
    .parameter "status"
    .parameter "extras"

    .prologue
    .line 318
    packed-switch p2, :pswitch_data_22

    .line 329
    :cond_3
    :goto_3
    return-void

    .line 321
    :pswitch_4
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/Camera$LocationListener;->mValid:Z

    .line 322
    iget-object v0, p0, Lcom/android/camera/Camera$LocationListener;->this$0:Lcom/android/camera/Camera;

    invoke-static {v0}, Lcom/android/camera/Camera;->access$1200(Lcom/android/camera/Camera;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "gps"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 324
    iget-object v0, p0, Lcom/android/camera/Camera$LocationListener;->this$0:Lcom/android/camera/Camera;

    invoke-static {v0}, Lcom/android/camera/Camera;->access$1300(Lcom/android/camera/Camera;)Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_3

    .line 318
    :pswitch_data_22
    .packed-switch 0x0
        :pswitch_4
        :pswitch_4
    .end packed-switch
.end method
