.class Lcom/lge/homecube/Launcher$4;
.super Ljava/lang/Object;
.source "Launcher.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/homecube/Launcher;->setupViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/homecube/Launcher;


# direct methods
.method constructor <init>(Lcom/lge/homecube/Launcher;)V
    .registers 2
    .parameter

    .prologue
    .line 928
    iput-object p1, p0, Lcom/lge/homecube/Launcher$4;->this$0:Lcom/lge/homecube/Launcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 6
    .parameter "v"

    .prologue
    .line 929
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 930
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "android.intent.category.LAUNCHER"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 931
    const/high16 v1, 0x1020

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 932
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.android.mms"

    const-string v3, "com.android.mms.ui.ConversationList"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 933
    iget-object v1, p0, Lcom/lge/homecube/Launcher$4;->this$0:Lcom/lge/homecube/Launcher;

    invoke-virtual {v1, v0}, Lcom/lge/homecube/Launcher;->startActivity(Landroid/content/Intent;)V

    .line 934
    return-void
.end method
