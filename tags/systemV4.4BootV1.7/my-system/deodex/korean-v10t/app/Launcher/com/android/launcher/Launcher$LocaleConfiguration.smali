.class Lcom/android/launcher/Launcher$LocaleConfiguration;
.super Ljava/lang/Object;
.source "Launcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher/Launcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LocaleConfiguration"
.end annotation


# instance fields
.field public locale:Ljava/lang/String;

.field public mcc:I

.field public mnc:I


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, -0x1

    .line 302
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 304
    iput v0, p0, Lcom/android/launcher/Launcher$LocaleConfiguration;->mcc:I

    .line 305
    iput v0, p0, Lcom/android/launcher/Launcher$LocaleConfiguration;->mnc:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/launcher/Launcher$1;)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 302
    invoke-direct {p0}, Lcom/android/launcher/Launcher$LocaleConfiguration;-><init>()V

    return-void
.end method
