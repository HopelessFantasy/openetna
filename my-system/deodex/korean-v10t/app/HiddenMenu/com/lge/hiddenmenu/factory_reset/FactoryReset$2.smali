.class Lcom/lge/hiddenmenu/factory_reset/FactoryReset$2;
.super Ljava/lang/Object;
.source "FactoryReset.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/hiddenmenu/factory_reset/FactoryReset;->selectMenuItem(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/hiddenmenu/factory_reset/FactoryReset;


# direct methods
.method constructor <init>(Lcom/lge/hiddenmenu/factory_reset/FactoryReset;)V
    .registers 2
    .parameter

    .prologue
    .line 139
    iput-object p1, p0, Lcom/lge/hiddenmenu/factory_reset/FactoryReset$2;->this$0:Lcom/lge/hiddenmenu/factory_reset/FactoryReset;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 6
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 140
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 142
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "com.lge.hiddenmenu"

    const-string v2, "com.lge.hiddenmenu.factory_reset.FormatSDCard"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 143
    iget-object v1, p0, Lcom/lge/hiddenmenu/factory_reset/FactoryReset$2;->this$0:Lcom/lge/hiddenmenu/factory_reset/FactoryReset;

    invoke-virtual {v1, v0}, Lcom/lge/hiddenmenu/factory_reset/FactoryReset;->startActivity(Landroid/content/Intent;)V

    .line 144
    return-void
.end method
