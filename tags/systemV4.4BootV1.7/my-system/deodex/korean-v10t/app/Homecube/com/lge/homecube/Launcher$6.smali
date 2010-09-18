.class Lcom/lge/homecube/Launcher$6;
.super Ljava/lang/Object;
.source "Launcher.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


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
    .line 1410
    iput-object p1, p0, Lcom/lge/homecube/Launcher$6;->this$0:Lcom/lge/homecube/Launcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .registers 5
    .parameter "v"

    .prologue
    const/4 v2, 0x1

    .line 1411
    iget-object v0, p0, Lcom/lge/homecube/Launcher$6;->this$0:Lcom/lge/homecube/Launcher;

    iget-object v1, p0, Lcom/lge/homecube/Launcher$6;->this$0:Lcom/lge/homecube/Launcher;

    iget-object v1, v1, Lcom/lge/homecube/Launcher;->mTitleCommunication:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lcom/lge/homecube/Launcher;->setRenameTitle(ILjava/lang/String;)V

    .line 1412
    iget-object v0, p0, Lcom/lge/homecube/Launcher$6;->this$0:Lcom/lge/homecube/Launcher;

    invoke-virtual {v0}, Lcom/lge/homecube/Launcher;->showRenameDialogAllApps()V

    .line 1413
    return v2
.end method
