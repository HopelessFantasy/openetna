.class Lcom/lge/hiddenmenu/factory_reset/FactoryReset$6;
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
    .line 197
    iput-object p1, p0, Lcom/lge/hiddenmenu/factory_reset/FactoryReset$6;->this$0:Lcom/lge/hiddenmenu/factory_reset/FactoryReset;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 4
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 201
    iget-object v0, p0, Lcom/lge/hiddenmenu/factory_reset/FactoryReset$6;->this$0:Lcom/lge/hiddenmenu/factory_reset/FactoryReset;

    invoke-virtual {v0}, Lcom/lge/hiddenmenu/factory_reset/FactoryReset;->runDeleteUserdata()V

    .line 202
    return-void
.end method
