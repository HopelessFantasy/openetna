.class Lcom/lge/hiddenmenu/gps_test/GpsSettings$5;
.super Ljava/lang/Object;
.source "GpsSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/hiddenmenu/gps_test/GpsSettings;->selectMenuItem(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/hiddenmenu/gps_test/GpsSettings;


# direct methods
.method constructor <init>(Lcom/lge/hiddenmenu/gps_test/GpsSettings;)V
    .registers 2
    .parameter

    .prologue
    .line 161
    iput-object p1, p0, Lcom/lge/hiddenmenu/gps_test/GpsSettings$5;->this$0:Lcom/lge/hiddenmenu/gps_test/GpsSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 5
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 162
    iget-object v0, p0, Lcom/lge/hiddenmenu/gps_test/GpsSettings$5;->this$0:Lcom/lge/hiddenmenu/gps_test/GpsSettings;

    iget-object v1, p0, Lcom/lge/hiddenmenu/gps_test/GpsSettings$5;->this$0:Lcom/lge/hiddenmenu/gps_test/GpsSettings;

    invoke-static {v1}, Lcom/lge/hiddenmenu/gps_test/GpsSettings;->access$500(Lcom/lge/hiddenmenu/gps_test/GpsSettings;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/lge/hiddenmenu/gps_test/GpsSettings;->access$202(Lcom/lge/hiddenmenu/gps_test/GpsSettings;I)I

    .line 163
    iget-object v0, p0, Lcom/lge/hiddenmenu/gps_test/GpsSettings$5;->this$0:Lcom/lge/hiddenmenu/gps_test/GpsSettings;

    invoke-static {v0}, Lcom/lge/hiddenmenu/gps_test/GpsSettings;->access$400(Lcom/lge/hiddenmenu/gps_test/GpsSettings;)V

    .line 164
    return-void
.end method
