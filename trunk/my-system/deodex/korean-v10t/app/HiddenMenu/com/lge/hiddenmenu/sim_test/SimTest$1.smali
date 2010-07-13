.class Lcom/lge/hiddenmenu/sim_test/SimTest$1;
.super Ljava/lang/Object;
.source "SimTest.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/hiddenmenu/sim_test/SimTest;->selectMenuItem(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/hiddenmenu/sim_test/SimTest;


# direct methods
.method constructor <init>(Lcom/lge/hiddenmenu/sim_test/SimTest;)V
    .registers 2
    .parameter

    .prologue
    .line 109
    iput-object p1, p0, Lcom/lge/hiddenmenu/sim_test/SimTest$1;->this$0:Lcom/lge/hiddenmenu/sim_test/SimTest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 3
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 112
    return-void
.end method
