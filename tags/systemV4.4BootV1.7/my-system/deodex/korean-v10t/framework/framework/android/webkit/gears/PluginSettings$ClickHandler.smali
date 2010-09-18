.class Landroid/webkit/gears/PluginSettings$ClickHandler;
.super Ljava/lang/Object;
.source "PluginSettings.java"

# interfaces
.implements Landroid/webkit/Plugin$PreferencesClickHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkit/gears/PluginSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ClickHandler"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/webkit/gears/PluginSettings;


# direct methods
.method private constructor <init>(Landroid/webkit/gears/PluginSettings;)V
    .registers 2
    .parameter

    .prologue
    .line 51
    iput-object p1, p0, Landroid/webkit/gears/PluginSettings$ClickHandler;->this$0:Landroid/webkit/gears/PluginSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/webkit/gears/PluginSettings;Landroid/webkit/gears/PluginSettings$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 51
    invoke-direct {p0, p1}, Landroid/webkit/gears/PluginSettings$ClickHandler;-><init>(Landroid/webkit/gears/PluginSettings;)V

    return-void
.end method


# virtual methods
.method public handleClickEvent(Landroid/content/Context;)V
    .registers 5
    .parameter "context"

    .prologue
    .line 53
    iget-object v1, p0, Landroid/webkit/gears/PluginSettings$ClickHandler;->this$0:Landroid/webkit/gears/PluginSettings;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/webkit/gears/PluginSettings;->access$102(Landroid/webkit/gears/PluginSettings;Landroid/content/Context;)Landroid/content/Context;

    .line 54
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Landroid/webkit/gears/PluginSettings$StartDialog;

    iget-object v2, p0, Landroid/webkit/gears/PluginSettings$ClickHandler;->this$0:Landroid/webkit/gears/PluginSettings;

    invoke-direct {v1, v2, p1}, Landroid/webkit/gears/PluginSettings$StartDialog;-><init>(Landroid/webkit/gears/PluginSettings;Landroid/content/Context;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 55
    .local v0, startDialog:Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 56
    return-void
.end method
