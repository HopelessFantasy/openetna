.class Lcom/android/internal/policy/impl/PhoneWindow$1;
.super Landroid/os/Handler;
.source "PhoneWindow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/PhoneWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/PhoneWindow;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/PhoneWindow;)V
    .registers 2
    .parameter

    .prologue
    .line 181
    iput-object p1, p0, Lcom/android/internal/policy/impl/PhoneWindow$1;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 11
    .parameter "msg"

    .prologue
    const/4 v8, 0x0

    const/high16 v5, 0x1000

    const/4 v7, 0x2

    const/4 v6, 0x0

    .line 182
    iget v4, p1, Landroid/os/Message;->what:I

    packed-switch v4, :pswitch_data_144

    .line 275
    :cond_a
    :goto_a
    return-void

    .line 184
    :pswitch_b
    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindow$1;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    invoke-static {v4}, Lcom/android/internal/policy/impl/PhoneWindow;->access$000(Lcom/android/internal/policy/impl/PhoneWindow;)I

    move-result v4

    if-eqz v4, :cond_a

    .line 193
    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindow$1;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    invoke-static {v4}, Lcom/android/internal/policy/impl/PhoneWindow;->access$100(Lcom/android/internal/policy/impl/PhoneWindow;)Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_a

    .line 198
    :pswitch_1d
    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindow$1;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    invoke-static {v4}, Lcom/android/internal/policy/impl/PhoneWindow;->access$200(Lcom/android/internal/policy/impl/PhoneWindow;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 200
    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindow$1;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    invoke-static {v4}, Lcom/android/internal/policy/impl/PhoneWindow;->access$100(Lcom/android/internal/policy/impl/PhoneWindow;)Landroid/os/Handler;

    move-result-object v4

    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_a

    .line 205
    :pswitch_30
    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindow$1;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    invoke-static {v4}, Lcom/android/internal/policy/impl/PhoneWindow;->access$300(Lcom/android/internal/policy/impl/PhoneWindow;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 207
    invoke-static {p1}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    move-result-object v3

    .line 208
    .local v3, newMessage:Landroid/os/Message;
    const/4 v4, 0x6

    iput v4, v3, Landroid/os/Message;->what:I

    .line 209
    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindow$1;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    invoke-static {v4}, Lcom/android/internal/policy/impl/PhoneWindow;->access$100(Lcom/android/internal/policy/impl/PhoneWindow;)Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_a

    .line 213
    .end local v3           #newMessage:Landroid/os/Message;
    :pswitch_49
    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindow$1;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    invoke-static {v4}, Lcom/android/internal/policy/impl/PhoneWindow;->access$400(Lcom/android/internal/policy/impl/PhoneWindow;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 215
    invoke-static {p1}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    move-result-object v3

    .line 216
    .restart local v3       #newMessage:Landroid/os/Message;
    const/16 v4, 0x8

    iput v4, v3, Landroid/os/Message;->what:I

    .line 217
    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindow$1;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    invoke-static {v4}, Lcom/android/internal/policy/impl/PhoneWindow;->access$100(Lcom/android/internal/policy/impl/PhoneWindow;)Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_a

    .line 221
    .end local v3           #newMessage:Landroid/os/Message;
    :pswitch_63
    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindow$1;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    invoke-static {v4}, Lcom/android/internal/policy/impl/PhoneWindow;->access$000(Lcom/android/internal/policy/impl/PhoneWindow;)I

    move-result v4

    if-eqz v4, :cond_a

    .line 222
    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindow$1;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    invoke-static {v4, v6}, Lcom/android/internal/policy/impl/PhoneWindow;->access$002(Lcom/android/internal/policy/impl/PhoneWindow;I)I

    .line 223
    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindow$1;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    invoke-static {v4}, Lcom/android/internal/policy/impl/PhoneWindow;->access$500(Lcom/android/internal/policy/impl/PhoneWindow;)Lcom/android/internal/policy/impl/PhoneWindow$DecorView;

    move-result-object v4

    invoke-virtual {v4, v6}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->performHapticFeedback(I)Z

    .line 224
    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindow$1;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    invoke-virtual {v4}, Lcom/android/internal/policy/impl/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "input_method"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    .line 226
    .local v1, imm:Landroid/view/inputmethod/InputMethodManager;
    if-eqz v1, :cond_a

    .line 227
    invoke-virtual {v1, v7, v6}, Landroid/view/inputmethod/InputMethodManager;->toggleSoftInput(II)V

    goto/16 :goto_a

    .line 231
    .end local v1           #imm:Landroid/view/inputmethod/InputMethodManager;
    :pswitch_8e
    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindow$1;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    invoke-static {v4}, Lcom/android/internal/policy/impl/PhoneWindow;->access$200(Lcom/android/internal/policy/impl/PhoneWindow;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 232
    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindow$1;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    invoke-static {v4, v6}, Lcom/android/internal/policy/impl/PhoneWindow;->access$202(Lcom/android/internal/policy/impl/PhoneWindow;Z)Z

    .line 233
    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindow$1;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    invoke-static {v4}, Lcom/android/internal/policy/impl/PhoneWindow;->access$500(Lcom/android/internal/policy/impl/PhoneWindow;)Lcom/android/internal/policy/impl/PhoneWindow$DecorView;

    move-result-object v4

    invoke-virtual {v4, v6}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->performHapticFeedback(I)Z

    .line 235
    new-instance v2, Landroid/content/Intent;

    const-string v4, "android.intent.action.VOICE_COMMAND"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 236
    .local v2, intent:Landroid/content/Intent;
    invoke-virtual {v2, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 238
    :try_start_ae
    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindow$1;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    invoke-virtual {v4}, Lcom/android/internal/policy/impl/PhoneWindow;->sendCloseSystemWindows()V

    .line 239
    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindow$1;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    invoke-virtual {v4}, Lcom/android/internal/policy/impl/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_bc
    .catch Landroid/content/ActivityNotFoundException; {:try_start_ae .. :try_end_bc} :catch_be

    goto/16 :goto_a

    .line 240
    :catch_be
    move-exception v4

    move-object v0, v4

    .line 241
    .local v0, e:Landroid/content/ActivityNotFoundException;
    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindow$1;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    invoke-static {v4}, Lcom/android/internal/policy/impl/PhoneWindow;->access$600(Lcom/android/internal/policy/impl/PhoneWindow;)V

    goto/16 :goto_a

    .line 245
    .end local v0           #e:Landroid/content/ActivityNotFoundException;
    .end local v2           #intent:Landroid/content/Intent;
    :pswitch_c7
    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindow$1;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    invoke-static {v4}, Lcom/android/internal/policy/impl/PhoneWindow;->access$300(Lcom/android/internal/policy/impl/PhoneWindow;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 246
    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindow$1;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    invoke-static {v4, v6}, Lcom/android/internal/policy/impl/PhoneWindow;->access$302(Lcom/android/internal/policy/impl/PhoneWindow;Z)Z

    .line 247
    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindow$1;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    invoke-static {v4}, Lcom/android/internal/policy/impl/PhoneWindow;->access$500(Lcom/android/internal/policy/impl/PhoneWindow;)Lcom/android/internal/policy/impl/PhoneWindow$DecorView;

    move-result-object v4

    invoke-virtual {v4, v6}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->performHapticFeedback(I)Z

    .line 248
    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindow$1;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    invoke-virtual {v4}, Lcom/android/internal/policy/impl/PhoneWindow;->sendCloseSystemWindows()V

    .line 250
    new-instance v2, Landroid/content/Intent;

    const-string v4, "android.intent.action.CAMERA_BUTTON"

    invoke-direct {v2, v4, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 251
    .restart local v2       #intent:Landroid/content/Intent;
    const-string v5, "android.intent.extra.KEY_EVENT"

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/view/KeyEvent;

    invoke-virtual {v2, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 252
    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindow$1;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    invoke-virtual {v4}, Lcom/android/internal/policy/impl/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4, v2, v8}, Landroid/content/Context;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    goto/16 :goto_a

    .line 255
    .end local v2           #intent:Landroid/content/Intent;
    :pswitch_fd
    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindow$1;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    invoke-static {v4}, Lcom/android/internal/policy/impl/PhoneWindow;->access$700(Lcom/android/internal/policy/impl/PhoneWindow;)Landroid/app/KeyguardManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v4

    if-nez v4, :cond_111

    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindow$1;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    invoke-static {v4}, Lcom/android/internal/policy/impl/PhoneWindow;->access$400(Lcom/android/internal/policy/impl/PhoneWindow;)Z

    move-result v4

    if-nez v4, :cond_118

    .line 257
    :cond_111
    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindow$1;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    invoke-static {v4, v6}, Lcom/android/internal/policy/impl/PhoneWindow;->access$402(Lcom/android/internal/policy/impl/PhoneWindow;Z)Z

    goto/16 :goto_a

    .line 260
    :cond_118
    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindow$1;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    invoke-static {v4}, Lcom/android/internal/policy/impl/PhoneWindow;->access$500(Lcom/android/internal/policy/impl/PhoneWindow;)Lcom/android/internal/policy/impl/PhoneWindow$DecorView;

    move-result-object v4

    invoke-virtual {v4, v6}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->performHapticFeedback(I)Z

    .line 262
    new-instance v2, Landroid/content/Intent;

    const-string v4, "android.intent.action.SEARCH_LONG_PRESS"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 263
    .restart local v2       #intent:Landroid/content/Intent;
    invoke-virtual {v2, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 265
    :try_start_12b
    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindow$1;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    invoke-virtual {v4}, Lcom/android/internal/policy/impl/PhoneWindow;->sendCloseSystemWindows()V

    .line 266
    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindow$1;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    invoke-virtual {v4}, Lcom/android/internal/policy/impl/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 270
    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindow$1;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    const/4 v5, 0x0

    invoke-static {v4, v5}, Lcom/android/internal/policy/impl/PhoneWindow;->access$402(Lcom/android/internal/policy/impl/PhoneWindow;Z)Z
    :try_end_13f
    .catch Landroid/content/ActivityNotFoundException; {:try_start_12b .. :try_end_13f} :catch_141

    goto/16 :goto_a

    .line 271
    :catch_141
    move-exception v4

    goto/16 :goto_a

    .line 182
    :pswitch_data_144
    .packed-switch 0x1
        :pswitch_b
        :pswitch_63
        :pswitch_1d
        :pswitch_8e
        :pswitch_30
        :pswitch_c7
        :pswitch_49
        :pswitch_fd
    .end packed-switch
.end method
