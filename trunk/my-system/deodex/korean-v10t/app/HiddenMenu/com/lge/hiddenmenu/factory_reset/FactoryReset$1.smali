.class Lcom/lge/hiddenmenu/factory_reset/FactoryReset$1;
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
    .line 147
    iput-object p1, p0, Lcom/lge/hiddenmenu/factory_reset/FactoryReset$1;->this$0:Lcom/lge/hiddenmenu/factory_reset/FactoryReset;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 5
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 148
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/lge/hiddenmenu/factory_reset/FactoryReset$1;->this$0:Lcom/lge/hiddenmenu/factory_reset/FactoryReset;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f080107

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 151
    return-void
.end method
