.class Lcom/android/settings/ProxySelector$4;
.super Ljava/lang/Object;
.source "ProxySelector.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/ProxySelector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/ProxySelector;


# direct methods
.method constructor <init>(Lcom/android/settings/ProxySelector;)V
    .registers 2
    .parameter

    .prologue
    .line 253
    iput-object p1, p0, Lcom/android/settings/ProxySelector$4;->this$0:Lcom/android/settings/ProxySelector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .registers 5
    .parameter "v"
    .parameter "hasFocus"

    .prologue
    .line 254
    if-eqz p2, :cond_f

    .line 255
    move-object v0, p1

    check-cast v0, Landroid/widget/TextView;

    move-object v1, v0

    .line 256
    .local v1, textView:Landroid/widget/TextView;
    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/text/Spannable;

    invoke-static {p0}, Landroid/text/Selection;->selectAll(Landroid/text/Spannable;)V

    .line 258
    .end local v1           #textView:Landroid/widget/TextView;
    :cond_f
    return-void
.end method
