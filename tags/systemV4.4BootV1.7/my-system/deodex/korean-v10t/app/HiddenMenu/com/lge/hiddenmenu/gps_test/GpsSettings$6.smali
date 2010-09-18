.class Lcom/lge/hiddenmenu/gps_test/GpsSettings$6;
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
    .line 156
    iput-object p1, p0, Lcom/lge/hiddenmenu/gps_test/GpsSettings$6;->this$0:Lcom/lge/hiddenmenu/gps_test/GpsSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 4
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 157
    iget-object v0, p0, Lcom/lge/hiddenmenu/gps_test/GpsSettings$6;->this$0:Lcom/lge/hiddenmenu/gps_test/GpsSettings;

    invoke-static {v0, p2}, Lcom/lge/hiddenmenu/gps_test/GpsSettings;->access$502(Lcom/lge/hiddenmenu/gps_test/GpsSettings;I)I

    .line 158
    return-void
.end method
