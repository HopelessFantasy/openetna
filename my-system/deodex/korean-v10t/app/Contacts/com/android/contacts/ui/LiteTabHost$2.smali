.class Lcom/android/contacts/ui/LiteTabHost$2;
.super Ljava/lang/Object;
.source "LiteTabHost.java"

# interfaces
.implements Lcom/android/contacts/ui/LiteTabWidget$OnTabSelectionChanged;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/ui/LiteTabHost;->setup()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/ui/LiteTabHost;


# direct methods
.method constructor <init>(Lcom/android/contacts/ui/LiteTabHost;)V
    .registers 2
    .parameter

    .prologue
    .line 91
    iput-object p1, p0, Lcom/android/contacts/ui/LiteTabHost$2;->this$0:Lcom/android/contacts/ui/LiteTabHost;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTabSelectionChanged(IZ)V
    .registers 5
    .parameter "tabIndex"
    .parameter "clicked"

    .prologue
    .line 92
    iget-object v0, p0, Lcom/android/contacts/ui/LiteTabHost$2;->this$0:Lcom/android/contacts/ui/LiteTabHost;

    invoke-virtual {v0, p1}, Lcom/android/contacts/ui/LiteTabHost;->setCurrentTab(I)V

    .line 93
    if-eqz p2, :cond_11

    .line 94
    iget-object v0, p0, Lcom/android/contacts/ui/LiteTabHost$2;->this$0:Lcom/android/contacts/ui/LiteTabHost;

    invoke-static {v0}, Lcom/android/contacts/ui/LiteTabHost;->access$100(Lcom/android/contacts/ui/LiteTabHost;)Landroid/widget/LinearLayout;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->requestFocus(I)Z

    .line 96
    :cond_11
    return-void
.end method
