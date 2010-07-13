.class Lcom/lge/hiddenmenu/gps_test/GpsSettings$2;
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
    .line 131
    iput-object p1, p0, Lcom/lge/hiddenmenu/gps_test/GpsSettings$2;->this$0:Lcom/lge/hiddenmenu/gps_test/GpsSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 5
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    const/4 v1, 0x1

    .line 132
    iget-object v0, p0, Lcom/lge/hiddenmenu/gps_test/GpsSettings$2;->this$0:Lcom/lge/hiddenmenu/gps_test/GpsSettings;

    invoke-static {v0}, Lcom/lge/hiddenmenu/gps_test/GpsSettings;->access$200(Lcom/lge/hiddenmenu/gps_test/GpsSettings;)I

    move-result v0

    if-nez v0, :cond_1c

    .line 133
    iget-object v0, p0, Lcom/lge/hiddenmenu/gps_test/GpsSettings$2;->this$0:Lcom/lge/hiddenmenu/gps_test/GpsSettings;

    invoke-static {v0}, Lcom/lge/hiddenmenu/gps_test/GpsSettings;->access$300(Lcom/lge/hiddenmenu/gps_test/GpsSettings;)I

    move-result v0

    if-ne v0, v1, :cond_16

    .line 134
    iget-object v0, p0, Lcom/lge/hiddenmenu/gps_test/GpsSettings$2;->this$0:Lcom/lge/hiddenmenu/gps_test/GpsSettings;

    invoke-static {v0, v1}, Lcom/lge/hiddenmenu/gps_test/GpsSettings;->access$202(Lcom/lge/hiddenmenu/gps_test/GpsSettings;I)I

    .line 141
    :cond_16
    :goto_16
    iget-object v0, p0, Lcom/lge/hiddenmenu/gps_test/GpsSettings$2;->this$0:Lcom/lge/hiddenmenu/gps_test/GpsSettings;

    invoke-static {v0}, Lcom/lge/hiddenmenu/gps_test/GpsSettings;->access$400(Lcom/lge/hiddenmenu/gps_test/GpsSettings;)V

    .line 142
    return-void

    .line 136
    :cond_1c
    iget-object v0, p0, Lcom/lge/hiddenmenu/gps_test/GpsSettings$2;->this$0:Lcom/lge/hiddenmenu/gps_test/GpsSettings;

    invoke-static {v0}, Lcom/lge/hiddenmenu/gps_test/GpsSettings;->access$200(Lcom/lge/hiddenmenu/gps_test/GpsSettings;)I

    move-result v0

    if-eqz v0, :cond_16

    .line 137
    iget-object v0, p0, Lcom/lge/hiddenmenu/gps_test/GpsSettings$2;->this$0:Lcom/lge/hiddenmenu/gps_test/GpsSettings;

    invoke-static {v0}, Lcom/lge/hiddenmenu/gps_test/GpsSettings;->access$300(Lcom/lge/hiddenmenu/gps_test/GpsSettings;)I

    move-result v0

    if-nez v0, :cond_16

    .line 138
    iget-object v0, p0, Lcom/lge/hiddenmenu/gps_test/GpsSettings$2;->this$0:Lcom/lge/hiddenmenu/gps_test/GpsSettings;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/lge/hiddenmenu/gps_test/GpsSettings;->access$202(Lcom/lge/hiddenmenu/gps_test/GpsSettings;I)I

    goto :goto_16
.end method
