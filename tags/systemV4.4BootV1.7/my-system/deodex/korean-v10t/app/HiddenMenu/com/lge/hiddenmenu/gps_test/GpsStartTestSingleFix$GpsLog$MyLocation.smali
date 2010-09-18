.class public Lcom/lge/hiddenmenu/gps_test/GpsStartTestSingleFix$GpsLog$MyLocation;
.super Ljava/lang/Object;
.source "GpsStartTestSingleFix.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/hiddenmenu/gps_test/GpsStartTestSingleFix$GpsLog;
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

.field final synthetic this$1:Lcom/lge/hiddenmenu/gps_test/GpsStartTestSingleFix$GpsLog;


# direct methods
.method public constructor <init>(Lcom/lge/hiddenmenu/gps_test/GpsStartTestSingleFix$GpsLog;)V
    .registers 7
    .parameter

    .prologue
    const/4 v4, 0x0

    const-wide/16 v2, 0x0

    .line 682
    iput-object p1, p0, Lcom/lge/hiddenmenu/gps_test/GpsStartTestSingleFix$GpsLog$MyLocation;->this$1:Lcom/lge/hiddenmenu/gps_test/GpsStartTestSingleFix$GpsLog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 683
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/lge/hiddenmenu/gps_test/GpsStartTestSingleFix$GpsLog$MyLocation;->mTime:J

    .line 684
    iput-wide v2, p0, Lcom/lge/hiddenmenu/gps_test/GpsStartTestSingleFix$GpsLog$MyLocation;->mLatitude:D

    .line 685
    iput-wide v2, p0, Lcom/lge/hiddenmenu/gps_test/GpsStartTestSingleFix$GpsLog$MyLocation;->mLongitude:D

    .line 686
    iput-wide v2, p0, Lcom/lge/hiddenmenu/gps_test/GpsStartTestSingleFix$GpsLog$MyLocation;->mAltitude:D

    .line 687
    iput v4, p0, Lcom/lge/hiddenmenu/gps_test/GpsStartTestSingleFix$GpsLog$MyLocation;->mSpeed:F

    .line 688
    iput v4, p0, Lcom/lge/hiddenmenu/gps_test/GpsStartTestSingleFix$GpsLog$MyLocation;->mBearing:F

    .line 689
    iput v4, p0, Lcom/lge/hiddenmenu/gps_test/GpsStartTestSingleFix$GpsLog$MyLocation;->mAccuracy:F

    return-void
.end method


# virtual methods
.method public getAccuracy()F
    .registers 2

    .prologue
    .line 739
    iget v0, p0, Lcom/lge/hiddenmenu/gps_test/GpsStartTestSingleFix$GpsLog$MyLocation;->mAccuracy:F

    return v0
.end method

.method public getAltitude()D
    .registers 3

    .prologue
    .line 727
    iget-wide v0, p0, Lcom/lge/hiddenmenu/gps_test/GpsStartTestSingleFix$GpsLog$MyLocation;->mAltitude:D

    return-wide v0
.end method

.method public getBearing()F
    .registers 2

    .prologue
    .line 735
    iget v0, p0, Lcom/lge/hiddenmenu/gps_test/GpsStartTestSingleFix$GpsLog$MyLocation;->mBearing:F

    return v0
.end method

.method public getLatitude()D
    .registers 3

    .prologue
    .line 719
    iget-wide v0, p0, Lcom/lge/hiddenmenu/gps_test/GpsStartTestSingleFix$GpsLog$MyLocation;->mLatitude:D

    return-wide v0
.end method

.method public getLongitude()D
    .registers 3

    .prologue
    .line 723
    iget-wide v0, p0, Lcom/lge/hiddenmenu/gps_test/GpsStartTestSingleFix$GpsLog$MyLocation;->mLongitude:D

    return-wide v0
.end method

.method public getSpeed()F
    .registers 2

    .prologue
    .line 731
    iget v0, p0, Lcom/lge/hiddenmenu/gps_test/GpsStartTestSingleFix$GpsLog$MyLocation;->mSpeed:F

    return v0
.end method

.method public getTime()J
    .registers 3

    .prologue
    .line 715
    iget-wide v0, p0, Lcom/lge/hiddenmenu/gps_test/GpsStartTestSingleFix$GpsLog$MyLocation;->mTime:J

    return-wide v0
.end method

.method init()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    const-wide/16 v2, 0x0

    .line 693
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/lge/hiddenmenu/gps_test/GpsStartTestSingleFix$GpsLog$MyLocation;->mTime:J

    .line 694
    iput-wide v2, p0, Lcom/lge/hiddenmenu/gps_test/GpsStartTestSingleFix$GpsLog$MyLocation;->mLatitude:D

    .line 695
    iput-wide v2, p0, Lcom/lge/hiddenmenu/gps_test/GpsStartTestSingleFix$GpsLog$MyLocation;->mLongitude:D

    .line 696
    iput-wide v2, p0, Lcom/lge/hiddenmenu/gps_test/GpsStartTestSingleFix$GpsLog$MyLocation;->mAltitude:D

    .line 697
    iput v4, p0, Lcom/lge/hiddenmenu/gps_test/GpsStartTestSingleFix$GpsLog$MyLocation;->mSpeed:F

    .line 698
    iput v4, p0, Lcom/lge/hiddenmenu/gps_test/GpsStartTestSingleFix$GpsLog$MyLocation;->mBearing:F

    .line 699
    iput v4, p0, Lcom/lge/hiddenmenu/gps_test/GpsStartTestSingleFix$GpsLog$MyLocation;->mAccuracy:F

    .line 700
    return-void
.end method

.method public set(Landroid/location/Location;)V
    .registers 4
    .parameter "l"

    .prologue
    .line 703
    invoke-virtual {p1}, Landroid/location/Location;->getTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/lge/hiddenmenu/gps_test/GpsStartTestSingleFix$GpsLog$MyLocation;->mTime:J

    .line 704
    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/lge/hiddenmenu/gps_test/GpsStartTestSingleFix$GpsLog$MyLocation;->mLatitude:D

    .line 705
    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/lge/hiddenmenu/gps_test/GpsStartTestSingleFix$GpsLog$MyLocation;->mLongitude:D

    .line 706
    invoke-virtual {p1}, Landroid/location/Location;->getAltitude()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/lge/hiddenmenu/gps_test/GpsStartTestSingleFix$GpsLog$MyLocation;->mAltitude:D

    .line 707
    invoke-virtual {p1}, Landroid/location/Location;->getSpeed()F

    move-result v0

    iput v0, p0, Lcom/lge/hiddenmenu/gps_test/GpsStartTestSingleFix$GpsLog$MyLocation;->mSpeed:F

    .line 708
    invoke-virtual {p1}, Landroid/location/Location;->getBearing()F

    move-result v0

    iput v0, p0, Lcom/lge/hiddenmenu/gps_test/GpsStartTestSingleFix$GpsLog$MyLocation;->mBearing:F

    .line 709
    invoke-virtual {p1}, Landroid/location/Location;->getAccuracy()F

    move-result v0

    iput v0, p0, Lcom/lge/hiddenmenu/gps_test/GpsStartTestSingleFix$GpsLog$MyLocation;->mAccuracy:F

    .line 712
    return-void
.end method
