.class Landroid/app/ActivityThread$PackageInfo$ServiceDispatcher$ConnectionInfo;
.super Ljava/lang/Object;
.source "ActivityThread.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/ActivityThread$PackageInfo$ServiceDispatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ConnectionInfo"
.end annotation


# instance fields
.field binder:Landroid/os/IBinder;

.field deathMonitor:Landroid/os/IBinder$DeathRecipient;


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 897
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/app/ActivityThread$1;)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 897
    invoke-direct {p0}, Landroid/app/ActivityThread$PackageInfo$ServiceDispatcher$ConnectionInfo;-><init>()V

    return-void
.end method
