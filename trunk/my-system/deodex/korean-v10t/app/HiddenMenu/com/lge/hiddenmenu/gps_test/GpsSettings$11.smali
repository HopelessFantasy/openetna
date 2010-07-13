.class Lcom/lge/hiddenmenu/gps_test/GpsSettings$11;
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
    .line 206
    iput-object p1, p0, Lcom/lge/hiddenmenu/gps_test/GpsSettings$11;->this$0:Lcom/lge/hiddenmenu/gps_test/GpsSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 7
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    const-string v3, ""

    .line 207
    iget-object v0, p0, Lcom/lge/hiddenmenu/gps_test/GpsSettings$11;->this$0:Lcom/lge/hiddenmenu/gps_test/GpsSettings;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/hiddenmenu/gps_test/GpsSettings$11;->this$0:Lcom/lge/hiddenmenu/gps_test/GpsSettings;

    invoke-static {v2}, Lcom/lge/hiddenmenu/gps_test/GpsSettings;->access$900(Lcom/lge/hiddenmenu/gps_test/GpsSettings;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/hiddenmenu/gps_test/GpsSettings;->access$802(Lcom/lge/hiddenmenu/gps_test/GpsSettings;Ljava/lang/String;)Ljava/lang/String;

    .line 209
    :try_start_24
    iget-object v0, p0, Lcom/lge/hiddenmenu/gps_test/GpsSettings$11;->this$0:Lcom/lge/hiddenmenu/gps_test/GpsSettings;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/hiddenmenu/gps_test/GpsSettings$11;->this$0:Lcom/lge/hiddenmenu/gps_test/GpsSettings;

    invoke-static {v2}, Lcom/lge/hiddenmenu/gps_test/GpsSettings;->access$1100(Lcom/lge/hiddenmenu/gps_test/GpsSettings;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/lge/hiddenmenu/gps_test/GpsSettings;->access$1002(Lcom/lge/hiddenmenu/gps_test/GpsSettings;I)I
    :try_end_4a
    .catch Ljava/lang/NumberFormatException; {:try_start_24 .. :try_end_4a} :catch_56

    .line 211
    :goto_4a
    iget-object v0, p0, Lcom/lge/hiddenmenu/gps_test/GpsSettings$11;->this$0:Lcom/lge/hiddenmenu/gps_test/GpsSettings;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/lge/hiddenmenu/gps_test/GpsSettings;->access$602(Lcom/lge/hiddenmenu/gps_test/GpsSettings;I)I

    .line 212
    iget-object v0, p0, Lcom/lge/hiddenmenu/gps_test/GpsSettings$11;->this$0:Lcom/lge/hiddenmenu/gps_test/GpsSettings;

    invoke-static {v0}, Lcom/lge/hiddenmenu/gps_test/GpsSettings;->access$400(Lcom/lge/hiddenmenu/gps_test/GpsSettings;)V

    .line 213
    return-void

    .line 210
    :catch_56
    move-exception v0

    goto :goto_4a
.end method
