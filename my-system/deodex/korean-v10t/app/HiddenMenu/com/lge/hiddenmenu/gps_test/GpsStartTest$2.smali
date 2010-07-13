.class Lcom/lge/hiddenmenu/gps_test/GpsStartTest$2;
.super Ljava/lang/Object;
.source "GpsStartTest.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/hiddenmenu/gps_test/GpsStartTest;->checkGpsSetting()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/hiddenmenu/gps_test/GpsStartTest;


# direct methods
.method constructor <init>(Lcom/lge/hiddenmenu/gps_test/GpsStartTest;)V
    .registers 2
    .parameter

    .prologue
    .line 145
    iput-object p1, p0, Lcom/lge/hiddenmenu/gps_test/GpsStartTest$2;->this$0:Lcom/lge/hiddenmenu/gps_test/GpsStartTest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 6
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 146
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 147
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "com.android.settings"

    const-string v2, "com.android.settings.SecuritySettings"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 149
    iget-object v1, p0, Lcom/lge/hiddenmenu/gps_test/GpsStartTest$2;->this$0:Lcom/lge/hiddenmenu/gps_test/GpsStartTest;

    invoke-virtual {v1, v0}, Lcom/lge/hiddenmenu/gps_test/GpsStartTest;->startActivity(Landroid/content/Intent;)V

    .line 150
    return-void
.end method
