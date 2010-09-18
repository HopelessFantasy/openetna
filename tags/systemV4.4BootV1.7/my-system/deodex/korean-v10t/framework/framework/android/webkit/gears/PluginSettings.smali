.class public Landroid/webkit/gears/PluginSettings;
.super Ljava/lang/Object;
.source "PluginSettings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/webkit/gears/PluginSettings$1;,
        Landroid/webkit/gears/PluginSettings$StartDialog;,
        Landroid/webkit/gears/PluginSettings$ClickHandler;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "Gears-J-PluginSettings"


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/webkit/Plugin;)V
    .registers 4
    .parameter "plugin"

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    new-instance v0, Landroid/webkit/gears/PluginSettings$ClickHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/webkit/gears/PluginSettings$ClickHandler;-><init>(Landroid/webkit/gears/PluginSettings;Landroid/webkit/gears/PluginSettings$1;)V

    invoke-virtual {p1, v0}, Landroid/webkit/Plugin;->setClickHandler(Landroid/webkit/Plugin$PreferencesClickHandler;)V

    .line 45
    return-void
.end method

.method static synthetic access$102(Landroid/webkit/gears/PluginSettings;Landroid/content/Context;)Landroid/content/Context;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 38
    iput-object p1, p0, Landroid/webkit/gears/PluginSettings;->mContext:Landroid/content/Context;

    return-object p1
.end method

.method static synthetic access$200(Landroid/content/Context;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 38
    invoke-static {p0}, Landroid/webkit/gears/PluginSettings;->runSettingsDialog(Landroid/content/Context;)V

    return-void
.end method

.method private static native runSettingsDialog(Landroid/content/Context;)V
.end method
