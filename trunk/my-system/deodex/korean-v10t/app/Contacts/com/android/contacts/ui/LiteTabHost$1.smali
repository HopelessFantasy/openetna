.class Lcom/android/contacts/ui/LiteTabHost$1;
.super Ljava/lang/Object;
.source "LiteTabHost.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


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
    .line 73
    iput-object p1, p0, Lcom/android/contacts/ui/LiteTabHost$1;->this$0:Lcom/android/contacts/ui/LiteTabHost;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .registers 6
    .parameter "v"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 74
    sparse-switch p2, :sswitch_data_1a

    .line 84
    iget-object v0, p0, Lcom/android/contacts/ui/LiteTabHost$1;->this$0:Lcom/android/contacts/ui/LiteTabHost;

    invoke-static {v0}, Lcom/android/contacts/ui/LiteTabHost;->access$100(Lcom/android/contacts/ui/LiteTabHost;)Landroid/widget/LinearLayout;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->requestFocus(I)Z

    .line 85
    iget-object v0, p0, Lcom/android/contacts/ui/LiteTabHost$1;->this$0:Lcom/android/contacts/ui/LiteTabHost;

    invoke-static {v0}, Lcom/android/contacts/ui/LiteTabHost;->access$100(Lcom/android/contacts/ui/LiteTabHost;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/widget/LinearLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    :goto_17
    return v0

    .line 81
    :sswitch_18
    const/4 v0, 0x0

    goto :goto_17

    .line 74
    :sswitch_data_1a
    .sparse-switch
        0x13 -> :sswitch_18
        0x14 -> :sswitch_18
        0x15 -> :sswitch_18
        0x16 -> :sswitch_18
        0x17 -> :sswitch_18
        0x42 -> :sswitch_18
    .end sparse-switch
.end method
