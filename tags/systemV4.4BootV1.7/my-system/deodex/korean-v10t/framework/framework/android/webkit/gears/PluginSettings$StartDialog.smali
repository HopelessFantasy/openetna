.class Landroid/webkit/gears/PluginSettings$StartDialog;
.super Ljava/lang/Object;
.source "PluginSettings.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkit/gears/PluginSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StartDialog"
.end annotation


# instance fields
.field mContext:Landroid/content/Context;

.field final synthetic this$0:Landroid/webkit/gears/PluginSettings;


# direct methods
.method public constructor <init>(Landroid/webkit/gears/PluginSettings;Landroid/content/Context;)V
    .registers 3
    .parameter
    .parameter "context"

    .prologue
    .line 68
    iput-object p1, p0, Landroid/webkit/gears/PluginSettings$StartDialog;->this$0:Landroid/webkit/gears/PluginSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    iput-object p2, p0, Landroid/webkit/gears/PluginSettings$StartDialog;->mContext:Landroid/content/Context;

    .line 70
    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 73
    iget-object v0, p0, Landroid/webkit/gears/PluginSettings$StartDialog;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/webkit/gears/PluginSettings;->access$200(Landroid/content/Context;)V

    .line 74
    return-void
.end method
