.class Ljava/util/prefs/AbstractPreferences$Lock;
.super Ljava/lang/Object;
.source "AbstractPreferences.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/prefs/AbstractPreferences;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Lock"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Ljava/util/prefs/AbstractPreferences$1;)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 103
    invoke-direct {p0}, Ljava/util/prefs/AbstractPreferences$Lock;-><init>()V

    return-void
.end method
