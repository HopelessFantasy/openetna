.class Landroid/app/LGETimePickerDialog$1;
.super Ljava/lang/Object;
.source "LGETimePickerDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/app/LGETimePickerDialog;->updateTitle(III)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/app/LGETimePickerDialog;


# direct methods
.method constructor <init>(Landroid/app/LGETimePickerDialog;)V
    .registers 2
    .parameter

    .prologue
    .line 164
    iput-object p1, p0, Landroid/app/LGETimePickerDialog$1;->this$0:Landroid/app/LGETimePickerDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 11

    .prologue
    const-wide/16 v8, 0x3e8

    .line 165
    iget-object v4, p0, Landroid/app/LGETimePickerDialog$1;->this$0:Landroid/app/LGETimePickerDialog;

    invoke-static {v4}, Landroid/app/LGETimePickerDialog;->access$000(Landroid/app/LGETimePickerDialog;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 173
    :goto_a
    return-void

    .line 166
    :cond_b
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 170
    .local v2, now:J
    iget-object v4, p0, Landroid/app/LGETimePickerDialog$1;->this$0:Landroid/app/LGETimePickerDialog;

    iget-object v5, p0, Landroid/app/LGETimePickerDialog$1;->this$0:Landroid/app/LGETimePickerDialog;

    iget-boolean v5, v5, Landroid/app/LGETimePickerDialog;->mIs24HourView:Z

    if-eqz v5, :cond_3e

    const-string v5, "k:mm:ss"

    :goto_19
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {v5, v6, v7}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/app/LGETimePickerDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 171
    rem-long v4, v2, v8

    sub-long v4, v8, v4

    add-long v0, v2, v4

    .line 172
    .local v0, next:J
    iget-object v4, p0, Landroid/app/LGETimePickerDialog$1;->this$0:Landroid/app/LGETimePickerDialog;

    invoke-static {v4}, Landroid/app/LGETimePickerDialog;->access$200(Landroid/app/LGETimePickerDialog;)Landroid/os/Handler;

    move-result-object v4

    iget-object v5, p0, Landroid/app/LGETimePickerDialog$1;->this$0:Landroid/app/LGETimePickerDialog;

    invoke-static {v5}, Landroid/app/LGETimePickerDialog;->access$100(Landroid/app/LGETimePickerDialog;)Ljava/lang/Runnable;

    move-result-object v5

    invoke-virtual {v4, v5, v0, v1}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;J)Z

    goto :goto_a

    .line 170
    .end local v0           #next:J
    :cond_3e
    const-string v5, "h:mm:ss aa"

    goto :goto_19
.end method
