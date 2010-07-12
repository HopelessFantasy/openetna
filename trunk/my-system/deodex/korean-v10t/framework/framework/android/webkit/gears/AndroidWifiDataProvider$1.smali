.class Landroid/webkit/gears/AndroidWifiDataProvider$1;
.super Ljava/lang/Object;
.source "AndroidWifiDataProvider.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/webkit/gears/AndroidWifiDataProvider;-><init>(Landroid/webkit/WebView;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/webkit/gears/AndroidWifiDataProvider;


# direct methods
.method constructor <init>(Landroid/webkit/gears/AndroidWifiDataProvider;)V
    .registers 2
    .parameter

    .prologue
    .line 100
    iput-object p1, p0, Landroid/webkit/gears/AndroidWifiDataProvider$1;->this$0:Landroid/webkit/gears/AndroidWifiDataProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 101
    iget-object v0, p0, Landroid/webkit/gears/AndroidWifiDataProvider$1;->this$0:Landroid/webkit/gears/AndroidWifiDataProvider;

    invoke-static {v0}, Landroid/webkit/gears/AndroidWifiDataProvider;->access$000(Landroid/webkit/gears/AndroidWifiDataProvider;)Landroid/net/wifi/WifiManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Landroid/webkit/gears/AndroidWifiDataProvider$1;->this$0:Landroid/webkit/gears/AndroidWifiDataProvider;

    invoke-static {v1}, Landroid/webkit/gears/AndroidWifiDataProvider;->access$100(Landroid/webkit/gears/AndroidWifiDataProvider;)J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Landroid/webkit/gears/AndroidWifiDataProvider;->access$200(Ljava/util/List;J)V

    .line 102
    return-void
.end method
