.class Lcom/android/settings/ApnEditor$1;
.super Ljava/lang/Object;
.source "ApnEditor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/ApnEditor;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/ApnEditor;


# direct methods
.method constructor <init>(Lcom/android/settings/ApnEditor;)V
    .registers 2
    .parameter

    .prologue
    .line 487
    iput-object p1, p0, Lcom/android/settings/ApnEditor$1;->this$0:Lcom/android/settings/ApnEditor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 488
    iget-object v1, p0, Lcom/android/settings/ApnEditor$1;->this$0:Lcom/android/settings/ApnEditor;

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Lcom/android/settings/ApnEditor;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 490
    .local v0, inputManager:Landroid/view/inputmethod/InputMethodManager;
    iget-object v1, p0, Lcom/android/settings/ApnEditor$1;->this$0:Lcom/android/settings/ApnEditor;

    invoke-static {v1}, Lcom/android/settings/ApnEditor;->access$000(Lcom/android/settings/ApnEditor;)Landroid/widget/EditText;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 491
    return-void
.end method
