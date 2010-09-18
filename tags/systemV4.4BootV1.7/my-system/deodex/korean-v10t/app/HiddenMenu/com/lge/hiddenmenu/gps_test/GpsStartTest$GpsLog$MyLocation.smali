.class public Lcom/lge/hiddenmenu/gps_test/GpsStartTest$GpsLog$MyLocation;
.super Ljava/lang/Object;
.source "GpsStartTest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/hiddenmenu/gps_test/GpsStartTest$GpsLog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MyLocation"
.end annotation


# instance fields
.field private mAccuracy:F

.field private mAltitude:D

.field private mBearing:F

.field private mLatitude:D

.field private mLongitude:D

.field private mSpeed:F

.field private mTime:J

.field final synthetic this$1:Lcom/lge/hiddenmenu/gps_test/GpsStartTest$GpsLog;


# direct methods
.method public constructor <init>(Lcom/lge/hiddenmenu/gps_test/GpsStartTest$GpsLog;)V
    .registers 7
    .parameter

    .prologue
    const/4 v4, 0x0

    const-wide/16 v2, 0x0

    .line 634
    iput-object p1, p0, Lcom/lge/hiddenmenu/gps_test/GpsStartTest$GpsLog$MyLocation;->this$1:Lcom/lge/hiddenmenu/gps_test/GpsStartTest$GpsLog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 635
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/lge/hiddenmenu/gps_test/GpsStartTest$GpsLog$MyLocation;->mTime:J

    .line 636
    iput-wide v2, p0, Lcom/lge/hiddenmenu/gps_test/GpsStartTest$GpsLog$MyLocation;->mLatitude:D

    .line 637
    iput-wide v2, p0, Lcom/lge/hiddenmenu/gps_test/GpsStartTest$GpsLog$MyLocation;->mLongitude:D

    .line 638
    iput-wide v2, p0, Lcom/lge/hiddenmenu/gps_test/GpsStartTest$GpsLog$MyLocation;->mAltitude:D

    .line 639
    iput v4, p0, Lcom/lge/hiddenmenu/gps_test/GpsStartTest$GpsLog$MyLocation;->mSpeed:F

    .line 640
    iput v4, p0, Lcom/lge/hiddenmenu/gps_test/GpsStartTest$GpsLog$MyLocation;->mBearing:F

    .line 641
    iput v4, p0, Lcom/lge/hiddenmenu/gps_test/GpsStartTest$GpsLog$MyLocation;->mAccuracy:F

    return-void
.end method


# virtual methods
.method public getAccuracy()F
    .registers 2

    .prologue
    .line 681
    iget v0, p0, Lcom/lge/hiddenmenu/gps_test/GpsStartTest$GpsLog$MyLocation;->mAccuracy:F

    return v0
.end method

.method public getAltitude()D
    .registers 3

    .prologue
    .line 669
    iget-wide v0, p0, Lcom/lge/hiddenmenu/gps_test/GpsStartTest$GpsLog$MyLocation;->mAltitude:D

    return-wide v0
.end method

.method public getBearing()F
    .registers 2

    .prologue
    .line 677
    iget v0, p0, Lcom/lge/hiddenmenu/gps_test/GpsStartTest$GpsLog$MyLocation;->mBearing:F

    return v0
.end method

.method public getLatitude()D
    .registers 3

    .prologue
    .line 661
    iget-wide v0, p0, Lcom/lge/hiddenmenu/gps_test/GpsStartTest$GpsLog$MyLocation;->mLatitude:D

    return-wide v0
.end method

.method public getLongitude()D
    .registers 3

    .prologue
    .line 665
    iget-wide v0, p0, Lcom/lge/hiddenmenu/gps_test/GpsStartTest$GpsLog$MyLocation;->mLongitude:D

    return-wide v0
.end method

.method public getSpeed()F
    .registers 2

    .prologue
    .line 673
    iget v0, p0, Lcom/lge/hiddenmenu/gps_test/GpsStartTest$GpsLog$MyLocation;->mSpeed:F

    return v0
.end method

.method public getTime()J
    .registers 3

    .prologue
    .line 657
    iget-wide v0, p0, Lcom/lge/hiddenmenu/gps_test/GpsStartTest$GpsLog$MyLocation;->mTime:J

    return-wide v0
.end method

.method public set(Landroid/location/Location;)V
    .registers 4
    .parameter "l"

    .prologue
    .line 645
    invoke-virtual {p1}, Landroid/location/Location;->getTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/lge/hiddenmenu/gps_test/GpsStartTest$GpsLog$MyLocation;->mTime:J

    .line 646
    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/lge/hiddenmenu/gps_test/GpsStartTest$GpsLog$MyLocation;->mLatitude:D

    .line 647
    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/lge/hiddenmenu/gps_test/GpsStartTest$GpsLog$MyLocation;->mLongitude:D

    .line 648
    invoke-virtual {p1}, Landroid/location/Location;->getAltitude()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/lge/hiddenmenu/gps_test/GpsStartTest$GpsLog$MyLocation;->mAltitude:D

    .line 649
    invoke-virtual {p1}, Landroid/location/Location;->getSpeed()F

    move-result v0

    iput v0, p0, Lcom/lge/hiddenmenu/gps_test/GpsStartTest$GpsLog$MyLocation;->mSpeed:F

    .line 650
    invoke-virtual {p1}, Landroid/location/Location;->getBearing()F

    move-result v0

    iput v0, p0, Lcom/lge/hiddenmenu/gps_test/GpsStartTest$GpsLog$MyLocation;->mBearing:F

    .line 651
    invoke-virtual {p1}, Landroid/location/Location;->getAccuracy()F

    move-result v0

    iput v0, p0, Lcom/lge/hiddenmenu/gps_test/GpsStartTest$GpsLog$MyLocation;->mAccuracy:F

    .line 654
    return-void
.end method
