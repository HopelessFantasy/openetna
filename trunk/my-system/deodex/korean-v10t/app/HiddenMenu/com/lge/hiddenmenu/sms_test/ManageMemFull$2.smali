.class Lcom/lge/hiddenmenu/sms_test/ManageMemFull$2;
.super Ljava/lang/Object;
.source "ManageMemFull.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/hiddenmenu/sms_test/ManageMemFull;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/hiddenmenu/sms_test/ManageMemFull;


# direct methods
.method constructor <init>(Lcom/lge/hiddenmenu/sms_test/ManageMemFull;)V
    .registers 2
    .parameter

    .prologue
    .line 49
    iput-object p1, p0, Lcom/lge/hiddenmenu/sms_test/ManageMemFull$2;->this$0:Lcom/lge/hiddenmenu/sms_test/ManageMemFull;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5
    .parameter "v"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/lge/hiddenmenu/sms_test/ManageMemFull$2;->this$0:Lcom/lge/hiddenmenu/sms_test/ManageMemFull;

    invoke-virtual {v0}, Lcom/lge/hiddenmenu/sms_test/ManageMemFull;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "smma_datastorage"

    const/16 v2, 0xa

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 52
    return-void
.end method
