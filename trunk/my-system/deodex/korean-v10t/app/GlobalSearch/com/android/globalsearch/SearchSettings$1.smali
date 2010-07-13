.class Lcom/android/globalsearch/SearchSettings$1;
.super Ljava/lang/Object;
.source "SearchSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/globalsearch/SearchSettings;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/globalsearch/SearchSettings;


# direct methods
.method constructor <init>(Lcom/android/globalsearch/SearchSettings;)V
    .registers 2
    .parameter

    .prologue
    .line 248
    iput-object p1, p0, Lcom/android/globalsearch/SearchSettings$1;->this$0:Lcom/android/globalsearch/SearchSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 4
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 250
    iget-object v0, p0, Lcom/android/globalsearch/SearchSettings$1;->this$0:Lcom/android/globalsearch/SearchSettings;

    invoke-static {v0}, Lcom/android/globalsearch/SearchSettings;->access$000(Lcom/android/globalsearch/SearchSettings;)Lcom/android/globalsearch/ShortcutRepository;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/globalsearch/ShortcutRepository;->clearHistory()V

    .line 251
    iget-object v0, p0, Lcom/android/globalsearch/SearchSettings$1;->this$0:Lcom/android/globalsearch/SearchSettings;

    invoke-static {v0}, Lcom/android/globalsearch/SearchSettings;->access$100(Lcom/android/globalsearch/SearchSettings;)V

    .line 252
    return-void
.end method
